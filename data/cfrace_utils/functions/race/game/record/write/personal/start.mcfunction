#asで呼び出す
#読み出し
data modify storage cfrace_utils:race Tmp.Base set from entity @e[limit=1,tag=CFRUTarget] data.CFRU.Record.PBestLap
#旧記録の削除
execute if data storage cfrace_utils:race Tmp.Base run function cfrace_utils:race/game/record/write/personal/loop
#新記録登録
data modify storage cfrace_utils:race Tmp.New.PID set from entity @s UUID
execute store result storage cfrace_utils:race Tmp.New.BestLap int 1.0 run scoreboard players get @s cfru_ra_bestlap
data modify storage cfrace_utils:race Tmp.Base prepend from storage cfrace_utils:race Tmp.New
data modify storage cfrace_utils:race Tmp.Base prepend from storage cfrace_utils:race Tmp.Removed[]
#書き込み
data modify entity @e[limit=1,tag=CFRUTarget] data.CFRU.Record.PBestLap set from storage cfrace_utils:race Tmp.Base
#初期化
data remove storage cfrace_utils:race Tmp
scoreboard players reset #CFRUSuccess cfru_ra_gen
