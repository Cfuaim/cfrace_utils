#リスト入れ替え
data modify storage cfrace_utils:race Tmp.Removed append from storage cfrace_utils:race Tmp.Base[0]
data remove storage cfrace_utils:race Tmp.Base[0]
#継続
execute if data storage cfrace_utils:race Tmp.Base[0] run function cfrace_utils:race/game/record/write/personal/loop
