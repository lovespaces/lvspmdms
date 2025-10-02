#> item:emerald/roll
#
# @within timer:update/player/check

execute store result score @s item.emerald run random value 0..100

scoreboard players set $Seconds timer.system 5