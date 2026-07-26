execute at @s run particle explosion ~ ~1 ~

execute as @a[team=murder] run tag @s add NoKnife

function player:attacked/ {"weapon": "爆弾"}

execute if entity @s[tag=IronHorse] run return run execute as @a[tag=BombGuy] at @s run function item:specials/amulet/attacked
execute if items entity @s weapon.* totem_of_undying[custom_data={"MdmsItem":true,"Totem":true}] run return run function item:specials/totem/bomb/

effect give @s blindness 5 2

execute if entity @s[team=witness] run return 0

tag @s remove adv.not_attack
scoreboard players remove @s attack 1

execute if score @s attack matches ..-1 run execute at @s run function log:dead
execute if score @s attack matches ..-1 run return run execute at @s run function player:dead/