#point更新
#ノード取得
scoreboard players operation #CFRUCalc cfru_ra_gen = @s cfru_ra_pl_node
execute store result score @s cfru_ra_pl_node run data get entity @e[limit=1,sort=nearest,tag=CFRUNode] data.CFRU.NodeNum
##Lap条件
#片道
execute if data storage cfrace_utils:race {CourseInfo:{OneWay:1b}} run function cfrace_utils:race/game/active/player/oneway/lap
#周回
execute unless data storage cfrace_utils:race {CourseInfo:{OneWay:1b}} run function cfrace_utils:race/game/active/player/round/lap
scoreboard players reset #CFRUCalc cfru_ra_gen
#point計算
scoreboard players set @s cfru_ra_pl_point 100000
scoreboard players operation @s cfru_ra_pl_point *= @s cfru_ra_pl_lap
scoreboard players operation @s cfru_ra_pl_point += @s cfru_ra_pl_node
#最大ラップでなければ継続フラグ
execute if score @s cfru_ra_pl_laped <= #CFRULap cfru_ra_gen run function cfrace_utils:race/game/active/player/continue
