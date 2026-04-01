function escape:check/store

execute store result score @s temporary run function escape:check/key with storage lovespaces:mdms

execute if score @s temporary matches 1 run function escape:success
