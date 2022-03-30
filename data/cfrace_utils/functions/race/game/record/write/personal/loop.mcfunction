#CIDチェック
data modify storage cfrace_utils:race Tmp.PIDCheck set from entity @s UUID
execute store result score #CFRUSuccess cfru_ra_gen run data modify storage cfrace_utils:race Tmp.PIDCheck set from storage cfrace_utils:race Tmp.Base[0].PID
#一致/旧記録削除
execute if score #CFRUSuccess cfru_ra_gen matches 0 run data remove storage cfrace_utils:race Tmp.Base[0]
#不一致/継続
execute if score #CFRUSuccess cfru_ra_gen matches 1 run function cfrace_utils:race/game/record/write/personal/loop_
