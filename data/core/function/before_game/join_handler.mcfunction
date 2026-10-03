scoreboard players reset @s
function core:reset_tag
team join nothing @s
function tp:lobby
function item:before/paper
execute if entity @s[tag=Admin] run function admin:give/