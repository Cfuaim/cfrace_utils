clear @s #cfrace_utils:rule/all{cfru_boat:1b}
execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] run loot replace entity @s container.0 loot cfrace_utils:rule/base/boat/oak_boat
execute unless entity @s[nbt={Inventory:[{Slot:1b}]}] run loot replace entity @s container.1 loot cfrace_utils:rule/base/boat/spruce_boat
execute unless entity @s[nbt={Inventory:[{Slot:2b}]}] run loot replace entity @s container.2 loot cfrace_utils:rule/base/boat/birch_boat
execute unless entity @s[nbt={Inventory:[{Slot:3b}]}] run loot replace entity @s container.3 loot cfrace_utils:rule/base/boat/jungle_boat
execute unless entity @s[nbt={Inventory:[{Slot:4b}]}] run loot replace entity @s container.4 loot cfrace_utils:rule/base/boat/acacia_boat
execute unless entity @s[nbt={Inventory:[{Slot:5b}]}] run loot replace entity @s container.5 loot cfrace_utils:rule/base/boat/dark_oak_boat
