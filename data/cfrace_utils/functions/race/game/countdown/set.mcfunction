scoreboard players set #StartCount cfru_ra_gen 7
#カウント
function cfrace_utils:race/game/countdown/schedule
#スタートライン
#summon armor_stand ~ ~ ~ {Tags:["CFRUStartLine"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoBasePlate:1b}
#execute facing entity @e[limit=1,sort=nearest,distance=..16,nbt={data:{CFRU:{NodeNum:1}}}] eyes run tp @e[tag=CFRUStartLine] ~ ~ ~ ~ ~
tag @s add CFRUStartLine
execute positioned as @e[tag=CFRUStartLine] store result score #CFRUSuccess cfru_ra_gen run forceload add ~ ~
execute if score #CFRUSuccess cfru_ra_gen matches 1 run tag @e[tag=CFRUStartLine] add CFRUForceload
function cfrace_utils:race/game/countdown/startline/schedule
