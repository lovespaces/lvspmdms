advancement revoke @s only villager:talk_to_recyclebin
execute store result score @s temporary run clear @s *[custom_data={MdmsItem:true, Trash:true}] 0
execute if score @s temporary < $HowManyTrashes settings run return run function villager:recyclebin/failed
execute store result storage lovespaces:mdms Temporary.ClearTrashes int 1 run scoreboard players get @s temporary
execute store result storage lovespaces:mdms Temporary.TrashCount int 1 run scoreboard players operation @s temporary /= $HowManyTrashes settings
function villager:recyclebin/give with storage lovespaces:mdms Temporary
