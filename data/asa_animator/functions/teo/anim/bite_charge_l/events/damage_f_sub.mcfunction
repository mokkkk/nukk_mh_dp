# ダメージ
tag @s add D_TeoFire
execute unless entity @s[scores={MhdpTDamage=1..}] run function mh_dp:damage/attack
tag @s remove D_TeoFire