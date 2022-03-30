#本体表示
function cfrace_utils:course/new/view/point
#近くのノードへ線を表示
tag @e[distance=1..9,limit=2,sort=nearest,tag=CFRUCm] add CFRUCmThis
execute as @e[tag=CFRUCmThis] facing entity @s feet run function cfrace_utils:course/new/view/line
tag @e[tag=CFRUCmThis] remove CFRUCmThis
