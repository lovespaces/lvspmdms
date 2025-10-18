#> core:load
#
# load function
#
# @handles #minecraft:load

function modify:escape_items/update/
function modify:villager_trade/

scoreboard objectives add game.settings dummy

scoreboard objectives add stats dummy
scoreboard objectives add temporary dummy
scoreboard objectives add temporary.enderchest dummy

scoreboard objectives add timer.system dummy
scoreboard objectives add timer.give_item dummy
scoreboard objectives add timer.give_key dummy
scoreboard objectives add timer.iron_horse_armor dummy
scoreboard objectives add timer.totem dummy

scoreboard objectives add player.stung dummy
scoreboard objectives add player.leave_game custom:leave_game
scoreboard objectives add item.bandage dummy
scoreboard objectives add item.emerald dummy

scoreboard objectives add key.number dummy

scoreboard objectives add escape.one dummy
scoreboard objectives add escape.two dummy

scoreboard objectives add dropped.crystall_ball dropped:ender_eye
scoreboard objectives add dropped.dead_report dropped:name_tag
scoreboard objectives add dropped.bandage dropped:quartz
scoreboard objectives add dropped.amulet dropped:iron_horse_armor
scoreboard objectives add dropped.detonator dropped:redstone_torch
# for bedrock spectators
scoreboard objectives add dropped.player_head dropped:player_head

scoreboard objectives add used.potion used:minecraft.potion
scoreboard objectives add used.splash used:minecraft.splash_potion
scoreboard objectives add used.lingering used:minecraft.lingering_potion
scoreboard objectives add used.ender_pearl used:minecraft.ender_pearl

team add murder
team add detective
team add witness
team add innocent
team add nothing

team modify murder nametagVisibility never
team modify detective nametagVisibility never
team modify witness nametagVisibility never
team modify innocent nametagVisibility never
team modify nothing friendlyFire false

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule showDeathMessages false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule fallDamage false
gamerule commandBlockOutput false
gamerule announceAdvancements false
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule locatorBar false

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"読み込みが完了しました", "color":"yellow"}]