#再配布待機時間
scoreboard players remove @a[scores={cfru_ru_itemct=1..}] cfru_ru_itemct 1
#ノード
execute as @e[tag=CFRUItemNode] at @s run function cfrace_utils:rule/rules/item_node/node
