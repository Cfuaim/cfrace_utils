#読み込み時一度だけ実行される
#各種定義
scoreboard objectives add cfru_ra_gen dummy
scoreboard objectives add cfru_ra_pl_node dummy
scoreboard objectives add cfru_ra_pl_point dummy
scoreboard objectives add cfru_ra_pl_lap dummy
scoreboard objectives add cfru_ra_pl_laped dummy
scoreboard objectives add cfru_ra_pl_part dummy
scoreboard objectives add cfru_ra_pl_lastlaptick dummy
scoreboard objectives add cfru_ra_bestlap dummy
bossbar add cfru_time {"text":"time"}
team add cfru_ra_1st
team modify cfru_ra_1st prefix {"text":"[1st] ","color":"gold","bold":true}
team add cfru_ra_2nd
team modify cfru_ra_2nd prefix {"text":"[2nd] ","color":"gray","bold":true}
team add cfru_ra_3rd
team modify cfru_ra_3rd prefix {"text":"[3rd] ","color":"#d2691e","bold":true}
team add cfru_ra_4th
team modify cfru_ra_4th prefix {"text":"[4th] ","color":"dark_gray","bold":true}
team add cfru_ra_5th
team modify cfru_ra_5th prefix {"text":"[5th] ","color":"dark_gray","bold":true}
team add cfru_ra_6th
team modify cfru_ra_6th prefix {"text":"[6th] ","color":"dark_gray","bold":true}
team add cfru_ra_7th
team modify cfru_ra_7th prefix {"text":"[7th] ","color":"dark_gray","bold":true}
team add cfru_ra_8th
team modify cfru_ra_8th prefix {"text":"[8th] ","color":"dark_gray","bold":true}
#初期設定
#data merge storage cfrace_utils:rule {Settings:{Laps:3b}}
