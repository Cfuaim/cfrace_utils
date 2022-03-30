#アナウンス
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
tellraw @s {"translate":"アイテムノードを編集します","color":"green","bold":true,"underlined":true}
#ページ変更
scoreboard players set @s cfru_cm_sys 4000
#初期化
clear @s #cfrace_utils:course/all{cfru_cm_item:1b}
function cfrace_utils:course/item/items
