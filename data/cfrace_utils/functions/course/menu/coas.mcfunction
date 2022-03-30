#右クリック時
#0: 新規コース作成
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:0b}}}] run function cfrace_utils:course/new/ini
#2: コース削除
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:2b}}}] run function cfrace_utils:course/delete/ini
#4: アイテムノード編集
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:4b}}}] run function cfrace_utils:course/item/ini
#5: ロビー設定
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:5b}}}] run function cfrace_utils:course/menu/lobby
#8: 終了
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:8b}}}] run function cfrace_utils:course/end
#初期化
scoreboard players reset @s cfru_cm_use_coas
