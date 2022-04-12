scoreboard players set @s cfru_ru_stboost 0
clear @s #cfrace_utils:rule/all{cfru_startboost:1b}
execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] run loot replace entity @s container.0 loot cfrace_utils:rule/base/startboost/boost
