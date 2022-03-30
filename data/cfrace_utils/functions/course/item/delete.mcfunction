#アナウンス
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 2 1
#ノード削除
kill @e[limit=1,sort=nearest,distance=..32,tag=CFRUItemNode]
