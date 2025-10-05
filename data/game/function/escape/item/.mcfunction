#> game:escape/item/
#
# @within game:escape/check

execute store result storage lovespaces:mdms EscapeTemporaryOne float 1 run scoreboard players get @s escape.one
execute store result storage lovespaces:mdms EscapeTemporaryTwo float 1 run scoreboard players get @s escape.two

function game:escape/item/store with storage lovespaces:mdms