#右クリック時
#0: ノード設置
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:0b}}}] run function cfrace_utils:course/new/node
#1: ひとつ戻す(NodeCountが1以上であれば)
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:1b}}}] if score #NodeCount cfru_cm_node matches 1.. run function cfrace_utils:course/new/undo
#6: 完成
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:6b}}}] run function cfrace_utils:course/new/finalize/run
#8: 終了
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:8b}}}] run function cfrace_utils:course/new/end
#初期化
scoreboard players reset @s cfru_cm_use_coas
