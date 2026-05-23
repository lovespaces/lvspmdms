# 上から人狼、狂人、探偵、目撃者、市民

team add murder
team add maniac
team add detective
team add witness
team add innocent
team add spectator
team add nothing

team modify murder friendlyFire true
team modify maniac friendlyFire true
team modify detective friendlyFire true
team modify witness friendlyFire true
team modify innocent friendlyFire true
team modify murder nametagVisibility never
team modify maniac nametagVisibility never
team modify detective nametagVisibility never
team modify witness nametagVisibility never
team modify innocent nametagVisibility never
team modify murder seeFriendlyInvisibles true
team modify maniac seeFriendlyInvisibles true
team modify detective seeFriendlyInvisibles true
team modify witness seeFriendlyInvisibles true
team modify innocent seeFriendlyInvisibles true
team modify murder collisionRule never
team modify maniac collisionRule never
team modify detective collisionRule never
team modify witness collisionRule never
team modify innocent collisionRule never

scoreboard objectives add stats dummy
scoreboard objectives add settings dummy "ゲーム設定"
scoreboard objectives add attack dummy

scoreboard objectives add leave_game custom:leave_game
