
# アニメーション遷移
# execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/change

# 地上
# 待機
# function asa_animator:diablos/stay/main

# ボイス
# function asa_animator:diablos/voice/main

# タックル
function asa_animator:diablos/tackle/main

# 頭振り回し
# function asa_animator:diablos/attack/main

# 尻尾回転
# function asa_animator:diablos/tail/main

# ジャンプ攻撃
# function asa_animator:diablos/jump/main

# 突進開始（構え）
# function asa_animator:diablos/startdash1/main
# 突進開始（足踏み）

# 突進
# function asa_animator:diablos/dash/main
# 突進後角振り上げ
# function asa_animator:diablos/dashattack/main

# 当たり判定位置
# execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:reus/manager/despawn