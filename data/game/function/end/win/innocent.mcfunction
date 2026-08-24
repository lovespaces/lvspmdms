function game:end/win/
title @a title {"text":"市民の勝ち！", "bold":true}
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"市民の勝ち！"}]
execute as @a[tag=BadGuys] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.3
execute as @a[tag=!BadGuys] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.3