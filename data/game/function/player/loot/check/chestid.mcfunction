#> game:player/loot/check/chestid
#
# @within game:player/loot/check/

$execute if data entity @a[tag=game.Temporary, distance=..2, limit=1] {SelectedItem:{components:{"minecraft:custom_data": {CanOpen: [$(ChestID)]}}}} run return 1
return fail