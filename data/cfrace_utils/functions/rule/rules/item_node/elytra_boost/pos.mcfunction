#演出
function cfrace_utils:rule/rules/item_node/elytra_boost/p
#配布
execute as @a[distance=..2] unless score @s cfru_ru_itemct matches 1.. run function cfrace_utils:rule/rules/item_node/elytra_boost/as
scoreboard players set @a[distance=..2] cfru_ru_itemct 20
