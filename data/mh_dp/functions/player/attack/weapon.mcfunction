
# 所持アイテム取得
    data modify storage mhdp: Temp.Weapon set from entity @s SelectedItem
# Mhdp武器を持っている場合，weapon/attack/on_attack実行
    execute if data storage mhdp: Temp.Weapon.tag{MhdpWeapon:1b} run function mh_dp:weapon/attack/on_attack

# 終了
    data remove storage mhdp: Temp.Weapon
    advancement revoke @s only mh_dp:player/attack_sword
