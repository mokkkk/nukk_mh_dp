


# Mhdp武器を持っている場合，weapon/sneak/main実行
    execute if predicate mh_dp:player/stat/has_mhdp_weapon run function mh_dp:weapon/sneak/main
# Mhdp武器を持っていない場合，タイマーリセット
    execute unless predicate mh_dp:player/stat/has_mhdp_weapon run scoreboard players set @s MhdpTSneak 0

# 解除
    execute if entity @s[predicate=!mh_dp:player/stat/sneak] run function mh_dp:player/sneak/end