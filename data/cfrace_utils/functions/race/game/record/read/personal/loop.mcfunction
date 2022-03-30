#CIDチェック
data modify storage cfrace_utils:race Tmp.PIDCheck set from storage cfrace_utils:race Tmp.PID
execute store result score #CFRUSuccess cfru_ra_gen run data modify storage cfrace_utils:race Tmp.PIDCheck set from storage cfrace_utils:race Tmp.Base[0].PID
#一致/ベストラップ取得
execute if score #CFRUSuccess cfru_ra_gen matches 0 store result score @s cfru_ra_bestlap run data get storage cfrace_utils:race Tmp.Base[0].BestLap
#不一致/継続
execute if score #CFRUSuccess cfru_ra_gen matches 1 run function cfrace_utils:race/game/record/read/personal/loop_
