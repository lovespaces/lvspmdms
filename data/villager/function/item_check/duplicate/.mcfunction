$execute if items entity @s container.* $(item) run return 1
$execute if items entity @s weapon.offhand $(item) run return 1
$execute if items entity @s player.cursor $(item) run return 1
return fail
