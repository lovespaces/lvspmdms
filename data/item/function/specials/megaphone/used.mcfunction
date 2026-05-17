tag @s remove UsingHopper
tag @s remove UsedHopper
tag @a add CantUseHopper
scoreboard players operation @s timer.megaphone = $MegaphoneInterval settings
execute at @s run playsound item.goat_horn.sound.0 master @a ~ ~ ~
