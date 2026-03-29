scoreboard players reset @s open.ender_chest
item replace entity @s enderchest.13 with barrier[tooltip_display={hide_tooltip:true},custom_name={"color":"dark_gray","text":" "}]
execute unless items entity @s weapon.mainhand *[custom_model_data={strings:["EnderChestKey"]}] run return 0
execute at @s run function ender_chest:auth/
