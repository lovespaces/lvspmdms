execute unless score $SignRole settings = $SignRole settings run scoreboard players set $SignRole settings 0
scoreboard players add $SignRole settings 1
execute if score $SignRole settings matches 4.. run scoreboard players set $SignRole settings 0

execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~

execute as @e[type=armor_stand, tag=Sign.Roles, limit=1] at @s run function admin:signs/change_role/modify