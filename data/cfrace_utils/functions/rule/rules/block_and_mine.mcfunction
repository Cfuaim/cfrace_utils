execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] run loot replace entity @s container.0 loot cfrace_utils:rule/base/block_and_mine/pickaxe
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:quartz_block",Count:64b}]}] run clear @s minecraft:quartz_block{cfru_rules:1b}
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:quartz_block",Count:64b}]}] run loot replace entity @s weapon.offhand loot cfrace_utils:rule/base/block_and_mine/block
