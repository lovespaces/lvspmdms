scoreboard players reset @s dropped.hopper

execute if entity @s[tag=CantUseHopper] run return run function item:specials/megaphone/failed
execute if entity @s[tag=UsingHopper] run return 0
execute if entity @a[tag=UsingHopper] run return run function item:specials/megaphone/someone

clear @s hopper
kill @e[type=item, sort=nearest, limit=1]
function log:used {"item": "メガホン"}
tag @s add UsingHopper
execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"一度だけみんなに伝達ができるようになった。30秒以内に伝えたいことを入力しよう", "color":"white"}]
scoreboard players operation @s timer.megaphone = $MegaphoneTimeLimit settings
