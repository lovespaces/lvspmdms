#> timer:update/item/key
#
# @within timer:update/player/check

scoreboard players remove @s timer.give_key 1

execute unless score @s timer.give_key matches 0 run return 0

scoreboard players reset @s timer.give_key

execute if entity @s[tag=player.LostKey] run return run function item:emerald/lost_key

# start時にlovespaces:mdms EnderChestCount にエンダーチェスト（アマスタ付き）の数を取得しておく
function item:emerald/roll/