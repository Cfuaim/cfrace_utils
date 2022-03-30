#ゲーム継続フラグ
data remove storage cfrace_utils:race Flags.RaceCon
#タイム
function cfrace_utils:race/game/active/time/gen
#プレイヤー
execute as @a[scores={cfru_ra_pl_part=1..2}] at @s run function cfrace_utils:race/game/active/player/as
#順位
function cfrace_utils:race/game/active/rank/start
#ループ/終了
execute if data storage cfrace_utils:race Flags.RaceCon run schedule function cfrace_utils:race/game/active/main 1t
execute unless data storage cfrace_utils:race Flags.RaceCon run function cfrace_utils:race/game/active/end
