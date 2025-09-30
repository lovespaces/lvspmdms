#> core:load
#
# load function
#
# @handles #minecraft:load

scoreboard objectives add stats dummy

scoreboard objectives add temporary dummy

scoreboard objectives add timer.system dummy
scoreboard objectives add timer.afk dummy
scoreboard objectives add timer.iron_horse_armor dummy

scoreboard objectives add item.stung dummy
scoreboard objectives add item.bandage dummy
scoreboard objectives add item.emerald dummy
scoreboard objectives add item.escape dummy

scoreboard objectives add dropped.crystall_ball dropped:ender_eye
scoreboard objectives add dropped.dead_report dropped:name_tag
scoreboard objectives add dropped.bandage dropped:quartz
scoreboard objectives add dropped.amulet dropped:iron_horse_armor
scoreboard objectives add dropped.detonator dropped:redstone_torch

scoreboard objectives add used.potion used:minecraft.potion
scoreboard objectives add used.splash used:minecraft.splash_potion
scoreboard objectives add used.lingering used:minecraft.lingering_potion

team add player
team modify player prefix "\u00A77"
team modify player nametagVisibility never

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"読み込みが完了しました", "color":"yellow"}]