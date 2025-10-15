#> item:special/ender_pearl
#
# @within item:special/

scoreboard players reset @s used.ender_pearl
clear @s ender_pearl
effect give @s minecraft:hunger 4 255
function log:used {"item": "エンダーパール"}