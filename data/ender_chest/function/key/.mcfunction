scoreboard players set @s temporary.enderchest 0
data remove storage lovespaces:mdms Temporary.EnderChestList
execute store result storage lovespaces:mdms Temporary.EnderChestCount int 1 run scoreboard players get $Total armor_stand.ender_chest_id
function ender_chest:key/first with storage lovespaces:mdms Temporary
function ender_chest:key/roll_again with storage lovespaces:mdms Temporary

function ender_chest:key/give with storage lovespaces:mdms Temporary
