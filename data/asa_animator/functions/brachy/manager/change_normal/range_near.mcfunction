
# 背後に敵がいる場合，一定確立で尻尾
 execute unless predicate asa_animator:random/070 run function asa_animator:brachy/manager/change_normal/_/tail_check

# ランダム
execute unless entity @s[tag=AnmTail] run loot spawn ~ 0 ~ loot asa_animator:brachy/normal/near

# 叩きつけパンチ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:brachy/manager/change_normal/_/punch_r
# フック
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:brachy/manager/change_normal/_/hook
# 叩きつけ頭突き
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmHeadBomb
# 回り込み
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:brachy/manager/change_normal/_/turn
# コンボA
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:brachy/manager/change_normal/combo/a_start
# コンボB
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:brachy/manager/change_normal/combo/b_start
# コンボC
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:brachy/manager/change_normal/combo/c_start
# コンボD
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:brachy/manager/change_normal/combo/d_start
# 移動コンボ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:brachy/manager/change_normal/combo/m_start
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s