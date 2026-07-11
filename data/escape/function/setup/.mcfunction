execute store result score @s escape.one run random value 0..5
function escape:setup/two

execute store result storage lovespaces:mdms EscapeTemporary.One float 1 run scoreboard players get @s escape.one
execute store result storage lovespaces:mdms EscapeTemporary.Two float 1 run scoreboard players get @s escape.two

function log:escape/ with storage lovespaces:mdms EscapeTemporary
function escape:storage/insert with storage lovespaces:mdms EscapeTemporary
function escape:setup/give_paper with storage lovespaces:mdms EscTemp
