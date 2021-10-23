# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/breath_3/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/breath_3/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^-0.03 ^0.02
execute if score @s AsaMatrix matches 6 run function asa_animator:reia/anim/breath_3/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^0.05 ^-0.06
execute if score @s AsaMatrix matches 11 run function asa_animator:reia/anim/breath_3/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^0 ^0 ^-0.02
execute if score @s AsaMatrix matches 16 run function asa_animator:reia/anim/breath_3/keyframes/3
execute if score @s AsaMatrix matches 16..20 run tp @s ^0 ^-0.02 ^0.12
execute if score @s AsaMatrix matches 21 run function asa_animator:reia/anim/breath_3/keyframes/4
execute if score @s AsaMatrix matches 21..25 run tp @s ^0 ^0.02 ^-0.12
execute if score @s AsaMatrix matches 26 run function asa_animator:reia/anim/breath_3/keyframes/5
execute if score @s AsaMatrix matches 26..30 run tp @s ^0 ^-0.02 ^0.12
execute if score @s AsaMatrix matches 31 run function asa_animator:reia/anim/breath_3/keyframes/6
execute if score @s AsaMatrix matches 31..35 run tp @s ^0 ^0.02 ^-0.12
execute if score @s AsaMatrix matches 36 run function asa_animator:reia/anim/breath_3/keyframes/7
execute if score @s AsaMatrix matches 36..40 run tp @s ^0 ^-0.02 ^0.12
execute if score @s AsaMatrix matches 41 run function asa_animator:reia/anim/breath_3/keyframes/8
execute if score @s AsaMatrix matches 41..60 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 61 run function asa_animator:reia/anim/breath_3/keyframes/9
execute if score @s AsaMatrix matches 61..70 run tp @s ^0 ^0 ^-0.03
execute if score @s AsaMatrix matches 71.. run function asa_animator:reia/anim/breath_3/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

# 敵を向く
execute if score @s AsaMatrix matches 1..12 run function asa_animator:reia/manager/rotate

# 発射位置決定
execute if score @s AsaMatrix matches 13 run summon marker ^ ^0.7 ^8 {Tags:["ReiaBreathTarget"]}
execute if score @s AsaMatrix matches 13 unless entity @e[distance=0..8,tag=ReiaAttackTarget] at @e[tag=ReiaAttackTarget,limit=1] run tp @e[type=marker,tag=ReiaBreathTarget] ~ ~ ~

# ブレス発射
execute if score @s AsaMatrix matches 21 positioned ^ ^1 ^5 facing entity @e[type=marker,tag=ReiaBreathTarget,limit=1] feet run function asa_animator:reia/anim/breath_3/events/shot
execute if score @s AsaMatrix matches 31 positioned ^ ^1 ^5 facing entity @e[type=marker,tag=ReiaBreathTarget,limit=1] feet positioned ^-2 ^ ^ rotated ~30 ~ run function asa_animator:reia/anim/breath_3/events/shot
execute if score @s AsaMatrix matches 41 positioned ^ ^1 ^5 facing entity @e[type=marker,tag=ReiaBreathTarget,limit=1] feet positioned ^2 ^ ^ rotated ~-30 ~ run function asa_animator:reia/anim/breath_3/events/shot
execute if score @s AsaMatrix matches 42 run kill @e[tag=ReiaBreathTarget]