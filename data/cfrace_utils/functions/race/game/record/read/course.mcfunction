#as CFRUNodeNum:0 で呼び出す
execute store result score #CFRUWBestLap cfru_ra_bestlap run data get entity @s data.CFRU.Record.WBestLap
execute if score #CFRUWBestLap cfru_ra_bestlap matches 0 run scoreboard players set #CFRUWBestLap cfru_ra_bestlap 2147483647
