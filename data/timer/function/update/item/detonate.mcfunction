#> timer:update/item/detonate
#
# @within timer:update/

scoreboard players reset $Bomb timer.system

execute as @s at @s run playsound entity.generic.explode master @a ~ ~ ~

tag @a[team=murder] add player.Attacked
function log:attacked {"weapon": "遠隔小型爆弾"}
tag @a[team=murder] remove player.Attacked

execute if score @s player.stung matches 0 run return run function game:player/bomb/check

execute if items entity @s weapon.* totem_of_undying run clear @s totem_of_undying 1

effect give @s instant_damage infinite 4

scoreboard players remove @s player.stung 1

execute if predicate role:is_detective run return 0
# detective attacked

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"インベントリの中に爆弾が隠れていた！", "color": "white"}]

tellraw @s [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"あと "},{"color":"yellow","score":{"name":"@s","objective":"player.stung"}},{"color":"white","text":" 回耐えられる。"}]

execute if score @s player.stung matches 0 run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"あと一回刺されたら死んでしまう。", "color": "white"}]