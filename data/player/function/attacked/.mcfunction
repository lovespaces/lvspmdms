# ログ関連
execute on attacker run function log:used {"item": "$(weapon)"}
execute on attacker run tag @s add AttackTemporary
function log:attacked {"weapon": "$(weapon)"}
execute on attacker run tag @s remove AttackTemporary
