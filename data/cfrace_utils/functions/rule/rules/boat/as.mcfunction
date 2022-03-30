#ボート配布
#ボートに乗っていない/プレイヤーが乗っていないボートが近くにない/ボートを持っていない
execute unless predicate cfrace_utils:rule/player/on_a_boat unless entity @e[type=boat,predicate=!cfrace_utils:rule/vehicle/passenger_player,distance=..5] unless entity @s[nbt={Inventory:[{Slot:0b,tag:{cfru_a_boat:1b}},{Slot:1b,tag:{cfru_a_boat:1b}},{Slot:2b,tag:{cfru_a_boat:1b}},{Slot:3b,tag:{cfru_a_boat:1b}},{Slot:4b,tag:{cfru_a_boat:1b}},{Slot:5b,tag:{cfru_a_boat:1b}}]}] run function cfrace_utils:rule/rules/boat/loot
#スロット埋め
execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] run loot replace entity @s container.0 loot cfrace_utils:rule/base/boat/pane
execute unless entity @s[nbt={Inventory:[{Slot:1b}]}] run loot replace entity @s container.1 loot cfrace_utils:rule/base/boat/pane
execute unless entity @s[nbt={Inventory:[{Slot:2b}]}] run loot replace entity @s container.2 loot cfrace_utils:rule/base/boat/pane
execute unless entity @s[nbt={Inventory:[{Slot:3b}]}] run loot replace entity @s container.3 loot cfrace_utils:rule/base/boat/pane
execute unless entity @s[nbt={Inventory:[{Slot:4b}]}] run loot replace entity @s container.4 loot cfrace_utils:rule/base/boat/pane
execute unless entity @s[nbt={Inventory:[{Slot:5b}]}] run loot replace entity @s container.5 loot cfrace_utils:rule/base/boat/pane
