tag @s remove UsingHopper
tag @a add CantUseHopper
scoreboard players operation @a timer.megaphone = $MegaphoneInterval settings
execute at @s run playsound item.goat_horn.sound.0 master @a ~ ~ ~
