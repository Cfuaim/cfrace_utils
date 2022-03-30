#エリトラ稼働UI
execute if score @s cfru_ru_aviate matches 1.. run title @s actionbar {"text":"============ Elytra   Active ============","color":"green","bold":true}
execute unless score @s cfru_ru_aviate matches 1.. run title @s actionbar {"text":"============ Elytra Inactive ============","color":"red","bold":true}
scoreboard players reset @s cfru_ru_aviate
