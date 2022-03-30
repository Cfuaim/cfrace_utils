#右クリック
execute if score @s cfru_cm_use_coas matches 1.. run function cfrace_utils:course/delete/coas
#ノード可視化
execute as @e[limit=1,sort=nearest,distance=..32,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:0}}}] positioned as @s run function cfrace_utils:course/new/view/gen
