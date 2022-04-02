scoreboard players set @s cfru_ra_pl_part 3
#順位固定
scoreboard players remove #CFRUGoalPlayer cfru_ra_gen 1
#タイム出力
execute unless score #CFRU_Tic cfru_ra_gen = #CFRU_Time_Tic cfru_ra_gen run function cfrace_utils:race/game/active/time/now
tellraw @s {"translate":"ゴールタイム[ %s ticks / %s : %s : %s ]","with":[{"storage":"cfrace_utils:race","nbt":"Log.Time.Tic","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Min","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Sec","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Cse","interpret":true}]}
tellraw @a {"translate":"%s がゴール!!","color":"yellow","with":[{"selector":"@s"}]}
