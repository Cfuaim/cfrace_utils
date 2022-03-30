#ノード番号設定
scoreboard players remove #NodeCount cfru_cm_node 1
#ノード検索
execute as @e[tag=CFRUCm] if score @s cfru_cm_node = #NodeCount cfru_cm_node run tag @s add CFRUCmThis
#終了
execute positioned as @e[tag=CFRUCmThis] run forceload remove ~ ~
kill @e[tag=CFRUCmThis]
