##最終結果表示用データ書き込み
execute store result storage cfrace_utils:race Tmp.Rank int 1.0 run scoreboard players get @s cfru_ra_pl_rank
execute store result storage cfrace_utils:race Tmp.Ticks int 1.0 run scoreboard players get #CFRU_Time_Tic cfru_ra_gen
data modify storage cfrace_utils:race Log.Results append from storage cfrace_utils:race Tmp
#初期化
data remove storage cfrace_utils:race Tmp
