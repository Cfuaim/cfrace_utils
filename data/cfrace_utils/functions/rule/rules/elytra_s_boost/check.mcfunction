#スタートブースト配布
scoreboard players set @s[scores={cfru_ru_stboost=1..},nbt={OnGround:0b}] cfru_ru_stboost 0
scoreboard players add @s[nbt={OnGround:1b}] cfru_ru_stboost 1
execute if score @s cfru_ru_stboost matches 20.. run function cfrace_utils:rule/rules/elytra_s_boost/loot
