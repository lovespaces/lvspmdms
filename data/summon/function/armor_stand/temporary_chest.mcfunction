execute store result score $TempChest stats if entity @e[type=armor_stand, tag=TempChest]
execute if score $TempChest stats matches 2.. run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"TempChestを持つアーマースタンドが2体以上存在します。\n1体に絞ってください。", "color":"white"}]

execute as @e[type=armor_stand, tag=TempChest] run data modify entity @s Invisible set value true
execute as @e[type=armor_stand, tag=TempChest] at @s run setblock ~ ~ ~ chest
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"アーマースタンドの場所にチェストを設置しました", "color":"white"}]
