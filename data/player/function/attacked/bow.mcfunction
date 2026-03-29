# TODO: 弓は耐久力1に
advancement revoke @s only item:entity_bow
execute on attacker run clear @s bow

function player:attacked/ {"weapon": "弓"}

execute if entity @s[tag=IronHorse] run return run execute on attacker at @s run function item:specials/amulet/attacked

execute at @s run function player:dead/
