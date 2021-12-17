# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/stay/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/stay/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^0.16
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:tiga/anim/stay/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:tiga/anim/stay/keyframes/2
execute if entity @s[scores={AsaMatrix=13..17}] run tp @s ^0 ^-0.02 ^-0.08
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:tiga/anim/stay/keyframes/3
execute if entity @s[scores={AsaMatrix=18..30}] run tp @s ^0 ^0.007692308 ^-0.01538462
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:tiga/anim/stay/keyframes/4
execute if entity @s[scores={AsaMatrix=31..42}] run tp @s ^0 ^0 ^0.008333334
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:tiga/anim/stay/keyframes/5
execute if entity @s[scores={AsaMatrix=43..46}] run tp @s ^0 ^0 ^0.025
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:tiga/anim/stay/keyframes/6
execute if entity @s[scores={AsaMatrix=47..50}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:tiga/anim/stay/keyframes/7
execute if entity @s[scores={AsaMatrix=51..57}] run tp @s ^0 ^0 ^0.01428571
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:tiga/anim/stay/keyframes/8
execute if entity @s[scores={AsaMatrix=58..61}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=62}] run function asa_animator:tiga/anim/stay/keyframes/9
execute if entity @s[scores={AsaMatrix=62..65}] run tp @s ^0 ^0 ^0.025
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:tiga/anim/stay/keyframes/10
execute if entity @s[scores={AsaMatrix=66..73}] run tp @s ^0 ^0 ^0.0125
execute if entity @s[scores={AsaMatrix=74}] run function asa_animator:tiga/anim/stay/keyframes/11
execute if entity @s[scores={AsaMatrix=74..85}] run tp @s ^0 ^-0.008333334 ^-0.04166667
execute if entity @s[scores={AsaMatrix=86..}] run function asa_animator:tiga/anim/stay/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model
