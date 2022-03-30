#ドロップ削除
execute if entity @a[scores={cfru_ru_drop=1..}] run function cfrace_utils:rule/drop
#再ログイン時アイテムリセット
execute as @a unless score @s cfru_ru_leave matches 0 run function cfrace_utils:rule/leave
#個人ルール
#execute as @a run function cfrace_utils:rule/personal/as
#全体ルール(コースマネージャーが起動していないときに実行)
execute unless data storage cfrace_utils:course_manager Flag.Running run function cfrace_utils:rule/rules/generic/list
#アイテムノード
function cfrace_utils:rule/rules/item_node/run
