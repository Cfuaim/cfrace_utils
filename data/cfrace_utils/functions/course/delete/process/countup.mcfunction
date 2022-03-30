# #DelNodeCount cfru_cm_nodeと一致するノードを削除
scoreboard players add #DelNodeCount cfru_cm_node 1
kill @s
#繰り返す
execute as @e[tag=CFRUCmDel] if score @s cfru_cm_node = #DelNodeCount cfru_cm_node run function cfrace_utils:course/delete/process/countup
