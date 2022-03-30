#再ログイン時警告
execute if score @s cfru_cm_cus_leave matches 1.. run function cfrace_utils:course/leave
#cfru_cm_sysの値で分岐
#1      :メニュー
execute if score @s cfru_cm_sys matches 1 run function cfrace_utils:course/menu/main
#1000   :新規コース作成
execute if score @s cfru_cm_sys matches 1000 run function cfrace_utils:course/new/main
#3000   :コース削除
execute if score @s cfru_cm_sys matches 3000 run function cfrace_utils:course/delete/main
#4000   :アイテムノード編集
execute if score @s cfru_cm_sys matches 4000 run function cfrace_utils:course/item/main
