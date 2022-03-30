tellraw @a[scores={cfru_cm_sys=1..}] {"translate":"コースの削除が完了しました","color":"green","bold":true,"underlined":true}
execute if entity @s[tag=CFRUForceload] run forceload remove ~ ~
kill @s
