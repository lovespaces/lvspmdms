advancement revoke @s only item:attack_entity

clear @a iron_sword

# 身内切りはやばいのでここでreturn
execute if entity @s[team=murder] run return 0
# ナイフが握れないときは何もできない
execute if entity @s[tag=NoKnife] run return 0

execute as @a[team=murder] run tag @s add NoKnife

# ログ関連
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"誰かに刺された！", "color":"white"}]
execute on attacker run function log:used {"item": "ナイフ"}
execute on attacker run tag @s add AttackTemporary
function log:attacked {"weapon": "ナイフ"}
execute on attacker run tag @s remove AttackTemporary

execute if entity @s[tag=IronHorse] run return run execute on attacker at @s run function item:specials/amulet/attacked
execute if items entity @s weapon.* totem_of_undying[custom_data={"MdmsItem":true,"Totem":true}] run return run function item:specials/totem/

scoreboard players remove @s attack 1
execute on attacker run effect give @s invisibility 3 1
execute on attacker run effect give @s slowness 3 2

execute if score @s attack matches ..-1 run return run execute at @s run function player:dead

effect give @s blindness 5 2

# TODO: Witness倒したときの処理
# TODO: Bowとナイフの共有部分を統一化する（player:attacked/）
# TODO: Witness優先
