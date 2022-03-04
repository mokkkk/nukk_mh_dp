
# 通知
    playsound entity.item.break master @s ~ ~ ~ 1 1
    tellraw @s {"text":"【武器の斬れ味が低下した！】"}

# 色変更
    function mh_dp:weapon/attack/sharpness/change_color