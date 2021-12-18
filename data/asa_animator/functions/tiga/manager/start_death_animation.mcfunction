scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=DestroyHead] run tag @s add DHead
function asa_animator:dyno/manager/model/change_to_normal_head
function asa_animator:dyno/manager/health/kill
function asa_animator:dyno/manager/remove_animation_tag
tag @s add AnmDeath