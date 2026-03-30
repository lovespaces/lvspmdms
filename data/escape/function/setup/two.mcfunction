execute store result score @s escape.two run random value 0..5
execute if score @s escape.one = @s escape.two run function escape:setup/two
