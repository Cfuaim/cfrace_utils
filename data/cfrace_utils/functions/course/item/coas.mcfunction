#右クリック時
#0: アイテムノード削除
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:0b}}}] if entity @e[limit=1,sort=nearest,distance=..32,tag=CFRUItemNode] run function cfrace_utils:course/item/delete
#1: エリトラブースト
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:1b}}}] run function cfrace_utils:course/item/elytra_boost
#8: 終了
execute if entity @s[nbt={SelectedItem:{tag:{cfru_cm_gui:8b}}}] run function cfrace_utils:course/menu/ini
#初期化
scoreboard players reset @s cfru_cm_use_coas
