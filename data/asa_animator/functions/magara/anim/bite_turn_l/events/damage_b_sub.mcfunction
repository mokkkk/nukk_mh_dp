# ダメージ
tag @s add D_MagaraBite
execute if entity @s[type=player] run function asa_animator:magara/manager/attack/virus
function mh_dp:damage/attack
tag @s remove D_MagaraBite