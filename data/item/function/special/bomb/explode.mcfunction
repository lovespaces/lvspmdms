#> item:special/bomb/explode
#
# @within timer:update/item/detonate

playsound entity.generic.explode master @a ~ ~ ~

tag @a[team=murder] add player.Attacked
function log:attacked {"weapon": "遠隔小型爆弾"}
tag @a[team=murder] remove player.Attacked

execute if score @s player.stung matches 0 run return run function item:special/bomb/check

execute if items entity @s weapon.* totem_of_undying run clear @s totem_of_undying 1

effect give @s instant_damage infinite 4

scoreboard players remove @s player.stung 1

function item:replace with entity @s Inventory[{components:{"minecraft:custom_data": {IsBomb: 1b}}}]

execute if predicate role:is_detective run function role:detective/attacked

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"インベントリの中に爆弾が隠れていた！", "color": "white"}]
tellraw @s [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"あと "},{"color":"yellow","score":{"name":"@s","objective":"player.stung"}},{"color":"white","text":" 回耐えられる。"}]
tellraw @s[tag=player.HasIronHorseArmor] [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"爆発を食らった際に次で死ぬ状態でない場合は、 ["}, {"color":"yellow", "text":"守護のお守り"}, {"color":"white", "text":"] の効果を得ることはできません。"}]
execute if score @s player.stung matches 0 run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"あと一回刺されたら死んでしまう。", "color": "white"}]