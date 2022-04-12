bossbar set minecraft:cfru_time players
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 0.3 2 0.3
title @a times 0 60 20
title @a title {"text":"= FINISH ="}
gamemode adventure @a[gamemode=!spectator,gamemode=!creative]
execute if data storage cfrace_utils:rule Settings.Lobby run schedule function cfrace_utils:race/gen/lobby/all 5s
#スタートライン終了
execute positioned as @e[tag=CFRUForceload] run forceload remove ~ ~
tag @e[tag=CFRUStartLine] remove CFRUStartLine
#最終結果表示
function cfrace_utils:race/game/active/result/run
#初期化
data remove storage cfrace_utils:race Log
data remove storage cfrace_utils:race CourseInfo
scoreboard players reset #CFRUWBestLap cfru_ra_bestlap
scoreboard players reset #CFRUGoalPlayer cfru_ra_gen
scoreboard players reset #CFRULap cfru_ra_gen
scoreboard players reset #CFRUPointBorderM cfru_ra_gen
scoreboard players reset #CFRUPointBorderP cfru_ra_gen
scoreboard players reset #CFRU_Time_Tic cfru_ra_gen
scoreboard players reset #CFRU_Tic cfru_ra_gen
scoreboard players reset #CFRU_Min cfru_ra_gen
scoreboard players reset #CFRU_Sec cfru_ra_gen
scoreboard players reset #CFRU_Cse cfru_ra_gen
scoreboard players reset #CFRUNodeEnd cfru_ra_gen
