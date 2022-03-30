#スタートブースト配布
execute if score @s cfru_ru_ongr matches 0 if entity @s[nbt={OnGround:1b}] run function cfrace_utils:rule/rules/elytra_s_boost/startboost
execute store result score @s cfru_ru_ongr run data get entity @s OnGround
#スロット埋め
execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] run loot replace entity @s container.0 loot cfrace_utils:rule/base/startboost/pane
