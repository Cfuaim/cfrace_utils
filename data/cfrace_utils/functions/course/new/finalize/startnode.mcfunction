#コースID取得
data modify storage cfrace_utils:course_manager Tmp.CFRU.CID set from entity @s UUID
#終了地点登録(コース削除/片道コース用)
execute store result entity @s data.CFRU.SNEnd int 1.0 run scoreboard players get #NodeCount cfru_cm_node
##片道コース設定
#最終ノード検索
execute as @e[tag=CFRUCm] if score @s cfru_cm_node = #NodeCount cfru_cm_node run tag @s add CFRUCmLastNode
#16m以内になければ片道コース
execute unless entity @e[distance=..16,tag=CFRUCmLastNode] run data modify entity @s data.CFRU.OneWay set value 1b
tag @e[tag=CFRUCmLastNode] remove CFRUCmLastNode
#ノード閾値登録
scoreboard players set #CFRU_Calc cfru_cm_sys 2
scoreboard players operation #NodeCount cfru_cm_node /= #CFRU_Calc cfru_cm_sys
scoreboard players operation #NodeCount cfru_cm_node /= #CFRU_Calc cfru_cm_sys
scoreboard players set #CFRU_Calc cfru_cm_sys 3
execute store result entity @s data.CFRU.SNBorder int 1.0 run scoreboard players operation #NodeCount cfru_cm_node *= #CFRU_Calc cfru_cm_sys
#スタート方向設定
execute facing entity @e[limit=1,distance=..16,sort=nearest,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:1}}}] feet run tp @s ~ ~ ~ ~ ~
#初期化
scoreboard players reset #CFRU_Calc
