
$execute store success score @s temporary run function game:escape/item/check with storage lovespaces:mdms EscapeItems[$(EscapeTemporaryOne)]
execute if score @s temporary matches 0 run return 0

$execute store success score @s temporary run function game:escape/item/check with storage lovespaces:mdms EscapeItems[$(EscapeTemporaryTwo)]
execute if score @s temporary matches 0 run return 0

function escape:success
