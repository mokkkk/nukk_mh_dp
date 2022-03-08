
# ランダムなバフを付与
    loot spawn ~ 0 ~ loot mh_dp:charm/nazuti
# 攻撃
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run effect give @s strength 5 0
# 耐性
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run effect give @s resistance 5 0
# 再生能力
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run effect give @s regeneration 5 0
# 移動速度
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run effect give @s speed 5 0
# 跳躍力
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run effect give @s jump_boost 5 0
# 終了
    execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s