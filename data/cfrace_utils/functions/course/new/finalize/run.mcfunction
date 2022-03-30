#アナウンス
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
tellraw @s {"translate":"コース作成を完了しました","color":"green","bold":true,"underlined":true}
#スタート地点設定
execute as @e[tag=CFRUCm,scores={cfru_cm_node=0}] run function cfrace_utils:course/new/finalize/startnode
#ノード処理
#コースID設定
execute as @e[tag=CFRUCm] run data modify entity @s data.CFRU.CID set from storage cfrace_utils:course_manager Tmp.CFRU.CID
#初期化
scoreboard players reset @e[tag=CFRUCm] cfru_cm_node
execute positioned as @e[tag=CFRUForceload] run forceload remove ~ ~
tag @e[tag=CFRUForceload] remove CFRUForceload
tag @e[tag=CFRUCm] remove CFRUCm

#メニュー呼び出し
function cfrace_utils:course/menu/ini
#終了
scoreboard players reset #NodeCount cfru_cm_node
