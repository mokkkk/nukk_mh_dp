# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/test/start
execute if entity @s[scores={AsaMatrix=1..}] run function asa_animator:magara/test/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model
