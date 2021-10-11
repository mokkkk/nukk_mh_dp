
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/far
# 雷光弾
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmJumpAttack
# 充電
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] if score #asa_zinogre_charge AsaMatrix matches ..1 run tag @s add AnmCharge
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] if score #asa_zinogre_charge AsaMatrix matches 2.. run tag @s add AnmChargeE
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]