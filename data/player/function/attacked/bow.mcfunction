# TODO: 弓は耐久力1に
advancement revoke @s only item:entity_bow
execute on attacker run clear @s bow

execute on attacker run tag @s add AttackTemporary
function log:attacked {"weapon": "弓"}
execute on attacker run tag @s remove AttackTemporary

execute if entity @s[tag=IronHorse] run return run execute on attacker at @s run function item:specials/amulet/attacked

# TODO: WitnessとMurder倒したときの処理
# TODO: Witness優先

execute at @s run function player:dead
