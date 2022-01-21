scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmStepTL

# ランダム
execute if predicate asa_animator:kushala/combo run loot spawn ~ 0 ~ loot asa_animator:kushala/normal/after_step_turn
## 共通
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:kushala/manager/change_normal/_/claw
    # 風弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBreath
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmDashStart
    # とびかかり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmJump
    # 落下ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:kushala/manager/change_normal/_/breathu
    # チャージ風ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmBreathC

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s