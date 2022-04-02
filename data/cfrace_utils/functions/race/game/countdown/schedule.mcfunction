scoreboard players remove #CFRUStartCount cfru_ra_gen 1
#アナウンス
execute if score #CFRUStartCount cfru_ra_gen matches 1.. run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.5 1
title @a times 0 20 0
execute if score #CFRUStartCount cfru_ra_gen matches 6 run title @a title {"translate":"%1$s %1$s %1$s [ 6 ] %1$s %1$s %1$s","bold":true,"with":[{"text":"●","color":"red"},{"text":"●","color":"green"}]}
execute if score #CFRUStartCount cfru_ra_gen matches 5 run title @a title {"translate":"%1$s %1$s %1$s [ 5 ] %1$s %1$s %2$s","bold":true,"with":[{"text":"●","color":"red"},{"text":"●","color":"green"}]}
execute if score #CFRUStartCount cfru_ra_gen matches 4 run title @a title {"translate":"%1$s %1$s %1$s [ 4 ] %1$s %2$s %2$s","bold":true,"with":[{"text":"●","color":"red"},{"text":"●","color":"green"}]}
execute if score #CFRUStartCount cfru_ra_gen matches 3 run title @a title {"translate":"%1$s %1$s %1$s [ 3 ] %2$s %2$s %2$s","bold":true,"with":[{"text":"●","color":"red"},{"text":"●","color":"green"}]}
execute if score #CFRUStartCount cfru_ra_gen matches 2 run title @a title {"translate":"%1$s %1$s %2$s [ 2 ] %2$s %2$s %2$s","bold":true,"with":[{"text":"●","color":"red"},{"text":"●","color":"green"}]}
execute if score #CFRUStartCount cfru_ra_gen matches 1 run title @a title {"translate":"%1$s %2$s %2$s [ 1 ] %2$s %2$s %2$s","bold":true,"with":[{"text":"●","color":"red"},{"text":"●","color":"green"}]}
#ループ/終了
execute if score #CFRUStartCount cfru_ra_gen matches 1.. run schedule function cfrace_utils:race/game/countdown/schedule 1s
execute if score #CFRUStartCount cfru_ra_gen matches 0 run function cfrace_utils:race/game/countdown/end
