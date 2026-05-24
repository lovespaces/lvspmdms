advancement revoke @s only item:entity_bow
execute on attacker if entity @s[tag=IronHorse] run return run function player:iron_horse
execute on attacker run clear @s bow
execute on attacker run clear @s arrow

execute on attacker unless entity @s[tag=CanShootPlayers] run return 0

function player:attacked/ {"weapon": "弓"}
execute on attacker at @s run playsound entity.item.break master @a ~ ~ ~
execute on attacker at @s run particle item{item:{id:bow}} ~ ~1 ~ 0.25 0.25 0.25 0 5

execute if entity @s[tag=IronHorse] run tag @s add adv.ironhorse.bow
execute if entity @s[tag=IronHorse] run return run execute on attacker at @s run function item:specials/amulet/attacked

function player:attacked/mistake/check
function log:dead
execute at @s run function player:dead/

execute on attacker if entity @s[team=detective] run return 0
execute on attacker if entity @s[team=maniac] if entity @a[team=detective] run return 0
execute on attacker run tag @s remove CanBuyBow
execute on attacker run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"弓を打つことができなくなった", "color":"white"}]
