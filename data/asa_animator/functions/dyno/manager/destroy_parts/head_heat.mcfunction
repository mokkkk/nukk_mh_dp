playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
scoreboard players set @s AsaMatrix 0

function asa_animator:dyno/manager/remove_animation_tag
tag @s add AnmDHeadH