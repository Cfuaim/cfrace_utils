#エリトラ
execute if data storage cfrace_utils:rule Generic.Items.Elytra as @a unless entity @s[nbt={Inventory:[{Slot:102b}]}] run loot replace entity @s armor.chest loot cfrace_utils:rule/base/elytra
#エリトラ:スタートブースト
execute if data storage cfrace_utils:rule Generic.Items.ElytraSBoost as @a run function cfrace_utils:rule/rules/elytra_s_boost/as
#ボート
execute if data storage cfrace_utils:rule Generic.Items.Boat as @a run function cfrace_utils:rule/rules/boat/as
#ボート自動破壊
execute if data storage cfrace_utils:rule Generic.Items.BoatAutoDestroy run function cfrace_utils:rule/rules/boat/auto_destroy
#ブロック&マイン
execute if data storage cfrace_utils:rule Generic.Items.BlockAndMine as @a run function cfrace_utils:rule/rules/block_and_mine
