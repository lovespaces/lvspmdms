execute at @s run playsound entity.item.break master @s ~ ~ ~ 0.5

tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"鍵が壊れてしまった。村人から新しい鍵をもらおう", "color":"white"}]

tag @s remove adv.not_key_lost
tag @s remove QueueKey
scoreboard players set @s timer.key -1
