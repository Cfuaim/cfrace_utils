#アナウンス
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
tellraw @s {"translate":"コースを新規作成します。スタート地点でノードを設置してください","color":"green","bold":true,"underlined":true}
#ページ変更
scoreboard players set @s cfru_cm_sys 1000
#初期化
clear @s #cfrace_utils:course/all{cfru_cm_item:1b}
function cfrace_utils:course/new/items
scoreboard players set #NodeCount cfru_cm_node -1
