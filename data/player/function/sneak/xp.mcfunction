xp set @s 129 levels
execute store result score @s xp.points run xp query @s points

scoreboard players operation @s xp.points = @s sneaking
scoreboard players operation @s xp.points *= $1000 temporary.percentage
$scoreboard players operation @s xp.points /= $(objective) settings
scoreboard players operation @s xp.levels = @s xp.points
scoreboard players operation @s xp.levels /= $10 temporary.percentage
scoreboard players add @s xp.points 1
scoreboard players add @s xp.levels 1

xp set @s 0 points
execute if score @s xp.points matches 512.. run xp add @s 512 points
execute if score @s xp.points matches 512.. run scoreboard players remove @s xp.points 512
execute if score @s xp.points matches 256.. run xp add @s 256 points
execute if score @s xp.points matches 256.. run scoreboard players remove @s xp.points 256
execute if score @s xp.points matches 128.. run xp add @s 128 points
execute if score @s xp.points matches 128.. run scoreboard players remove @s xp.points 128
execute if score @s xp.points matches 64.. run xp add @s 64 points
execute if score @s xp.points matches 64.. run scoreboard players remove @s xp.points 64
execute if score @s xp.points matches 32.. run xp add @s 32 points
execute if score @s xp.points matches 32.. run scoreboard players remove @s xp.points 32
execute if score @s xp.points matches 16.. run xp add @s 16 points
execute if score @s xp.points matches 16.. run scoreboard players remove @s xp.points 16
execute if score @s xp.points matches 8.. run xp add @s 8 points
execute if score @s xp.points matches 8.. run scoreboard players remove @s xp.points 8
execute if score @s xp.points matches 4.. run xp add @s 4 points
execute if score @s xp.points matches 4.. run scoreboard players remove @s xp.points 4
execute if score @s xp.points matches 2.. run xp add @s 2 points
execute if score @s xp.points matches 2.. run scoreboard players remove @s xp.points 2
execute if score @s xp.points matches 1.. run xp add @s 1 points
execute if score @s xp.points matches 1.. run scoreboard players remove @s xp.points 1

xp set @s 0 levels
execute if score @s xp.levels matches 64.. run xp add @s 64 levels
execute if score @s xp.levels matches 64.. run scoreboard players remove @s xp.levels 64
execute if score @s xp.levels matches 32.. run xp add @s 32 levels
execute if score @s xp.levels matches 32.. run scoreboard players remove @s xp.levels 32
execute if score @s xp.levels matches 16.. run xp add @s 16 levels
execute if score @s xp.levels matches 16.. run scoreboard players remove @s xp.levels 16
execute if score @s xp.levels matches 8.. run xp add @s 8 levels
execute if score @s xp.levels matches 8.. run scoreboard players remove @s xp.levels 8
execute if score @s xp.levels matches 4.. run xp add @s 4 levels
execute if score @s xp.levels matches 4.. run scoreboard players remove @s xp.levels 4
execute if score @s xp.levels matches 2.. run xp add @s 2 levels
execute if score @s xp.levels matches 2.. run scoreboard players remove @s xp.levels 2
execute if score @s xp.levels matches 1.. run xp add @s 1 levels
execute if score @s xp.levels matches 1.. run scoreboard players remove @s xp.levels 1

scoreboard players reset @s xp.levels
scoreboard players reset @s xp.points