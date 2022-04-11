#asで実行
#ロビーへtp
execute store result score #CFRUx cfru_ra_gen run data get storage cfrace_utils:rule Settings.Lobby[0]
execute store result score #CFRUy cfru_ra_gen run data get storage cfrace_utils:rule Settings.Lobby[1]
execute store result score #CFRUz cfru_ra_gen run data get storage cfrace_utils:rule Settings.Lobby[2]
function cfrace_utils:race/gen/score_tp/run
