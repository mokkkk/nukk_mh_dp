# ダメージ
data merge storage score_damage: {Damage:0.5f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
tag @s add D_BlightFire
function score_damage:api/attack
tag @s remove D_BlightFire