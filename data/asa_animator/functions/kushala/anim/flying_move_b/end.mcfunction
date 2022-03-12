scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmFlyMoveB

# ランダム
execute if predicate asa_animator:kushala/combo run loot spawn ~ 0 ~ loot asa_animator:kushala/flying/after_move
## 共通
    # 風弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyBreath
    # 竜巻ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyBreathT
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyTackle

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s