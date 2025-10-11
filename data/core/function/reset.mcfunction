#> core:reset
# 
# reset function
#
# @public

scoreboard players reset * stats
scoreboard players reset * temporary

scoreboard players reset * timer.system
scoreboard players reset * timer.give_item
scoreboard players reset * timer.give_key
scoreboard players reset * timer.iron_horse_armor
scoreboard players reset * timer.totem

scoreboard players reset * item.bandage
scoreboard players reset * item.emerald
scoreboard players reset * player.stung

scoreboard players reset * key.number

scoreboard players reset * escape.one
scoreboard players reset * escape.two

scoreboard players reset * dropped.amulet
scoreboard players reset * dropped.bandage
scoreboard players reset * dropped.crystall_ball
scoreboard players reset * dropped.dead_report
scoreboard players reset * dropped.detonator

scoreboard players reset * used.lingering
scoreboard players reset * used.potion
scoreboard players reset * used.splash

scoreboard players set $Limit timer.afk 60

team join nothing @a

tag @a remove game.Temporary

tag @a remove player.Spectator
tag @a remove player.Dead
tag @a remove player.Attacked
tag @a remove player.Escaped
tag @a remove player.CanBuyBow
tag @a remove player.HasIronHorseArmor
tag @a remove player.Bombed
tag @a remove player.LostKey

kill @e[type=armor_stand, tag=as.DeadBody]
kill @e[type=arrow]
kill @e[type=item]

execute as @e[tag=as.Exit] at @s run setblock ~ ~ ~ air replace
tag @e[tag=as.Exit] remove as.Exit

effect clear @a
execute as @a run attribute @s attack_speed base set 1024

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"リセットが完了しました", "color":"yellow"}]