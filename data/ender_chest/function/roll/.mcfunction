execute store result score @s roll run random value 1..100
clear @s tripwire_hook
execute at @s run playsound block.dispenser.launch master @s ~ ~ ~ 1 2

tag @s add QueueKey
scoreboard players operation @s timer.key = $KeySeconds settings

function ender_chest:roll/lost/roll

execute if score @s roll <= @s roll.emerald run return run item replace entity @s enderchest.13 with emerald[lore=[{"color":"white","italic":false,"text":"普通のエメラルド。"}," ",{"color":"white","italic":false,"text":"村人とのアイテム交換に使用ができる。"}," ",{"color":"red","italic":false,"text":"人狼・狂人は、エメラルドをインベントリの"},{"color":"red","italic":false,"text":"クラフト欄に入れることで、脱出アイテムを"},{"color":"red","italic":false,"text":"ランダムで入手することができる。"}]]
execute if score @s roll <= @s roll.key run return run function ender_chest:roll/item/ {"loot_path": "key_item"}
execute if score @s roll <= @s roll.trash run return run function ender_chest:roll/item/ {"loot_path": "trash"}
