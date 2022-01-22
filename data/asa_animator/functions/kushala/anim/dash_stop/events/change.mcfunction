scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashStop

# ランダム
loot spawn ~ 0 ~ loot asa_animator:kushala/normal/after_dash
## 共通
    # 噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:kushala/manager/change_normal/_/bite
    # 竜巻ブレス（着地）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBjbL
    # Eコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:kushala/manager/change_combo/start_e
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s