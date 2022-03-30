#ボート自動破壊
scoreboard players add @e[type=boat,predicate=!cfrace_utils:rule/vehicle/passenger_player] cfru_ra_gen 1
execute as @e[type=boat,scores={cfru_ra_gen=20..}] positioned as @s run function cfrace_utils:rule/rules/boat/destroy
