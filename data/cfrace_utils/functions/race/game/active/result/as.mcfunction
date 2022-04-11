tag @s add CFRUResult
function cfrace_utils:race/game/active/time/trans
tellraw @a {"translate":"%s [ %s ticks / %s : %s : %s ]","with":[{"selector":"@s"},{"storage":"cfrace_utils:race","nbt":"Log.Time.Tic","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Min","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Sec","interpret":true},{"storage":"cfrace_utils:race","nbt":"Log.Time.Cse","interpret":true}]}
