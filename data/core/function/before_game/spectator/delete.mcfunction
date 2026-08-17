tag @s remove Spectator
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.4
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"観戦者じゃなくなりました。次の試合は観戦者にならず、そのまま参加となります。", "color":"white"}]
