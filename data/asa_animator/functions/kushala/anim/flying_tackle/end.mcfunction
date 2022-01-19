scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmFlyTackle

# 状態取得
execute if score #mhdp_kushala_lv AsaMatrix matches 1.. run tag @s add KushalaLv1
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run tag @s add KushalaLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:kushala/flying/after_tackle
## 共通
    # 風弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyBreath
    # 竜巻ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyBreathT
    # 竜巻起こし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyTornado

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove KushalaLv1
tag @s remove KushalaLv2