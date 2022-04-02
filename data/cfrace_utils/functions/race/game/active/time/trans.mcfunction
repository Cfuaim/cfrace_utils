#CFRU_Ticを元にMin,Sec,Cseを算出
scoreboard players operation #CFRU_Min cfru_ra_gen = #CFRU_Tic cfru_ra_gen
scoreboard players operation #CFRU_Sec cfru_ra_gen = #CFRU_Tic cfru_ra_gen
scoreboard players operation #CFRU_Cse cfru_ra_gen = #CFRU_Tic cfru_ra_gen
scoreboard players set #CFRU_Calc cfru_ra_gen 1200
execute store result score #CFRU_Min cfru_ra_gen run scoreboard players operation #CFRU_Min cfru_ra_gen /= #CFRU_Calc cfru_ra_gen
execute store result score #CFRU_Sec cfru_ra_gen run scoreboard players operation #CFRU_Sec cfru_ra_gen %= #CFRU_Calc cfru_ra_gen
execute store result score #CFRU_Cse cfru_ra_gen run scoreboard players operation #CFRU_Cse cfru_ra_gen %= #CFRU_Calc cfru_ra_gen
scoreboard players set #CFRU_Calc cfru_ra_gen 20
execute store result score #CFRU_Sec cfru_ra_gen run scoreboard players operation #CFRU_Sec cfru_ra_gen /= #CFRU_Calc cfru_ra_gen
execute store result score #CFRU_Cse cfru_ra_gen run scoreboard players operation #CFRU_Cse cfru_ra_gen %= #CFRU_Calc cfru_ra_gen
scoreboard players set #CFRU_Calc cfru_ra_gen 5
execute store result score #CFRU_Cse cfru_ra_gen run scoreboard players operation #CFRU_Cse cfru_ra_gen *= #CFRU_Calc cfru_ra_gen
#出力用
data modify storage cfrace_utils:race Log.Time.Tic set value '[{"translate":"%s","with":[{"score":{"objective":"cfru_ra_gen","name":"#CFRU_Tic"}}]}]'
data modify storage cfrace_utils:race Log.Time.Min set value '[{"translate":"%s","with":[{"score":{"objective":"cfru_ra_gen","name":"#CFRU_Min"}}]}]'
execute if score #CFRU_Sec cfru_ra_gen matches 0..9 run data modify storage cfrace_utils:race Log.Time.Sec set value '[{"translate":"0%s","with":[{"score":{"objective":"cfru_ra_gen","name":"#CFRU_Sec"}}]}]'
execute if score #CFRU_Sec cfru_ra_gen matches 10.. run data modify storage cfrace_utils:race Log.Time.Sec set value '[{"translate":"%s","with":[{"score":{"objective":"cfru_ra_gen","name":"#CFRU_Sec"}}]}]'
execute if score #CFRU_Cse cfru_ra_gen matches 0..9 run data modify storage cfrace_utils:race Log.Time.Cse set value '[{"translate":"0%s","with":[{"score":{"objective":"cfru_ra_gen","name":"#CFRU_Cse"}}]}]'
execute if score #CFRU_Cse cfru_ra_gen matches 10.. run data modify storage cfrace_utils:race Log.Time.Cse set value '[{"translate":"%s","with":[{"score":{"objective":"cfru_ra_gen","name":"#CFRU_Cse"}}]}]'
#初期化
scoreboard players reset #CFRU_Calc cfru_ra_gen
