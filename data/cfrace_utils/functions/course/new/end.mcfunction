#アナウンス
tellraw @s {"translate":"< ! >コース作成を中止しました","color":"yellow","bold":true,"underlined":true}
#現在設置中のノード全消去処理
execute positioned as @e[tag=CFRUForceload] run forceload remove ~ ~
kill @e[tag=CFRUCm]
#メニュー呼び出し
function cfrace_utils:course/menu/ini
#終了
scoreboard players reset #NodeCount cfru_cm_node
