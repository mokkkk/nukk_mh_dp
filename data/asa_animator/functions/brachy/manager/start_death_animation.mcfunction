scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=DestroyHead] run tag @s add DHead
tag @s add DestroyHead
tag @s add DestroyArmL
tag @s add DestroyArmR
tag @s add DestroyTail
function asa_animator:brachy/manager/model/change_to_normal
function asa_animator:brachy/manager/health/kill
function asa_animator:brachy/manager/remove_animation_tag
tag @s add AnmDeath