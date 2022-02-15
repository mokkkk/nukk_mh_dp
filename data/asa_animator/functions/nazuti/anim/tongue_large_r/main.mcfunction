# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/tongue_large_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/3
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/4
execute if entity @s[scores={AsaMatrix=21..23}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/5
execute if entity @s[scores={AsaMatrix=24..26}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/6
execute if entity @s[scores={AsaMatrix=27..30}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/7
execute if entity @s[scores={AsaMatrix=31..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/8
execute if entity @s[scores={AsaMatrix=36..37}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/9
execute if entity @s[scores={AsaMatrix=38..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/10
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/11
execute if entity @s[scores={AsaMatrix=46..50}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/12
execute if entity @s[scores={AsaMatrix=51..55}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:nazuti/anim/tongue_large_r/keyframes/13
execute if entity @s[scores={AsaMatrix=56..70}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=71..}] run function asa_animator:nazuti/anim/tongue_large_r/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=6}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=11}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..20}] at @s run function asa_animator:nazuti/manager/rotate
execute if entity @s[scores={AsaMatrix=34}] run summon marker ~ ~ ~ {Tags:["NazutiTongue"]}
execute if entity @s[scores={AsaMatrix=35}] run playsound entity.llama.spit master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=35}] run playsound entity.llama.spit master @a ~ ~ ~ 3 0.8
execute if entity @s[scores={AsaMatrix=34}] as @e[type=marker,tag=NazutiTongue] run tp @s ~ ~ ~ ~30 0
execute if entity @s[scores={AsaMatrix=35..40}] run function asa_animator:nazuti/anim/tongue_large_l/events/start_l
execute if entity @s[scores={AsaMatrix=37}] positioned ^ ^1 ^9 run function asa_animator:nazuti/anim/tongue_large_l/events/damage
execute if entity @s[scores={AsaMatrix=45}] run playsound entity.llama.spit master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=45}] run playsound entity.llama.spit master @a ~ ~ ~ 3 0.8
execute if entity @s[scores={AsaMatrix=41}] as @e[type=marker,tag=NazutiTongue] run tp @s ~ ~ ~ ~-30 0
execute if entity @s[scores={AsaMatrix=45..50}] run function asa_animator:nazuti/anim/tongue_large_l/events/start_r
execute if entity @s[scores={AsaMatrix=47}] positioned ^ ^1 ^9 run function asa_animator:nazuti/anim/tongue_large_l/events/damage

execute if entity @s[scores={AsaMatrix=51}] run kill @e[tag=NazutiTongue]