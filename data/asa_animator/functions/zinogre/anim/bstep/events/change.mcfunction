scoreboard players set @s AsaMatrix 0
tag @s remove AnmBStep
execute if predicate asa_animator:zinogre/starttags run tag @s add StartAnmBstep

# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/bstep
## 共通
    # 雷光弾
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmDashStart
    # 飛び掛かり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJump

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s