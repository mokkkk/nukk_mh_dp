
scoreboard players add #mhdp_diablos_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:diablos/manager/change

# 軸合わせ
execute if entity @s[tag=AnmTurn] run function asa_animator:diablos/anim/normal/turn/main

# 通常時
execute unless entity @s[tag=AnmTurn] unless entity @s[tag=IsAnger] run function asa_animator:diablos/anim/normal/main
# 怒り時
execute unless entity @s[tag=AnmTurn] if entity @s[tag=IsAnger] run function asa_animator:diablos/anim/anger/main

# 怒り開始
execute if entity @s[tag=AnmAnger] run function asa_animator:diablos/anim/normal/anger/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:diablos/anim/normal/summon/main
# 死亡
execute if entity @s[tag=AnmDeath] run function asa_animator:diablos/anim/normal/death/main
# 頭部位破壊
execute if entity @s[tag=AnmDHead] run function asa_animator:diablos/anim/destroy_head/main
# 胴体部位破壊
execute if entity @s[tag=AnmDBody] run function asa_animator:diablos/anim/destroy_body/main
# 尻尾部位破壊
execute if entity @s[tag=AnmDTail] run function asa_animator:diablos/anim/destroy_tail/main

# 当たり判定位置
execute unless entity @s[tag=InGround] as @e[type=slime,tag=DiablosParts] run function asa_animator:diablos/manager/health/pos
execute if entity @s[tag=InGround] as @e[type=slime,tag=DiablosParts] run tp @s ~ ~10 ~

# デスポーン
execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:diablos/manager/despawn