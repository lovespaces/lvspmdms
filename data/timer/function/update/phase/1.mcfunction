#> timer:update/phase/1
#
# @within timer:update/

execute unless score $Seconds timer.system matches 0..5 run return 0
execute as @a at @s run playsound entity.experience_bottle.throw master @s ~ ~ ~

title @a title {"color":"red", "score":{"name":"$Seconds","objective":"timer.system"}}

execute unless score $Seconds timer.system matches 0 run return 0

title @a title {"bold":true, "text":"START!!"}
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~

scoreboard players set $Phase stats 1
scoreboard players set $Seconds timer.system 5

give @a cooked_beef 10
difficulty normal
execute as @a[tag=!player.Spectator] run function item:emerald/roll with storage lovespaces:mdms