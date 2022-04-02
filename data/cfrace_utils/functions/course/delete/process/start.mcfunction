#準備
tag @s add CFRUCmDelStart
execute store result score #CFRUSuccess cfru_cm_sys run forceload add ~ ~
execute if score #CFRUSuccess cfru_cm_sys matches 1 run tag @s add CFRUForceload
scoreboard players reset #CFRUSuccess cfru_cm_sys
data modify storage cfrace_utils:course_manager Tmp.CIDBase set from entity @s data.CFRU.CID
execute store result score #CFRUDelNodeEnd cfru_cm_node run data get entity @s data.CFRU.SNEnd
#ループ開始
scoreboard players set #CFRUDelNodeCount cfru_cm_node 1
function cfrace_utils:course/delete/process/schedule
