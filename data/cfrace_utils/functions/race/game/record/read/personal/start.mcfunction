#CID -> score @s cfru_ra_bestlap
#asで呼び出す
#初期化
scoreboard players set @s cfru_ra_bestlap 2147483647
scoreboard players reset #CFRUSuccess cfru_ra_gen
#取得
data modify storage cfrace_utils:race Tmp.PID set from entity @s UUID
data modify storage cfrace_utils:race Tmp.Base set from entity @e[limit=1,tag=CFRUTarget] data.CFRU.Record.PBestLap
execute if data storage cfrace_utils:race Tmp.Base run function cfrace_utils:race/game/record/read/personal/loop
#初期化
data remove storage cfrace_utils:race Tmp
