$execute store success score @s temporary run function escape:check/is_correct with storage lovespaces:mdms EscapeItems[$(EscapeTemporaryOne)]
execute if score @s temporary matches 0 run return 0

$execute store success score @s temporary run function escape:check/is_correct with storage lovespaces:mdms EscapeItems[$(EscapeTemporaryTwo)]
execute if score @s temporary matches 0 run return 0

return 1
