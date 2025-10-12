#> item/emerald/lost_key
#
# @within timer:update/item/key

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"鍵を落としてしまったようだ。村人から替えをもらおう。"}]
clear @s tripwire_hook[custom_model_data={strings:["EnderChestKey"]}]