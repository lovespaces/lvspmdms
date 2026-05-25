advancement revoke @s only item:craft_copper_chest
clear @s copper_chest
execute unless entity @s[tag=BadGuys] run return run give @s emerald 1

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"エメラルドを使ってアイテムを入手した。", "color":"white"}]

execute store result score @s temporary.copper_chest run random value 1..100

execute if score @s temporary.copper_chest matches ..50 run return run loot give @s loot ender_chest:key_item
loot give @s loot item:escape
