#右クリック
execute if score @s cfru_cm_use_coas matches 1.. run function cfrace_utils:course/new/coas
#スタート地点設置済みなら自動ノード設置
execute if score #NodeCount cfru_cm_node matches 1.. unless entity @e[distance=..4,tag=CFRUCm] run function cfrace_utils:course/new/node
#ノード可視化
execute as @e[distance=..32,tag=CFRUCm] positioned as @s run function cfrace_utils:course/new/view/gen
