#変位計算
scoreboard players operation #CFRUCalc cfru_ra_gen -= @s cfru_ra_pl_node
#変位が閾値を超えたらLap増加/ラップ準備
execute if score #CFRUCalc cfru_ra_gen > #CFRUPointBorderP cfru_ra_gen run function cfrace_utils:race/game/active/player/round/lap_add
#スタートラインより前に出たらラップ
execute if entity @s[scores={cfru_ra_pl_part=2}] positioned as @e[limit=1,tag=CFRUStartLine] facing entity @s feet positioned ^ ^ ^3.0 rotated as @e[limit=1,tag=CFRUStartLine] positioned ^ ^ ^-4.0 if entity @e[limit=1,tag=CFRUStartLine,distance=..5.0] run function cfrace_utils:race/game/active/player/round/laped
#変位が-閾値を超えたらLap減少
execute if score #CFRUCalc cfru_ra_gen < #CFRUPointBorderM cfru_ra_gen run scoreboard players remove @s[scores={cfru_ra_pl_lap=1..}] cfru_ra_pl_lap 1
scoreboard players reset #CFRUCalc cfru_ra_gen
