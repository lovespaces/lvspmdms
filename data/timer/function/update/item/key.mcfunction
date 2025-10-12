#> timer:update/item/key
#
# @within timer:update/player/check

scoreboard players remove @s timer.give_key 1

execute unless score @s timer.give_key matches 0 run return 0

scoreboard players reset @s timer.give_key

execute if entity @s[tag=player.LostKey] run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"鍵を落としてしまったようだ。村人から替えをもらおう。"}]
execute if entity @s[tag=player.LostKey] run return 0

# start時にlovespaces:mdms EnderChestCount にエンダーチェスト（アマスタ付き）の数を取得しておく
scoreboard players set @s temporary 1
function item:emerald/roll/