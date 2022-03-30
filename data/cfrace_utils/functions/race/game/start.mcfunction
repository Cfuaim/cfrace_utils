###スタート地点の近くで実行する
#スタート地点セットアップ
execute as @e[limit=1,distance=..32,sort=nearest,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:0}}}] positioned as @s run function cfrace_utils:race/game/pre
#エラー
execute unless entity @e[limit=1,distance=..32,sort=nearest,tag=CFRUNode,nbt={data:{CFRU:{NodeNum:0}}}] run tellraw @a {"text":"!!レース開始に失敗しました。スタート地点が近くに見つかりません。!!"}
