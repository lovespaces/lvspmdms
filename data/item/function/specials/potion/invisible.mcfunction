execute if entity @s[tag=player.HasIronHorseArmor] run return 0
clear @s potion[custom_data={MdmsItem:true, Invisible:true}]

execute at @s run playsound entity.player.burp master @a ~ ~ ~
effect give @s invisibility 15 2

function log:used {"item": "透明化のポーション"}
