scoreboard players set @s cfru_ra_pl_part 1
#アナウンス
playsound minecraft:entity.player.levelup master @s ~ ~255 ~ 1000 0.5 1

#ラップタイム
scoreboard players operation #CFRU_Tic cfru_ra_gen = #CFRU_Time_Tic cfru_ra_gen
scoreboard players operation #CFRU_Tic cfru_ra_gen -= @s cfru_ra_pl_lastlaptick
function cfrace_utils:race/game/active/time/trans
tellraw @s {"translate":"Lap %s [ %s ticks / %s : %s : %s ]","with":[{"score":{"objective":"cfru_ra_pl_laped","name": "@s"}},{"storage":"cfrace_utils:race","nbt":"Log.Time.Tic","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Min","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Sec","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Cse","interpret":true}]}
scoreboard players operation @s cfru_ra_pl_lastlaptick = #CFRU_Time_Tic cfru_ra_gen

#ベストラップ判定
function cfrace_utils:race/game/active/player/record/record

#CFRULaped更新
scoreboard players add @s cfru_ra_pl_laped 1

#ゴール判定
execute if score @s cfru_ra_pl_laped > #CFRULap cfru_ra_gen run function cfrace_utils:race/game/active/player/goal
