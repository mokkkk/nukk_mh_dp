# ダメージ
execute at @s run particle block bone_block ~ ~0.5 ~ 0 0 0 1 10
tag @s add D_DiablosBite
function mh_dp:damage/attack
tag @s remove D_DiablosBite