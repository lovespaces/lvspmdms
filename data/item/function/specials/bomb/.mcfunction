advancement revoke @s only item:attack_with_bomb
execute on attacker if entity @s[tag=IronHorse] run return run function player:iron_horse
execute if entity @s[tag=player.HasIronHorseArmor] run return run function item:specials/amulet/attacked

execute on attacker run clear @s firework_star

execute if score $BombRemain bomb matches ..0 run return run function item:specials/bomb/failed
execute if entity @s[tag=HasBomb] run return run execute on attacker run tellraw @s [{"text":"[ラブスペ人狼] " ,"color": "red"}, {"text":"この市民にはすでに爆弾が仕掛けられています。"}]
execute if entity @s[team=murder] run execute on attacker if entity @s[team=murder] run return 0

scoreboard players remove $BombRemain bomb 1
tag @s add HasBomb
execute on attacker run tag @s add QueueBombButton
execute on attacker run scoreboard players operation @s timer.bomb = $BombButtonTick settings

function log:used {"item": "遠隔小型爆弾"}
function player:attacked/ {"weapon": "ナイフ"}