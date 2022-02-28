# ダメージ
tag @s add D_RukoBreath
execute unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,Effects:[{Id:25b,Amplifier:18b,Duration:8,ShowParticles:0b}]}
function mh_dp:damage/attack
tag @s remove D_RukoBreath