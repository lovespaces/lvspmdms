$execute store success score @s temporary run function game:escape/item/check with storage lovespaces:mdms EscapeItems[$(AdvEscapeTemporaryOne)]
execute if score @s temporary matches 0 run return 0

$execute store success score @s temporary run function game:escape/item/check with storage lovespaces:mdms EscapeItems[$(AdvEscapeTemporaryTwo)]
execute if score @s temporary matches 0 run return 0

return 1
