execute store result score #CFRU_Tic cfru_ra_gen run scoreboard players add #CFRU_Time_Tic cfru_ra_gen 1
#分秒算出
function cfrace_utils:race/game/active/time/trans
#bossbar
bossbar set minecraft:cfru_time players @a
bossbar set minecraft:cfru_time name {"translate":"%s ticks / %s : %s : %s","with":[{"storage":"cfrace_utils:race","nbt":"Log.Time.Tic","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Min","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Sec","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Cse","interpret":true}]}
