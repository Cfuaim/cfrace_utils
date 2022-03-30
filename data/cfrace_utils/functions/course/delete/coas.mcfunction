#右クリック時
#0: 実行
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:0b}}}] as @e[limit=1,sort=nearest,distance=..32,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:0}}}] positioned as @s run function cfrace_utils:course/delete/process/start
#8: 終了
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:8b}}}] run function cfrace_utils:course/delete/end
#初期化
scoreboard players reset @s cfru_cm_use_coas
