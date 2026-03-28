scoreboard players reset @s dropped.crystall_ball
execute if entity @s[tag=player.HasIronHorseArmor] run return 0
kill @e[type=item, sort=nearest, limit=1]
clear @s feather

function log:used {"item": "おぼろ灯"}
tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"光の中から人が見えてくる..."}]

execute store result score @s temporary run random value 0..100

execute if score @s temporary >= $CrystallBall settings run return run function item:specials/lantern/failed

function item:specials/lantern/success
