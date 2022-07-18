
# 行動カウント増加
execute if entity @s[tag=!IsThunder] run scoreboard players add #mhdp_zinogre_actcount_charge AsaMatrix 1
execute if entity @s[tag=IsThunder] run scoreboard players add #mhdp_zinogre_actcount_thunder AsaMatrix 1

# 怒りカウント減少
    execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_zinogre_anger_count AsaMatrix 1

# 帯電行動
execute if entity @s[tag=!IsThunder] if score #mhdp_zinogre_actcount_charge AsaMatrix matches 6.. run function asa_animator:zinogre/manager/change_normal/sp_charge

# 帯電時大技
execute if entity @s[tag=IsThunder] if score #mhdp_zinogre_actcount_thunder AsaMatrix matches 12.. run function asa_animator:zinogre/manager/change_normal/sp_lhand

# 通常時
execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/change_normal/change