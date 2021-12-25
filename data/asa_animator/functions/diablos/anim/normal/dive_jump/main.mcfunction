# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/normal/dive_jump/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^4 ^0.2
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0.1 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/3
execute if entity @s[scores={AsaMatrix=16..25}] run tp @s ^0 ^-0.15 ^0.1
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/4
execute if entity @s[scores={AsaMatrix=26..35}] run tp @s ^0 ^ ^0.1
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/5
execute if entity @s[scores={AsaMatrix=36..45}] run tp @s ^0 ^ ^0.1
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/6
execute if entity @s[scores={AsaMatrix=46..60}] run tp @s ^0 ^-0.06666667 ^0
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/7
execute if entity @s[scores={AsaMatrix=61..66}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=67}] run function asa_animator:diablos/anim/normal/dive_jump/keyframes/8
execute if entity @s[scores={AsaMatrix=67..75}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=76..}] run function asa_animator:diablos/anim/normal/dive_jump/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 攻撃
execute if entity @s[scores={AsaMatrix=5}] as @e[type=armor_stand,tag=DiablosParts] run function asa_animator:diablos/anim/normal/dive/events/change_to_normal
execute if entity @s[scores={AsaMatrix=8}] positioned ~ ~3 ~ run function asa_animator:diablos/anim/normal/dive_jump/events/damage

# 位置決定
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:diablos/anim/normal/dive_jump/events/pos/set_pos

# 位置オフセット
execute if entity @s[scores={AsaMatrix=26..45}] run function asa_animator:diablos/anim/normal/dive_jump/events/pos/offset

# 効果音
execute if entity @s[scores={AsaMatrix=6}] run playsound entity.wither.break_block master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=25}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=45}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 3 0.7