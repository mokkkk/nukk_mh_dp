# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/destroy_arm_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/destroy_arm_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^-0.2 ^0.12 ^0.08 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:tiga/anim/destroy_arm_l/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^-0.2 ^-0.26 ^0.08
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:tiga/anim/destroy_arm_l/keyframes/2
execute if entity @s[scores={AsaMatrix=11..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:tiga/anim/destroy_arm_l/keyframes/3
execute if entity @s[scores={AsaMatrix=26..40}] run tp @s ^0.06666667 ^0.04 ^-0.02666667
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:tiga/anim/destroy_arm_l/keyframes/4
execute if entity @s[scores={AsaMatrix=41..55}] run tp @s ^0.06666667 ^0.006666667 ^-0.02666667
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:tiga/anim/destroy_arm_l/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute if entity @s[scores={AsaMatrix=1}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=1}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=11}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7