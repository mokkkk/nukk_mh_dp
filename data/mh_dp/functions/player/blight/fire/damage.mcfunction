# ダメージ
data modify storage score_damage: Argument set value {Damage:0.5f, BypassArmor:1b}
data merge storage mhdp: {Epf:1, NoDamageTime:1b}
tag @s add D_BlightFire
function score_damage_mhdp:api/attack
tag @s remove D_BlightFire
data modify storage mhdp: NoDamageTime set value 0b