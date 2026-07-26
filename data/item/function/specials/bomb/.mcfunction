advancement revoke @s only item:attack_with_bomb
execute on attacker if entity @s[tag=IronHorse] run return run function player:iron_horse
execute if entity @s[tag=player.HasIronHorseArmor] run return run function item:specials/amulet/attacked

execute on attacker run clear @s firework_star

execute if score $BombRemain bomb matches ..0 run return run function item:specials/bomb/failed

scoreboard players remove $BombRemain bomb 1
tag @s add HasBomb
execute on attacker run tag @s add QueueBombButton
execute on attacker run scoreboard players operation @s timer.bomb = $BombButtonTick settings

function log:used {"item": "遠隔小型爆弾"}

execute on attacker run tag @s add AttackTemporary
function log:attacked {"weapon": "遠隔小型爆弾"}
execute on attacker run tag @s remove AttackTemporary
