scoreboard players reset @s open.ender_chest
function ender_chest:clear/none
execute unless items entity @s weapon.mainhand *[custom_model_data={strings:["EnderChestKey"]}] run return 0
execute at @s run function ender_chest:auth/
