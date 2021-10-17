
# タイマー増加
scoreboard players add #mhdp_reus_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/change

# 待機
execute if predicate asa_animator:reus/stay unless entity @s[tag=IsFlying] run function asa_animator:reus/anim/stay/main
# execute if predicate asa_animator:reus/stay if entity @s[tag=IsFlying] run function asa_animator:reus/normal/flying_stay/main

# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:reus/anim/tail_spin/main

# 地上床ドン
execute if entity @s[tag=AnmJump] run function asa_animator:reus/anim/jump/main

# ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:reus/anim/breath/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:reus/anim/move/main

# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:reus/anim/bite/main

# 地走り火炎
execute if entity @s[tag=AnmChargeF] run function asa_animator:reus/anim/flying_breath_charge/main

# 登場
# execute if entity @s[tag=AnmSummon] run function asa_animator:reus/normal/flying_summon/main
# 威嚇
# execute if entity @s[tag=AnmVoice] run function asa_animator:reus/normal/voice/main
# 死亡
# execute if entity @s[tag=AnmDeath] run function asa_animator:reus/normal/death/main

# 怒り遷移
# execute if entity @s[tag=AnmAnger] run function asa_animator:reus/normal/anger/main

# 当たり判定位置
# execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:reus/manager/despawn