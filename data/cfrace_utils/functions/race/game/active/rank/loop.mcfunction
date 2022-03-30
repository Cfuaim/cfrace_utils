#point最大値を取得
scoreboard players set #PointMax cfru_ra_gen 0
execute as @a[scores={cfru_ra_pl_part=1..},team=] run scoreboard players operation #PointMax cfru_ra_gen > @s cfru_ra_pl_point
#最大値ならば順位チーム振り分け
execute as @a[scores={cfru_ra_pl_part=1..},team=] if score @s cfru_ra_pl_point = #PointMax cfru_ra_gen run function cfrace_utils:race/game/active/rank/team
#同着判定のためここで減算
execute as @a[tag=CFRUTeamed] run scoreboard players remove #Rank cfru_ra_gen 1
tag @a remove CFRUTeamed
#ループ
scoreboard players remove #CFRULoop cfru_ra_gen 1
execute if score #CFRULoop cfru_ra_gen matches 1.. if entity @a[scores={cfru_ra_pl_part=1..},team=] run function cfrace_utils:race/game/active/rank/loop
