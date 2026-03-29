execute at @s run playsound entity.villager.no master @s ~ ~ ~
tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"まだゴミが足りないな... "},{"color":"green","score":{"name":"$HowManyTrashes","objective":"settings"}},{"color":"white","text":" 個以上集めてくれ。\n集めてくれたゴミの数相応の報酬を出そう。"}]
