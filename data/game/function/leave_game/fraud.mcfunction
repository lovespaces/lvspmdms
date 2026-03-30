execute as @a at @s run playsound entity.player.hurt master @s ~ ~ ~
function log:dead
function player:dead/
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.2
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"試合を途中抜けしたため、死亡判定となりました。", "color": "white"}]
