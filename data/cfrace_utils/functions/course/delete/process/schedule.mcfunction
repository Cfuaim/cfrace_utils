#コースID検索
execute as @e[tag=CFRUNode,tag=!CFRUCmDel] run function cfrace_utils:course/delete/process/search
#ノード番号検索
execute as @e[tag=CFRUCmDel] if score @s cfru_cm_node = #DelNodeCount cfru_cm_node run function cfrace_utils:course/delete/process/countup
#継続判定
execute unless score #DelNodeCount cfru_cm_node = #DelNodeEnd cfru_cm_node run schedule function cfrace_utils:course/delete/process/schedule 1t
execute unless score #DelNodeCount cfru_cm_node = #DelNodeEnd cfru_cm_node run title @a[scores={cfru_cm_sys=1..}] actionbar {"translate":"削除できていないノードがあります。コースを読み込んでください。","color":"yellow","bold":true,"underlined":true}
execute if score #DelNodeCount cfru_cm_node = #DelNodeEnd cfru_cm_node as @e[tag=CFRUCmDelStart] positioned as @s run function cfrace_utils:course/delete/process/finish
