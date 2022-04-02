#スタートライン
execute as @e[limit=1,tag=CFRUStartLine] at @s run function cfrace_utils:race/game/countdown/startline/as
#ループ
execute if score #CFRUStartCount cfru_ra_gen matches 1.. run schedule function cfrace_utils:race/game/countdown/startline/schedule 1t
