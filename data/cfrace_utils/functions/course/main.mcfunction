#編集中のプレイヤー
execute as @a[scores={cfru_cm_sys=1..}] at @s run function cfrace_utils:course/page
#終了フラグがなければループ
execute if data storage cfrace_utils:course_manager Flag.Running run schedule function cfrace_utils:course/main 1t
