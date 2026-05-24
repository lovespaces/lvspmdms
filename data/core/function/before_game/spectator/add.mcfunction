tag @s add Spectator
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.4
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"観戦者になりました。次の試合は自動的に観戦者となります。"}]
