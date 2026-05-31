advancement revoke @s only villager:talk_to_recyclebin
execute if items entity @s weapon.mainhand *[custom_data={MdmsItem:true, EscapeTrade:true}] run return run function villager:itemstoems/ with entity @s SelectedItem
function villager:recyclebin/
