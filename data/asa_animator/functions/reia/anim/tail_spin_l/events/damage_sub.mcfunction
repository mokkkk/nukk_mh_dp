# ダメージ
tag @s add D_ReiaTail
execute unless entity @s[scores={MhdpTAvoid=1..}] run effect give @s poison 5 0
function mh_dp:damage/attack
tag @s remove D_ReiaTail