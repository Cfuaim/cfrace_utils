tellraw @s {"translate":"< ! >コースマネージャーが起動中です","color":"yellow","bold":true,"underlined":true}
scoreboard players reset @s cfru_cm_cus_leave

execute if score @s cfru_cm_sys matches 1 run function cfrace_utils:course/menu/items
execute if score @s cfru_cm_sys matches 1000 run function cfrace_utils:course/new/items
execute if score @s cfru_cm_sys matches 3000 run function cfrace_utils:course/delete/items
