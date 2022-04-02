#最終ノードならラップ準備
execute if score @s cfru_ra_pl_part matches 1 if score @s cfru_ra_pl_node = #CFRUNodeEnd cfru_ra_gen run function cfrace_utils:race/game/active/player/oneway/laped
#変位計算
scoreboard players operation #CFRUCalc cfru_ra_gen -= @s cfru_ra_pl_node
#ラップ
execute if score @s cfru_ra_pl_part matches 2 if score #CFRUCalc cfru_ra_gen > #CFRUPointBorderP cfru_ra_gen run function cfrace_utils:race/game/active/player/oneway/lap_add
