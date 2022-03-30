#パーティクル
function cfrace_utils:race/game/countdown/startline/p
execute positioned ~ ~1 ~ run function cfrace_utils:race/game/countdown/startline/p
execute positioned ~ ~2 ~ run function cfrace_utils:race/game/countdown/startline/p
execute positioned ~ ~3 ~ run function cfrace_utils:race/game/countdown/startline/p
execute positioned ~ ~-1 ~ run function cfrace_utils:race/game/countdown/startline/p
execute positioned ~ ~-2 ~ run function cfrace_utils:race/game/countdown/startline/p
execute positioned ~ ~-3 ~ run function cfrace_utils:race/game/countdown/startline/p
#フライング判定
#スタートラインより前に出たらtp
execute as @a facing entity @s feet positioned ^ ^ ^3.0 rotated as @e[limit=1,tag=CFRUStartLine] positioned ^ ^ ^-4.0 if entity @e[limit=1,tag=CFRUStartLine,distance=..5.0] positioned as @e[limit=1,tag=CFRUStartLine] run tp @s ^ ^ ^-2
