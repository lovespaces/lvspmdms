execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true},{"color":"yellow","selector":"@s"},{"color":"white","text":" が脱出しました！"}]
