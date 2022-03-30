data modify storage cfrace_utils:race Settings.Lobby set value [0,0,0]
execute store result storage cfrace_utils:race Settings.Lobby[0] int 1.0 run data get entity @s Pos[0]
execute store result storage cfrace_utils:race Settings.Lobby[1] int 1.0 run data get entity @s Pos[1]
execute store result storage cfrace_utils:race Settings.Lobby[2] int 1.0 run data get entity @s Pos[2]
tellraw @s {"translate":"ロビーを %s に設定しました","color":"green","bold":true,"underlined":true,"with":[{"nbt":"Settings.Lobby","storage":"cfrace_utils:race"}]}
