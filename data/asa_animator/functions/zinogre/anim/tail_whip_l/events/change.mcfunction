scoreboard players set @s AsaMatrix 0
tag @s remove AnmTailWL
tag @s remove AnmTailWR

# 始動設定
    execute if predicate asa_animator:zinogre/starttags run tag @s add StartAnmTailW

# 始動：尻尾叩きつけ（前）
    execute if entity @s[tag=StartAnmTailF] run function asa_animator:zinogre/manager/change_normal/_/chand
# 始動：尻尾叩きつけ（後）
    execute if entity @s[tag=StartAnmTailB] run function asa_animator:zinogre/manager/change_normal/_/chand
# 始動：飛び掛かり
    execute if entity @s[tag=StartAnmJump] run function asa_animator:zinogre/manager/change_normal/_/chand

# 状態確認
    execute if entity @s[tag=StartAnmTailW] if entity @a[tag=ZinogreTarget,distance=..10] run tag @s add IsNear
# 近くにプレイヤーがいる場合，ターゲットをそのプレイヤーに移してタックル
    execute if entity @s[tag=IsNear] run tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget
    execute if entity @s[tag=IsNear] run tag @p[tag=ZinogreTarget] add ZinogreAttackTarget
    execute if entity @s[tag=IsNear] run function asa_animator:zinogre/manager/change_normal/_/tackle

# 始動：尻尾薙ぎ払い
    execute if entity @s[tag=StartAnmTailW] if predicate asa_animator:zinogre/stay run loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/tailw
## 共通
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
## 超帯電
    # 飛び掛かり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmJump

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s

# 終了
    tag @s remove IsNear