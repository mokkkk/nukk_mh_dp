

# 属性やられリセット
scoreboard players set @s MhdpBlightFire 0
tag @s remove BlightFire
scoreboard players set @s MhdpBlightDragon 0
tag @s remove BlightDragon

# ノックバックリセット
function mh_dp:player/knockback/end

tag @s remove MhdpDeath
tag @s add MhdpRespawn
