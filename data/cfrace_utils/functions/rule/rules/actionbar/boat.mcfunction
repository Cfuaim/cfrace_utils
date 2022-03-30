#ボート稼働UI
execute if predicate cfrace_utils:rule/player/on_a_boat run title @s actionbar {"text":"============ Boat   Active ============","color":"green","bold":true}
execute unless predicate cfrace_utils:rule/player/on_a_boat run title @s actionbar {"text":"============ Boat Inactive ============","color":"red","bold":true}
