#> game:adv/open_chest
# NEW: Enderchest Loot System
# @handles game:open_chest

advancement revoke @s only game:open_chest
function game:player/fill

# 保険で2マスよりも中に入っているプレイヤーでないと検知できないようにする
execute unless entity @e[type=armor_stand, tag=as.EnderChest, distance=..2, limit=1] run return 0
execute unless items entity @s weapon.mainhand tripwire_hook[custom_model_data={strings:["EnderChestKey"]}] run return 0

tag @s add game.Temporary
function game:player/loot/check/
execute if score @s temporary matches 0 run tag @s remove game.Temporary
execute if score @s temporary matches 0 run return 0

clear @s tripwire_hook[custom_model_data={strings:["EnderChestKey"]}]
function game:player/loot/forfeit
scoreboard players set @s timer.give_key 6
function item:emerald/
execute as @e[limit=1, tag=as.ShulkerLoot] at @s run function item:emerald/loot/give
tag @s remove game.Temporary