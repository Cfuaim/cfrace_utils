#sidebar
scoreboard players operation @s cfru_ra_pl_rank = #CFRURank cfru_ra_gen
#チーム振り分け
execute if score #CFRURank cfru_ra_gen matches -1 run team join cfru_ra_1st @s
execute if score #CFRURank cfru_ra_gen matches -2 run team join cfru_ra_2nd @s
execute if score #CFRURank cfru_ra_gen matches -3 run team join cfru_ra_3rd @s
execute if score #CFRURank cfru_ra_gen matches -4 run team join cfru_ra_4th @s
execute if score #CFRURank cfru_ra_gen matches -5 run team join cfru_ra_5th @s
execute if score #CFRURank cfru_ra_gen matches -6 run team join cfru_ra_6th @s
execute if score #CFRURank cfru_ra_gen matches -7 run team join cfru_ra_7th @s
execute unless score #CFRURank cfru_ra_gen matches -7..-1 run team join cfru_ra_8th @s
tag @s add CFRUTeamed
