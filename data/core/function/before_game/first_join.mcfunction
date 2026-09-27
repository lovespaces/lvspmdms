tellraw @a [{"selector":"@s"}, {"text":" さんお初です", "color": "yellow"}]

scoreboard players set @s roll.murder 1
scoreboard players set @s roll.detective 1
scoreboard players set @s roll.witness 1
scoreboard players set @s roll.maniac 1

function core:before_game/join_handler
