scoreboard players set #mhdp_reus_actcount_phase AsaMatrix 0
scoreboard players set #mhdp_reus_actcount AsaMatrix 1

# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/flying/phase
# 床ドン
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyJump
# 地走り火炎
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyBreathC
# 着地
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmEndFly
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]