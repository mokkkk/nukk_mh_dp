# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/middle
# 移動
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDash
# 飛行開始
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFly
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBreath
# ジャンプ攻撃
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmJump
# チャージブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmCharge
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]