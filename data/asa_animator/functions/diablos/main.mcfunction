
# アニメーション遷移
# execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/change

# 地上
# 待機
function asa_animator:diablos/stay/main



# 当たり判定位置
# execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:reus/manager/despawn