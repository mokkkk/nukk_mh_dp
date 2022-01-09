# ダメージ
tag @s add D_DiablosHead
function mh_dp:damage/attack
tag @s remove D_DiablosHead
execute unless entity @s[scores={MhdpTAvoid=1..}] run effect give @s slowness 1 5 true