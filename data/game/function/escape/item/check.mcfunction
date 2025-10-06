#> game:escape/item/check
#
# @within game:escape/item/

$execute unless items entity @s container.* $(id) run return fail

return 1