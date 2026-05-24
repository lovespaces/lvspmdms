tag @s remove Spectator
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.4
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"観戦者じゃなくなりました。次の試合は観戦者にならず、そのまま参加となります。"}]
