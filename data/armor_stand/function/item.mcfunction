give @s armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:0b,Small:1b,Tags:["EnderChest"]},custom_name="EnderChest"] 1
give @s armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:0b,Small:1b,Tags:["TempChest"]},custom_name="TempChest"] 1
give @s armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Small:1b,Tags:["Lobby"]},custom_name="Lobby"] 1
give @s armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Small:1b,Tags:["Escape"]},custom_name="Escape"] 1
give @s armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Small:1b,Tags:["FirstSecret"]},custom_name="SECRET_1"] 1
give @s armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Small:1b,Tags:["SecondSecret"]},custom_name="SECRET_2"] 1
give @s armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Small:1b,Tags:["ThirdSecret"]},custom_name="SECRET_3"] 1
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"アーマースタンドを設置後、 /function summon:armor_stand/ender_chest or armor_stand/temporary_chest でチェストを設置してください。", "color":"white"}]
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"※TempChest, Lobby, Escapeは1体だけにしてください※", "color":"white"}]
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"※EnderChestのスタンド同士はある程度離しておかないとゲーム内でバグる可能性があります※", "color":"white"}]
