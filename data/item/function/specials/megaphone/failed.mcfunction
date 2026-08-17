execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~
scoreboard players operation $CalcHopper temporary = @s timer.megaphone
scoreboard players operation $CalcHopper temporary /= $Tick timer
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true},{"color":"yellow","text":"[メガホン] "},{"color":"white","text":"はまだ使えない。あと"},{"color":"gold","score":{"name":"$CalcHopper","objective":"temporary"}},{"color":"white","text":"秒待とう。"}]
