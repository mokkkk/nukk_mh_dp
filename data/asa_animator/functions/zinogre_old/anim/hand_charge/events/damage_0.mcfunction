# 8 Damage
data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
function asa_animator:zinogre/anim/hand_charge/events/damage
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2