scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
execute at @s align y run tp @s ~ ~5 ~
execute at @s run function asa_animator:zinogre/manager/check_ground
tag @s remove AnmMove

# 状態取得
execute if score #mhdp_ruko_lv AsaMatrix matches 1.. run tag @s add RukoLv1
execute if score #mhdp_ruko_lv AsaMatrix matches 2.. run tag @s add RukoLv2
# ランダム
execute if predicate asa_animator:ruko/combo run loot spawn ~ 0 ~ loot asa_animator:ruko/normal/after_move
## 共通
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:ruko/manager/change_normal/_/claw
    # 噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBite
    # ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmPress
## LV1 -
    # BJB
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBjb
## lv2 -
    # 拡散岩飛ばし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmStoneShotL0

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove RukoLv1
tag @s remove RukoLv2