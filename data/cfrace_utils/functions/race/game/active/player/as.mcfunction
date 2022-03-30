#point更新
#ノード取得
scoreboard players operation #Calc cfru_ra_gen = @s cfru_ra_pl_node
execute store result score @s cfru_ra_pl_node run data get entity @e[limit=1,sort=nearest,tag=CFRUNode] data.CFRU.NodeNum
#変位計算
scoreboard players operation #Calc cfru_ra_gen -= @s cfru_ra_pl_node
#変位が閾値を超えたらLap増加
execute if score #Calc cfru_ra_gen > #PointBorderP cfru_ra_gen run function cfrace_utils:race/game/active/player/lap_add
#スタートラインより前に出たらラップ
execute if entity @s[scores={cfru_ra_pl_part=2}] positioned as @e[limit=1,tag=CFRUStartLine] facing entity @s feet positioned ^ ^ ^3.0 rotated as @e[limit=1,tag=CFRUStartLine] positioned ^ ^ ^-4.0 if entity @e[limit=1,tag=CFRUStartLine,distance=..5.0] run function cfrace_utils:race/game/active/player/laped
#変位が-閾値を超えたらLap減少
execute if score #Calc cfru_ra_gen < #PointBorderM cfru_ra_gen run scoreboard players remove @s[scores={cfru_ra_pl_lap=1..}] cfru_ra_pl_lap 1
#point計算
scoreboard players set @s cfru_ra_pl_point 100000
scoreboard players operation @s cfru_ra_pl_point *= @s cfru_ra_pl_lap
scoreboard players operation @s cfru_ra_pl_point += @s cfru_ra_pl_node
#最大ラップでなければ継続フラグ
execute if score @s cfru_ra_pl_laped <= #Lap cfru_ra_gen run function cfrace_utils:race/game/active/player/continue
