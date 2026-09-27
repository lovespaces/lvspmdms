data modify block ~ ~ ~ front_text.messages[2] set value "目撃者"
execute as @e[type=armor_stand, tag=Sign.Increase, limit=1] at @s run function admin:signs/modify/command {"action": "add", "name": "Witness"}
execute as @e[type=armor_stand, tag=Sign.Decrease, limit=1] at @s run function admin:signs/modify/command {"action": "remove", "name": "Witness"}