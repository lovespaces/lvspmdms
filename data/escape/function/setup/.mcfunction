execute store result score @s escape.one run random value 0..5
function escape:setup/two

execute store result storage lovespaces:mdms EscapeTemporaryOne float 1 run scoreboard players get @s escape.one
execute store result storage lovespaces:mdms EscapeTemporaryTwo float 1 run scoreboard players get @s escape.two

function log:escape/ with storage lovespaces:mdms
