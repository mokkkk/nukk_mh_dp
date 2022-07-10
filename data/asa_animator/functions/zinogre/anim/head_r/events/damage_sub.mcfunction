# ダメージ
tag @s add D_ZinogreHead
execute unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run effect give @s[type=player] slowness 1 3 true 
function mh_dp:damage/attack
tag @s remove D_ZinogreHead