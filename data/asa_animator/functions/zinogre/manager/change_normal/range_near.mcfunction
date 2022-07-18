
# 状態取得
    function asa_animator:zinogre/manager/check_pos/back
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/near
## 共通
    # お手
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:zinogre/manager/change_normal/_/hand
    # ヘッドバット
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:zinogre/manager/change_normal/_/head
    # バックステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBStep
    # サイドタックル
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:zinogre/manager/change_normal/_/tackle
    # ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmPress
    # 尻尾叩きつけ（前）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmTailF
    # 尻尾叩きつけ（後）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmTailB
    # 尻尾薙ぎ払い
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:zinogre/manager/change_normal/_/tailw
    # サマーソルト
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:zinogre/manager/change_normal/_/sault
## 超帯電
    # チャージお手
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run function asa_animator:zinogre/manager/change_normal/_/chand
    # 回転爪
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run tag @s add AnmSClaw
    # 雷爪
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run function asa_animator:zinogre/manager/change_normal/_/lclaw

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove IsBack