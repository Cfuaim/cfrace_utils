#アナウンス
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
tellraw @s {"translate":"コースマネージャーを終了します","color":"green","bold":true,"underlined":true}
#初期化
clear @s #cfrace_utils:course/all{cfru_cm_item:1b}
scoreboard objectives remove cfru_cm_sys
scoreboard objectives remove cfru_cm_use_coas
scoreboard objectives remove cfru_cm_node
scoreboard objectives remove cfru_cm_cus_leave
data remove storage cfrace_utils:course_manager Flag
data remove storage cfrace_utils:course_manager Tmp
