# ダメージ
tag @s add D_KushalaTornado
execute if entity @s[type=player] run function mh_dp:player/knockback/start_dwind
function mh_dp:damage/attack
tag @s remove D_KushalaTornado