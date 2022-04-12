#WR
execute unless score #CFRU_Tic cfru_ra_gen >= #CFRUWBestLap cfru_ra_bestlap run function cfrace_utils:race/game/active/player/record/wr
#PB
execute unless data storage cfrace_utils:rule {Settings:{DisablePersonalBest:1b}} unless score #CFRU_Tic cfru_ra_gen >= @s cfru_ra_bestlap run function cfrace_utils:race/game/active/player/record/pb
