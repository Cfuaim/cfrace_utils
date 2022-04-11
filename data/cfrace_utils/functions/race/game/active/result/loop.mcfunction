#読み出し
execute store result score #CFRURank cfru_ra_gen run data get storage cfrace_utils:race Log.Results[0].Rank
execute store result score #CFRU_Tic cfru_ra_gen run data get storage cfrace_utils:race Log.Results[0].Ticks
#検索
execute as @a if score @s cfru_ra_pl_rank = #CFRURank cfru_ra_gen run function cfrace_utils:race/game/active/result/as
#next
data remove storage cfrace_utils:race Log.Results[0]
execute if data storage cfrace_utils:race Log.Results[0] run function cfrace_utils:race/game/active/result/loop
