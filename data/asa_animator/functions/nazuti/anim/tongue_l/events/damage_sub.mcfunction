# ダメージ
tag @s add D_NazutiTongue
execute if entity @s[type=player] unless entity @s[scores={MhdpTDamage=1..}] unless entity @s[scores={MhdpTAvoid=1..}] run function asa_animator:nazuti/anim/tongue_l/events/drop
function mh_dp:damage/attack
tag @s remove D_NazutiTongue