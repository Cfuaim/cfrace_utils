tellraw @a[scores={cfru_cm_sys=1..}] {"translate":"コースの削除が完了しました","color":"green","bold":true,"underlined":true}
#初期化
execute if entity @s[tag=CFRUForceload] run forceload remove ~ ~
kill @s
scoreboard players reset #CFRUDelNodeCount
scoreboard players reset #CFRUDelNodeEnd
