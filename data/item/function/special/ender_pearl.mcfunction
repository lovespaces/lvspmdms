#> item:special/ender_pearl
#
# @within item:special/

scoreboard players reset @s used.ender_pearl
execute if entity @s[tag=player.HasIronHorseArmor] run return run kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}}, sort=nearest, limit=1]

clear @s ender_pearl
effect give @s minecraft:hunger 4 255
function log:used {"item": "エンダーパール"}