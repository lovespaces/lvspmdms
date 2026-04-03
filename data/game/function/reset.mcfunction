scoreboard players reset * armor_stand.ender_chest_id

scoreboard players reset * stats
scoreboard players reset * is_playing
scoreboard players reset * leave_game
scoreboard players reset * sneaking
scoreboard players reset * temporary
scoreboard players reset * temporary.enderchest
scoreboard players reset * temporary.enderchest_auth

scoreboard players reset * roll
scoreboard players reset * roll.emerald
scoreboard players reset * roll.key
scoreboard players reset * roll.lost_key
scoreboard players reset * roll.trash

scoreboard players reset * timer
scoreboard players reset * timer.iron_horse
scoreboard players reset * timer.key
scoreboard players reset * timer.knife
scoreboard players reset * timer.totem

scoreboard players reset * bandage
scoreboard players reset * attack
scoreboard players reset * open.ender_chest

scoreboard players reset * escape.one
scoreboard players reset * escape.two

scoreboard players reset * dropped.amulet
scoreboard players reset * dropped.bandage
scoreboard players reset * dropped.crystall_ball
scoreboard players reset * dropped.dead_report
scoreboard players reset * dropped.detonator

scoreboard players reset * used.lingering
scoreboard players reset * used.splash

team join nothing @a

execute as @a run function core:reset_tag

tag @e remove ECAdded

kill @e[type=armor_stand, tag=DeadBody]
kill @e[type=arrow]
kill @e[type=item]

effect clear @a
execute as @a run attribute @s attack_speed base set 1024
difficulty peaceful

gamerule show_advancement_messages true

execute as @a run function ender_chest:reset
execute as @a run function game_advancements:reset

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"リセットが完了しました", "color":"yellow"}]
