# ダメージ
tag @s add D_ReiaTail
function mh_dp:damage/attack
execute unless entity @s[scores={MhdpTAvoid=1..}] run effect give @s poison 15 0
tag @s remove D_ReiaTail