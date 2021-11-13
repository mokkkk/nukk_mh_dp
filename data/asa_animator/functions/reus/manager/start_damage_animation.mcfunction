scoreboard players set @s AsaMatrix 0
scoreboard players set #mhdp_reus_actcount_phase AsaMatrix 0
scoreboard players set #mhdp_reus_flying_damage AsaMatrix 0
function asa_animator:reus/manager/remove_animation_tag
tag @s remove IsFlying
tag @s add AnmFlyDamage