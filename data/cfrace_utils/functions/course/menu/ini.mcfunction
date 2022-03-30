#アナウンス
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
#ページ変更
scoreboard players set @s cfru_cm_sys 1
#初期化
clear @s #cfrace_utils:course/all{cfru_cm_item:1b}
function cfrace_utils:course/menu/items
