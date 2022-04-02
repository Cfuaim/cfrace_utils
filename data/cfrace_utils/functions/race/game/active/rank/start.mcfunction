#スコア再定義(退出プレイヤー対策)
scoreboard objectives remove cfru_ra_pl_rank
scoreboard objectives add cfru_ra_pl_rank dummy {"text":"=== RANK ===","color":"gold"}
#ゴール済プレイヤー
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-1 run scoreboard players set @a[team=cfru_ra_1st] cfru_ra_pl_rank -1
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-2 run scoreboard players set @a[team=cfru_ra_2nd] cfru_ra_pl_rank -2
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-3 run scoreboard players set @a[team=cfru_ra_3rd] cfru_ra_pl_rank -3
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-4 run scoreboard players set @a[team=cfru_ra_4th] cfru_ra_pl_rank -4
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-5 run scoreboard players set @a[team=cfru_ra_5th] cfru_ra_pl_rank -5
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-6 run scoreboard players set @a[team=cfru_ra_6th] cfru_ra_pl_rank -6
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-7 run scoreboard players set @a[team=cfru_ra_7th] cfru_ra_pl_rank -7
execute if score #CFRUGoalPlayer cfru_ra_gen matches ..-8 run scoreboard players set @a[team=cfru_ra_8th] cfru_ra_pl_rank -8
#ソート開始
scoreboard players operation #CFRURank cfru_ra_gen = #CFRUGoalPlayer cfru_ra_gen
#無限ループ防止
execute store result score #CFRULoop cfru_ra_gen if entity @a[scores={cfru_ra_pl_part=1..}]
function cfrace_utils:race/game/active/rank/loop
scoreboard players reset #CFRULoop
scoreboard players reset #CFRUPointMax
#sidebar(チラツキ防止のためスコア入力後)
scoreboard objectives setdisplay sidebar cfru_ra_pl_rank
#title
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_1st] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"1st","underlined":true,"color":"gold"}]}
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_2nd] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"2nd","underlined":true,"color":"gray"}]}
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_3rd] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"3rd","underlined":true,"color":"#d2691e"}]}
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_4th] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"4th","underlined":true,"color":"dark_gray"}]}
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_5th] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"5th","underlined":true,"color":"dark_gray"}]}
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_6th] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"6th","underlined":true,"color":"dark_gray"}]}
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_7th] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"7th","underlined":true,"color":"dark_gray"}]}
title @a[scores={cfru_ra_pl_part=1..},team=cfru_ra_8th] title {"translate":"%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020","with":[{"text":"8th","underlined":true,"color":"dark_gray"}]}
