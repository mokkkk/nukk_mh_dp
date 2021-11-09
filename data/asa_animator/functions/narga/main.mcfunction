
# scoreboard players add #mhdp_narge_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:narga/manager/change

# 軸合わせ
# execute if entity @s[tag=AnmTurn] run function asa_animator:diablos/anim/normal/turn/main

# 通常時
execute unless entity @s[tag=AnmTurn] run function asa_animator:narga/anim/main

# 怒り開始
# execute if entity @s[tag=AnmAnger] run function asa_animator:diablos/anim/normal/anger/main

# 登場
# execute if entity @s[tag=AnmSummon] run function asa_animator:diablos/anim/normal/summon/main
# 死亡
# execute if entity @s[tag=AnmDeath] run function asa_animator:diablos/anim/normal/death/main

# 当たり判定位置
# execute unless entity @s[tag=InGround] as @e[type=slime,tag=DiablosParts] run function asa_animator:diablos/manager/health/pos
# execute if entity @s[tag=InGround] as @e[type=slime,tag=DiablosParts] run tp @s ~ ~10 ~

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:diablos/manager/despawn