#アナウンス
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
tellraw @s {"translate":"コースを削除します。削除したいコースのスタート地点の近くで実行してください","color":"green","bold":true,"underlined":true}
#ページ変更
scoreboard players set @s cfru_cm_sys 3000
#初期化
clear @s #cfrace_utils:course/all{cfru_cm_item:1b}
function cfrace_utils:course/delete/items
