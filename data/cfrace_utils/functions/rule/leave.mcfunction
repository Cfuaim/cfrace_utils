#初ログインならロビーへ
execute unless score @s cfru_ru_leave matches 1.. run function cfrace_utils:race/gen/lobby/to
#再ログイン時アイテムリセット
scoreboard players set @s cfru_ru_leave 0
clear @a #cfrace_utils:rule/all{cfru_rules:1b}
#レース参加者でなければ観戦
gamemode adventure @s
execute if data storage cfrace_utils:race Flags.RaceCon unless score @s cfru_ra_pl_part matches 1.. run gamemode spectator @s
