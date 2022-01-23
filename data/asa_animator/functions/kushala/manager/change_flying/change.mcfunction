
# 状態取得
execute if entity @e[tag=KushalaAttackTarget,distance=0..12] run tag @s add KushalaNear
execute if score #mhdp_kushala_lv AsaMatrix matches 1.. run tag @s add KushalaLv1
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run tag @s add KushalaLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:kushala/flying/near
## 共通
    # バックステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyMoveB
    # 風弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyBreath
    # 竜巻ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyBreathT
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFlyTackle
    # Iコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:kushala/manager/change_combo/start_i
## LV1 -
    # 回り込み
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:kushala/manager/change_normal/_/flymove
    # 3連竜巻ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmFlyBreathT3
    # Jコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:kushala/manager/change_combo/start_j
    # Kコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:kushala/manager/change_combo/start_k
## Lv2 -

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove KushalaNear
tag @s remove KushalaLv1
tag @s remove KushalaLv2