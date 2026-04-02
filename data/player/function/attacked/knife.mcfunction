advancement revoke @s only item:attack_entity
execute on attacker if entity @s[tag=IronHorse] run return run function player:iron_horse

clear @s iron_sword
execute at @s run playsound entity.item.break master @a ~ ~ ~
execute at @s run particle item{item:{id:bow}} ~ ~1 ~ 0.25 0.25 0.25 0 5

# 身内切りはやばいのでここでreturn
execute if entity @s[team=murder] run return 0
# ナイフが握れないときは何もできない
execute if entity @s[tag=NoKnife] run return 0
execute as @a[team=murder] run tag @s add NoKnife
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"誰かに刺された！", "color":"white"}]
function player:attacked/ {"weapon": "ナイフ"}

execute if entity @s[tag=IronHorse] run tag @s add adv.ironhorse.knife
execute if entity @s[tag=IronHorse] run return run execute on attacker at @s run function item:specials/amulet/attacked
execute if items entity @s weapon.* totem_of_undying[custom_data={"MdmsItem":true,"Totem":true}] run return run function item:specials/totem/

tag @s remove adv.not_attack
scoreboard players remove @s attack 1
execute on attacker run effect give @s slowness 3 2
execute on attacker run function player:attacked/is_final_phase
tag @s add NoKnife

execute if score @s attack matches ..-1 run execute at @s run function log:dead
execute if score @s attack matches ..-1 run return run execute at @s run function player:dead/

effect give @s blindness 5 2
