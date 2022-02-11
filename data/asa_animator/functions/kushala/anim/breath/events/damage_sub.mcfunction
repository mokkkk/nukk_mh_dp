# ダメージ
tag @s add D_KushalaBreath
execute if entity @s[type=player] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run function mh_dp:player/knockback/start_dwind
function mh_dp:damage/attack
tag @s remove D_KushalaBreath