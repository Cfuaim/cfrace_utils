#ドロップアイテム削除
scoreboard players reset @a cfru_ru_drop
kill @e[type=item,nbt={Item:{tag:{cfru_rules:1b}}}]
