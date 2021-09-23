# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/fly
# 回り込み
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] if entity @e[tag=ReusAttackTarget,distance=0..40] run tag @s add AnmMoveF
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] unless entity @e[tag=ReusAttackTarget,distance=0..40] run tag @s add AnmBreathF
# 飛行開始
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBreathF
# 着地開始
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmEndFly
# チャージブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmChargeF
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]