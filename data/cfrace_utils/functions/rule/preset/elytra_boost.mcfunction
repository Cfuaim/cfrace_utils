clear @a #cfrace_utils:rule/all{cfru_rules:1b}
function cfrace_utils:rule/reset
data modify storage cfrace_utils:rule Generic.Gamemode set value "adventure"
data modify storage cfrace_utils:rule Generic.Effects.Resistance set value 1b
data modify storage cfrace_utils:rule Generic.Effects.Saturation set value 1b
data modify storage cfrace_utils:rule Generic.Effects.JumpBoost set value 1b
data modify storage cfrace_utils:rule Generic.Items.Elytra set value 1b
data modify storage cfrace_utils:rule Generic.Items.ElytraSBoost set value 1b
data modify storage cfrace_utils:rule Generic.Actionbar.Elytra set value 1b
