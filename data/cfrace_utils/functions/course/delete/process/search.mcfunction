#コースIDが一致すればタグ付与
data modify storage cfrace_utils:course_manager Tmp.CIDSearch set from storage cfrace_utils:course_manager Tmp.CIDBase
execute store result score #CFRUCMDelSuc cfru_cm_sys run data modify storage cfrace_utils:course_manager Tmp.CIDSearch set from entity @s data.CFRU.CID
execute unless score #CFRUCMDelSuc cfru_cm_sys matches 1 run function cfrace_utils:course/delete/process/search_
