
# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:diablos/manager/change

# 軸合わせ
execute if entity @s[tag=AnmTurn] run function asa_animator:diablos/anim/normal/turn/main

# 通常時
execute unless entity @s[tag=AnmTurn] unless entity @s[tag=IsAnger] run function asa_animator:diablos/anim/normal/main
# 怒り時
execute unless entity @s[tag=AnmTurn] if entity @s[tag=IsAnger] run function asa_animator:diablos/anim/anger/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:diablos/anim/normal/summon/main
# 死亡
execute if entity @s[tag=AnmDeath] run function asa_animator:diablos/anim/normal/death/main

# 当たり判定位置
execute as @e[type=slime,tag=DiablosParts] run function asa_animator:diablos/manager/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:diablos/manager/despawn