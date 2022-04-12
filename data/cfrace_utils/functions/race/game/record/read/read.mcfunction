#as @e[limit=1,sort=nearest,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:0}}}] positioned as @s
#スタート時の呼び出し
function cfrace_utils:race/game/record/read/course
tag @s add CFRUTarget
execute unless data storage cfrace_utils:rule {Settings:{DisablePersonalBest:1b}} as @a run function cfrace_utils:race/game/record/read/personal/start
tag @s remove CFRUTarget
