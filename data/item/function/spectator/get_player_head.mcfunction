#> item:spectator/get_player_head
#
# @within game:spectator/tp/init

give @s paper[enchantment_glint_override=true, custom_name={"text":"試合に戻る", "italic":false, "color":"yellow"}, lore=[{"color":"yellow", "text":"[投] "}, {"color":"white", "text":"試合に戻るための紙。"}], custom_data={IsSpecTpPaper:1b}]

tag @s add game.Temporary
execute as @a[tag=!player.Spectator] run loot give @a[tag=game.Temporary] loot item:fill_player_head
tag @s remove game.Temporary