execute unless score $Phase stats matches 1..2 run return 0

execute unless score @s sneaking >= $EscapeSneaks settings run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"score":{"name":"$InSeconds", "objective":"stats"}, "color": "aqua"}, {"text":" 秒以上しゃがんでから", "color":"white"}, {"text": "しゃがみながら脱出してください", "color":"white", "bold":true}]
execute if entity @s[tag=BadGuys] run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"役職上、あなたは脱出できません。", "color":"white"}]
execute if entity @s[team=detective] run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"役職上、あなたは脱出できません。", "color":"white"}]
execute if entity @s[tag=player.HasIronHorseArmor] run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"お守りで守られている状態では脱出できない！", "color":"white"}]

function escape:check/

# execute as @s at @s run playsound entity.enderman.teleport master @s ~ ~ ~
# tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"刺されている状態では脱出できない！", "color":"white"}]
