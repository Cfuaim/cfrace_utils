#アナウンス
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
#新規ノード設置
summon marker ~ ~ ~ {Tags:["CFRUNode","CFRUCm","CFRUCmThis"]}
#forceload
execute store result score #CFRUSuccess cfru_cm_sys run forceload add ~ ~
execute if score #CFRUSuccess cfru_cm_sys matches 1 run tag @e[limit=1,tag=CFRUCmThis] add CFRUForceload
#ノード番号設定
scoreboard players add #NodeCount cfru_cm_node 1
execute store result entity @e[limit=1,tag=CFRUCmThis] data.CFRU.NodeNum int 1.0 run scoreboard players operation @e[limit=1,tag=CFRUCmThis] cfru_cm_node = #NodeCount cfru_cm_node
#終了
tag @e[limit=1,tag=CFRUCmThis] remove CFRUCmThis
