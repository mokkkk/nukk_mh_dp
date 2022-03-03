# ダメージ
tag @s add D_RukoBreath
execute if entity @s[type=player] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] at @s run function mh_dp:player/knockback/start_dwind
function mh_dp:damage/attack
tag @s remove D_RukoBreath