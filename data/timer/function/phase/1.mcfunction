execute unless score $Phase timer matches ..100 run return 0
scoreboard players add $SFXTick timer 1
scoreboard players operation $Seconds timer = $Phase timer
scoreboard players operation $Seconds timer /= $Tick timer
scoreboard players add $Seconds timer 1

title @a times 0 5s 1s
title @a title {"score":{"name":"$Seconds", "objective":"timer"}, "color":"yellow"}
execute if score $SFXTick timer matches 20 run execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score $SFXTick timer matches 20 run scoreboard players reset $SFXTick timer

execute unless score $Phase timer matches ..0 run return 0

scoreboard players set $Phase stats 1
function log:role/reveal
execute as @a at @s run playsound entity.ender_dragon.hurt master @s ~ ~ ~ 0.75

give @a sweet_berries 3
difficulty hard
effect give @a[team=!spectator, team=!murder] hunger 2 255
execute as @a[team=!spectator] run function ender_chest:key/

execute as @a[team=innocent] run function escape:setup/
execute as @a[team=witness] run function escape:setup/

execute as @a[team=nothing] run function game:leave_game/not_joining
