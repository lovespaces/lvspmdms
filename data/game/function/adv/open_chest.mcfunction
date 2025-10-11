#> game:adv/open_chest
# NEW: Enderchest Loot System
# @handles game:open_chest

advancement revoke @s only game:open_chest

tag @s remove game.Temporary

# 保険で2マスよりも中に入っているプレイヤーでないと検知できないようにする
execute unless entity @e[type=armor_stand, tag=as.EnderChest, distance=..2, limit=1] run return 0

function game:player/loot/check/
execute if score @s temporary matches 0 run tag @s remove game.Temporary
execute if score @s temporary matches 0 run return 0

clear @s tripwire_hook[custom_data={IsChestKey:1b}]
function game:player/fill
function game:player/loot/forfeit
scoreboard players set @s timer.give_key 6
function item:emerald/
execute as @e[limit=1, tag=as.ShulkerLoot] at @s run item replace entity @a[limit=1, tag=game.Temporary] enderchest.13 from block ~ ~ ~ container.0
tag @s remove game.Temporary