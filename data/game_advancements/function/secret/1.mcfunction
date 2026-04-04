scoreboard players add @s adv.secret1 1

execute unless score @s adv.secret1 matches 100 run return 0

execute if entity @s[advancements={game_advancements:secret/1=true}] run return 0
advancement grant @s only game_advancements:secret/1
playsound entity.elder_guardian.curse master @s ~ ~ ~ 0.1
