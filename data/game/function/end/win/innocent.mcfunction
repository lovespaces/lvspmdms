function game:end/win/
title @a title {"text":"市民の勝ち！", "bold":true}
execute if entity @a[tag=KilledMurder, team=detective] run title @a subtitle [{"text":"探偵", "color":"aqua"}, {"text":"が人狼を倒した！"}]
execute if entity @a[tag=KilledMurder] run title @a subtitle [{"selector":"@a[tag=KilledMurder]", "color":"gold"}, {"text":"が人狼を倒した！"}]
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"市民の勝ち！"}]
execute as @a[tag=BadGuys] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.3
execute as @a[tag=!BadGuys] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.3