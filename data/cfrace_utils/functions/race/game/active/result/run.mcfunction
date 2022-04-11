tellraw @a {"text":"====== レース結果 ======"}
#全タイム表示
function cfrace_utils:race/game/active/result/loop
tellraw @a {"text":"====================="}
#初期化
scoreboard players reset #CFRURank cfru_ra_gen
tag @a remove CFRUResult
