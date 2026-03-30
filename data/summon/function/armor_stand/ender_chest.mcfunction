execute as @e[type=armor_stand, tag=EnderChest] run data modify entity @s Invisible set value true
execute as @e[type=armor_stand, tag=EnderChest] at @s run setblock ~ ~ ~ ender_chest
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"アーマースタンドの場所にエンダーチェストを設置しました", "color":"white"}]
function ender_chest:armor_stand/
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"アーマースタンドの数（ID基準）: ", "color":"white"}, {"score":{"name":"$Total", "objective":"armor_stand.ender_chest_id"}, "color":"yellow"}]
