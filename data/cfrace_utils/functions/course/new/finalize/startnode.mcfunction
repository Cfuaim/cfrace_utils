#コースID取得
data modify storage cfrace_utils:course_manager Tmp.CFRU.CID set from entity @s UUID
#計算用
scoreboard players set #2 cfru_cm_sys 2
scoreboard players set #3 cfru_cm_sys 3
#終了地点登録(コース削除用)
execute store result entity @s data.CFRU.SNEnd int 1.0 run scoreboard players get #NodeCount cfru_cm_node
#ノード閾値登録
scoreboard players operation #NodeCount cfru_cm_node /= #2 cfru_cm_sys
scoreboard players operation #NodeCount cfru_cm_node /= #2 cfru_cm_sys
execute store result entity @s data.CFRU.SNBorder int 1.0 run scoreboard players operation #NodeCount cfru_cm_node *= #3 cfru_cm_sys
