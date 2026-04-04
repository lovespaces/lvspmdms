scoreboard players add @s adv.secret3 1

execute unless score @s adv.secret3 matches 300 run return 0

# secret/3チェック
execute unless entity @s[advancements={game_advancements:secret/2=true}] run return run function game_advancements:secret/failed
execute unless score $Phase stats matches 2 run return run function game_advancements:secret/failed
execute unless entity @s[tag=adv.not_running] run return run function game_advancements:secret/failed

execute if entity @s[advancements={game_advancements:secret/3=true}] run return 0
advancement grant @s only game_advancements:secret/3
playsound entity.elder_guardian.curse master @s ~ ~ ~ 0.1
