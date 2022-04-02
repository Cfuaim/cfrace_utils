#コースID取得
data modify storage cfrace_utils:course_manager Tmp.CFRU.CID set from entity @s UUID
#終了地点登録(コース削除用)
execute store result entity @s data.CFRU.SNEnd int 1.0 run scoreboard players get #NodeCount cfru_cm_node
#ノード閾値登録
scoreboard players set #CFRU_Calc cfru_cm_sys 2
scoreboard players operation #NodeCount cfru_cm_node /= #CFRU_Calc cfru_cm_sys
scoreboard players operation #NodeCount cfru_cm_node /= #CFRU_Calc cfru_cm_sys
scoreboard players set #CFRU_Calc cfru_cm_sys 3
execute store result entity @s data.CFRU.SNBorder int 1.0 run scoreboard players operation #NodeCount cfru_cm_node *= #CFRU_Calc cfru_cm_sys
#スタート方向設定
execute positioned as @s facing entity @e[limit=1,distance=..16,sort=nearest,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:1}}}] feet run tp @s ~ ~ ~ ~ ~
#初期化
scoreboard players reset #CFRU_Calc
