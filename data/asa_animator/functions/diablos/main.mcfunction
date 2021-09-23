
# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:diablos/manager/change

# 地上
# 待機
execute if predicate asa_animator:diablos/stay run function asa_animator:diablos/stay/main

# タックル
execute if entity @s[tag=AnmTackle] run function asa_animator:diablos/tackle/main
# 頭振り回し
execute if entity @s[tag=AnmAttack] run function asa_animator:diablos/attack/main
# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:diablos/tail/main

# ジャンプ攻撃
execute if entity @s[tag=AnmJump] run function asa_animator:diablos/jump/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:diablos/move/main

# 突進開始（構え）
execute if entity @s[tag=AnmStartD1] run function asa_animator:diablos/startdash1/main
# 突進開始（足踏み）
execute if entity @s[tag=AnmStartD2] run function asa_animator:diablos/startdash2/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:diablos/dash/main
# 突進後角振り上げ
execute if entity @s[tag=AnmDashAttack] run function asa_animator:diablos/dashattack/main
# 突進後停止
execute if entity @s[tag=AnmDashStop] run function asa_animator:diablos/dashstop/main

# 潜航開始
execute if entity @s[tag=AnmDive] run function asa_animator:diablos/dive/main
# 飛び出し
execute if entity @s[tag=AnmDiveJump] run function asa_animator:diablos/divejump/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:diablos/summon/main
# 威嚇
execute if entity @s[tag=AnmVoice] run function asa_animator:diablos/voice/main
# 死亡
execute if entity @s[tag=AnmDeath] run function asa_animator:diablos/death/main

# 当たり判定位置
execute as @e[type=slime,tag=DiablosParts] run function asa_animator:diablos/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:diablos/manager/despawn