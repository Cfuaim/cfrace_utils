#既に起動中の場合警告
execute if data storage cfrace_utils:course_manager Flag.Running run tellraw @s {"translate":"< ! >コースマネージャーは既に起動中です","color":"yellow","bold":true,"underlined":true}
#既に起動中でなければ起動
execute unless data storage cfrace_utils:course_manager Flag.Running run function cfrace_utils:course/set
