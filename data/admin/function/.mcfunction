execute as @e[type=item, limit=1] if data entity @s Item.components.minecraft:custom_data.IsStartPaper run function admin:item_execute/start_game
execute as @e[type=item, limit=1] if data entity @s Item.components.minecraft:custom_data.IsVoiceSetting run function admin:item_execute/voice_setting
execute as @e[type=item, limit=1] if data entity @s Item.components.minecraft:custom_data.IsGetMember run function admin:item_execute/get_member
