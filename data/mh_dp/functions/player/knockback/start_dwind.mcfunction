
# 回避中
execute unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run tag @s add ApplyKnockback

execute if entity @s[tag=ApplyKnockback] run function mh_dp:player/knockback/start_dwind_
tag @s remove ApplyKnockback