#スタートブーストを持っていないければ配布判定
execute unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",tag:{cfru_startboost:1b}}]}] run function cfrace_utils:rule/rules/elytra_s_boost/check
#スロット埋め
execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] run loot replace entity @s container.0 loot cfrace_utils:rule/base/startboost/pane
