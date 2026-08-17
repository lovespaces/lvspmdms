tag @s remove UsingHopper
tag @s add CantUseHopper
scoreboard players operation @s timer.megaphone = $MegaphoneInterval settings
execute at @s run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text": "[メガホン] ", "color":"yellow"}, {"text":"の効果が無くなった", "color":"white"}]
tellraw @a[team=spectator] [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true},{"color":"yellow","selector":"@s"},{"color":"yellow","text":" [メガホン] "},{"color":"white","text":"時間切れ"}]
