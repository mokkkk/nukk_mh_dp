
# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:diablos/manager/change

# 通常時
execute unless entity @s[tag=IsAnger] run function asa_animator:diablos/anim/main_normal

# 登場
# execute if entity @s[tag=AnmSummon] run function asa_animator:diablos/summon/main
# 威嚇
# execute if entity @s[tag=AnmVoice] run function asa_animator:diablos/voice/main
# 死亡
# execute if entity @s[tag=AnmDeath] run function asa_animator:diablos/death/main

# 当たり判定位置
# execute as @e[type=slime,tag=DiablosParts] run function asa_animator:diablos/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:diablos/manager/despawn