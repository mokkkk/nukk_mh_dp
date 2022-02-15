# ダメージ
tag @s add D_NazutiBreath
execute unless entity @s[scores={MhdpTDamage=1..}] unless entity @s[scores={MhdpTAvoid=1..}] run effect give @s hunger 5 120
function mh_dp:damage/attack
tag @s remove D_NazutiBreath