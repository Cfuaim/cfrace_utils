# @sを#CFRUx #CFRUy #CFRUzにtp
tp @s 0 0 0
#x
scoreboard players operation #CFRUstp cfru_ra_gen = #CFRUx cfru_ra_gen
execute if score #CFRUstp cfru_ra_gen matches 1.. positioned as @s rotated -90 0 run function cfrace_utils:race/gen/score_tp/tp
execute if score #CFRUstp cfru_ra_gen matches ..-1 positioned as @s rotated 90 0 run function cfrace_utils:race/gen/score_tp/invert
#y
scoreboard players operation #CFRUstp cfru_ra_gen = #CFRUy cfru_ra_gen
execute if score #CFRUstp cfru_ra_gen matches 1.. positioned as @s rotated 0 -90 run function cfrace_utils:race/gen/score_tp/tp
execute if score #CFRUstp cfru_ra_gen matches ..-1 positioned as @s rotated 0 90 run function cfrace_utils:race/gen/score_tp/invert
#z
scoreboard players operation #CFRUstp cfru_ra_gen = #CFRUz cfru_ra_gen
execute if score #CFRUstp cfru_ra_gen matches 1.. positioned as @s rotated 0 0 run function cfrace_utils:race/gen/score_tp/tp
execute if score #CFRUstp cfru_ra_gen matches ..-1 positioned as @s rotated 180 0 run function cfrace_utils:race/gen/score_tp/invert
#終了
scoreboard players reset #CFRUx cfru_ra_gen
scoreboard players reset #CFRUy cfru_ra_gen
scoreboard players reset #CFRUz cfru_ra_gen
scoreboard players reset #CFRUstp cfru_ra_gen
scoreboard players reset #CFRUcalc cfru_ra_gen
