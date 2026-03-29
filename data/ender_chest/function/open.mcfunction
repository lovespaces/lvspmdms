scoreboard players reset @s open.ender_chest
execute unless items entity @s weapon.mainhand *[custom_model_data={strings:["EnderChestKey"]}] run return 0
execute at @s run playsound block.dispenser.launch master @s ~ ~ ~ 1 2
clear @s *[custom_model_data={strings:["EnderChestKey"]}]
function ender_chest:roll/
