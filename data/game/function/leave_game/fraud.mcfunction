execute as @a at @s run playsound entity.player.hurt master @s ~ ~ ~
function log:dead
function game_advancements:reset
function player:dead/
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.2
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"試合を途中抜けしたため、死亡判定となりました。", "color": "white"}]
