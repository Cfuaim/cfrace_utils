#アナウンス
tellraw @s {"translate":"コースマネージャーを起動しました","color":"green","bold":true,"underlined":true}
#初回起動各種セットアップ
#スコア作成
scoreboard objectives add cfru_cm_sys dummy
scoreboard objectives add cfru_cm_use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add cfru_cm_node dummy
scoreboard objectives add cfru_cm_cus_leave minecraft.custom:minecraft.leave_game
#メニュー初期化
function cfrace_utils:course/menu/ini
#ループ起動
schedule function cfrace_utils:course/main 1t
#動作フラグ
data modify storage cfrace_utils:course_manager Flag.Running set value 1b
