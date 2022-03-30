tellraw @s {"text":"自己新!!","italic":true,"color":"yellow"}
scoreboard players operation @s cfru_ra_bestlap = #CFRU_Tic cfru_ra_gen
execute positioned as @e[limit=1,tag=CFRUStartLine] run tag @e[limit=1,distance=..1,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:0}}}] add CFRUTarget
function cfrace_utils:race/game/record/write/personal/start
tag @e[tag=CFRUTarget] remove CFRUTarget
