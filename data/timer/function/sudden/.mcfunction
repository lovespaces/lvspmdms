execute store result bossbar lovespaces:mdms_end_timer value run scoreboard players remove $SuddenDeath timer 1

execute if score $SuddenDeath timer matches 1200 run tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"終了まで、残り 1分", "color":"white"}]
execute if score $SuddenDeath timer matches 600 run tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"終了まで、残り 30秒", "color":"white"}]
execute if score $SuddenDeath timer matches 300 run tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"終了まで、残り 15秒", "color":"white"}]

execute unless score $SuddenDeath timer matches ..200 run return 0
scoreboard players add $SFXTick timer 1
scoreboard players operation $Seconds timer = $SuddenDeath timer
scoreboard players operation $Seconds timer /= $Tick timer
scoreboard players add $Seconds timer 1

title @a times 0 5s 1s
title @a title {"score":{"name":"$Seconds", "objective":"timer"}, "color":"yellow"}
execute if score $SFXTick timer matches 20 run execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score $SFXTick timer matches 20 run scoreboard players reset $SFXTick timer

execute unless score $SuddenDeath timer matches ..0 run return 0

execute as @a[team=innocent] at @s run function player:dead/
execute as @a[team=witness] at @s run function player:dead/
