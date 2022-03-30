clear @a #cfrace_utils:rule/all{cfru_rules:1b}
function cfrace_utils:rule/reset
data modify storage cfrace_utils:rule Generic.Gamemode set value "survival"
data modify storage cfrace_utils:rule Generic.Items.BlockAndMine set value 1b
data modify storage cfrace_utils:rule Generic.Effects.Resistance set value 1b
data modify storage cfrace_utils:rule Generic.Effects.Saturation set value 1b
