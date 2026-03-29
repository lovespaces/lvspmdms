scoreboard players remove $Phase timer 1

execute if score $Phase stats matches 0 run function timer:phase/1
execute if score $Phase stats matches 3 run function timer:phase/3
