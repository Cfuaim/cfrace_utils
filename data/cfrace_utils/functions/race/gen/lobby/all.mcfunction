#ロビーへtp
tag @a[limit=1] add CFRUTag
execute as @a[limit=1,tag=CFRUTag] run function cfrace_utils:race/gen/lobby/to
tp @a @a[limit=1,tag=CFRUTag]
gamemode adventure @a
#終了
tag @a[tag=CFRUTag] remove CFRUTag
