#初期化
scoreboard players reset #CFRU_Time_Tic cfru_ra_gen
scoreboard players set #GoalPlayer cfru_ra_gen -1
kill @e[tag=CFRUStartLine]
#ラップ数設定抽出
execute store result score #Lap cfru_ra_gen run data get storage cfrace_utils:race Settings.Laps
#例外回避
execute unless score #Lap cfru_ra_gen matches 1.. run scoreboard players set #Lap cfru_ra_gen 1
#コース情報抽出
data modify storage cfrace_utils:race CourseInfo.CourseID set from entity @s data.CFRU.CID
data modify storage cfrace_utils:race CourseInfo.NodeEnd set from entity @s data.CFRU.SNEnd
execute store result score #PointBorderP cfru_ra_gen run data get entity @s data.CFRU.SNBorder
execute store result score #PointBorderM cfru_ra_gen run data get entity @s data.CFRU.SNBorder -1
#レコード取得
function cfrace_utils:race/game/record/read/read
#ゲーム継続フラグ(rules/rules/leave用)
data modify storage cfrace_utils:race Flags.RaceCon set value 1b
#team初期化
team empty cfru_ra_1st
team empty cfru_ra_2nd
team empty cfru_ra_3rd
team empty cfru_ra_4th
team empty cfru_ra_5th
team empty cfru_ra_6th
team empty cfru_ra_7th
team empty cfru_ra_8th

###プレイヤー設定
#ログアウトプレイヤー回避
tag @a[scores={cfru_ra_pl_part=1..}] add CFRURAJoin
scoreboard objectives remove cfru_ra_pl_part
scoreboard objectives add cfru_ra_pl_part dummy
scoreboard players set @a[tag=CFRURAJoin] cfru_ra_pl_part 1
tag @a[tag=CFRURAJoin] remove CFRURAJoin
#gamemode
gamemode adventure @a
execute if data storage cfrace_utils:rule {Generic:{Gamemode:"survival"}} run gamemode survival @a[scores={cfru_ra_pl_part=1..}]
execute as @a unless score @s cfru_ra_pl_part matches 1.. run gamemode spectator @s
#初期値
scoreboard players set @a[scores={cfru_ra_pl_part=1..}] cfru_ra_pl_node 0
scoreboard players set @a[scores={cfru_ra_pl_part=1..}] cfru_ra_pl_lap 1
scoreboard players set @a[scores={cfru_ra_pl_part=1..}] cfru_ra_pl_laped 1
scoreboard players set @a[scores={cfru_ra_pl_part=1..}] cfru_ra_pl_lastlaptick 0

#参加プレイヤーカウント
execute store result score #RacePlayer cfru_ra_pl_sys if entity @a[scores={cfru_ra_pl_part=1..}]
#カウントダウン開始
function cfrace_utils:race/game/countdown/set
