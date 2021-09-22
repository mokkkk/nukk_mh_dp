# 動物の場合，体力回復
execute if entity @s[type=#asa_animator:food] run function asa_animator:reus/health/heal
# ダメージ
tag @s add D_ReusBite
function mh_dp:damage/attack
tag @s remove D_ReusBite
execute at @s run particle block bone_block ~ ~1 ~ 0 0 0 1 10
playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2
# 動物の場合，即死
execute if entity @s[type=#asa_animator:food] run kill @s