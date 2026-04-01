execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~
scoreboard players operation $Minimum temporary = $EscapeMinimum stats
scoreboard players operation $Minimum temporary -= $Escaped stats
tellraw @s [{"text":"[ラブスペ人狼] ", "color": "red"}, {"text":"いま脱出しても人狼は凶暴化してしまう... あと", "color":"white"}, {"score":{"name": "$Minimum", "objective":"temporary"}, "color":"aqua"}, {"text":"人脱出してから脱出したほうがいいだろう..."}]
