tellraw @s {"text":"世界新!!!!","italic":true,"color":"yellow"}
scoreboard players operation #CFRUWBestLap cfru_ra_bestlap = #CFRU_Tic cfru_ra_gen
execute positioned as @e[limit=1,tag=CFRUStartLine] as @e[limit=1,distance=..1,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:0}}}] run function cfrace_utils:race/game/record/write/course/set
