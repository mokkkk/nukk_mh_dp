
# 状態取得
execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run tag @s add NazutiLv1
execute if score #mhdp_nazuti_lv AsaMatrix matches 2.. run tag @s add NazutiLv2
function asa_animator:nazuti/manager/change_normal/_/tail_check
# ランダム
loot spawn ~ 0 ~ loot asa_animator:nazuti/normal/near
## 共通
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:nazuti/manager/change_normal/_/claw
    # 車庫入れ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMoveB
    # 舌伸ばし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:nazuti/manager/change_normal/_/tongue
    # 舌薙ぎ払い
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:nazuti/manager/change_normal/_/tongue_large
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmDashStart
    # ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:nazuti/manager/change_normal/_/press
    # 薙ぎ払い頭突き
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:nazuti/manager/change_normal/_/head
    # Bコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:nazuti/manager/change_combo/start_b
    # 毒霧ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:nazuti/manager/change_normal/_/breathf
    # 尻尾叩きつけ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run tag @s add AnmTail
    # 毒霧展開（後方）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run tag @s add AnmFogB
## LV1 -
    # 飛行ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run tag @s add AnmBreathJ
    # Eコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run function asa_animator:nazuti/manager/change_combo/start_e
## Lv2 -
    # 毒弾ブレス乱射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:14}}}] run tag @s add AnmBreathU
    # 縦薙ぎ毒霧ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:15}}}] run tag @s add AnmBreathFV

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove NazutiLv1
tag @s remove NazutiLv2
tag @s remove IsBack