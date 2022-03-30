bossbar set minecraft:cfru_time players
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 0.3 2 0.3
title @a times 0 60 20
title @a title {"text":"= FINISH ="}
gamemode adventure @a[gamemode=!spectator,gamemode=!creative]
execute if data storage cfrace_utils:race Settings.Lobby run schedule function cfrace_utils:race/gen/lobby/all 5s
#スタートライン終了
execute positioned as @e[tag=CFRUForceload] run forceload remove ~ ~
kill @e[tag=CFRUStartLine]
#初期化
data remove storage cfrace_utils:race Log
data remove storage cfrace_utils:race CourseInfo
