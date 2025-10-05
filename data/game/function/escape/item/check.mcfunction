#> game:escape/item/check
#
# @within game:escape/item/

$execute unless items entity @s container.* $(EscapeTemporaryOne) run return fail
$execute unless items entity @s container.* $(EscapeTemporaryTwo) run return fail

return 1