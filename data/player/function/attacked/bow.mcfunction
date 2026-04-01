advancement revoke @s only item:entity_bow
execute on attacker run clear @s bow

function player:attacked/ {"weapon": "弓"}
clear @s bow
clear @s arrow
execute at @s run playsound entity.item.break master @a ~ ~ ~
execute at @s run particle item{item:{id:bow}} ~ ~1 ~ 0.25 0.25 0.25 0 5

execute if entity @s[tag=IronHorse] run return run execute on attacker at @s run function item:specials/amulet/attacked

execute if entity @s[team=!murder, team=!maniac] run execute on attacker if entity @s[team=!maniac] run function log:mistake
execute if entity @s[team=!murder, team=!maniac] run execute on attacker run function player:dead/missed

function log:dead
execute at @s run function player:dead/

execute unless entity @s[team=!detective] run return 0
tag @s remove CanBuyBow
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"弓を打つことができなくなった", "color":"white"}]
