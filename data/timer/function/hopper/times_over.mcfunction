tag @s remove UsingHopper
tag @s add CantUseHopper
scoreboard players operation @s timer.megaphone = $MegaphoneInterval settings
execute at @s run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text": "[メガホン] ", "color":"yellow"}, {"text":"の効果が無くなった", "color":"white"}]
tellraw @a[team=spectator] [{"color":"red","text":"[ラブスペ人狼] "},{"color":"yellow","selector":"@s"},{"color":"yellow","text":" [メガホン] "},{"color":"white","text":"時間切れ"}]
