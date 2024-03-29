# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/bite_2_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/bite_2_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:ruko/anim/bite_2_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..13}] run tp @s ^0 ^-0.0125 ^0.025 ~-8 ~
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:ruko/anim/bite_2_r/keyframes/2
execute if entity @s[scores={AsaMatrix=14..23}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:ruko/anim/bite_2_r/keyframes/3
execute if entity @s[scores={AsaMatrix=24..31}] run tp @s ^0.0125 ^0.0375 ^-0.025
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:ruko/anim/bite_2_r/keyframes/4
execute if entity @s[scores={AsaMatrix=32..37}] run tp @s ^-0.01666667 ^0.01666667 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:ruko/anim/bite_2_r/keyframes/5
execute if entity @s[scores={AsaMatrix=38..47}] run tp @s ^-0.01 ^-0.01 ^0
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:ruko/anim/bite_2_r/keyframes/6
execute if entity @s[scores={AsaMatrix=48..53}] run tp @s ^0.01666667 ^0.01666667 ^0
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:ruko/anim/bite_2_r/keyframes/7
execute if entity @s[scores={AsaMatrix=54..63}] run tp @s ^0 ^-0.03 ^0
execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:ruko/anim/bite_2_r/keyframes/8
execute if entity @s[scores={AsaMatrix=64..78}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=79..}] run function asa_animator:ruko/anim/bite_2_r/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1..6}] run function asa_animator:ruko/manager/rotate
execute if entity @s[scores={AsaMatrix=6..13}] if entity @e[tag=RukoAttackTarget,distance=..10] run tp @s ^0.4 ^ ^

execute if entity @s[scores={AsaMatrix=6}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=24}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=41}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:ruko/manager/particle/step

execute if entity @s[scores={AsaMatrix=24..30}] run function asa_animator:ruko/manager/rotate

execute if entity @s[scores={AsaMatrix=31..37}] unless entity @e[tag=RukoAttackTarget,distance=..6] at @s run tp @s ^ ^ ^1.2 ~4 ~
execute if entity @s[scores={AsaMatrix=38..46}] unless entity @e[tag=RukoAttackTarget,distance=..6] at @s run tp @s ^ ^ ^0.3 ~-3 ~
execute if entity @s[scores={AsaMatrix=47..53}] unless entity @e[tag=RukoAttackTarget,distance=..6] at @s run tp @s ^ ^ ^1.2 ~-3 ~
execute if entity @s[scores={AsaMatrix=54..63}] at @s run tp @s ^ ^ ^0.1 ~-3 ~

execute if entity @s[scores={AsaMatrix=33}] positioned ^ ^ ^6 run function asa_animator:ruko/anim/bite_2_l/events/damage
execute if entity @s[scores={AsaMatrix=50}] positioned ^ ^ ^6 run function asa_animator:ruko/anim/bite_2_l/events/damage

execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~0.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# コンボキャンセル
    execute unless predicate asa_animator:ruko/combo if entity @s[scores={AsaMatrix=58}] run function asa_animator:ruko/manager/cancel_animation