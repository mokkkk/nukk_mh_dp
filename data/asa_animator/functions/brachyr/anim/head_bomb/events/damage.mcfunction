execute unless entity @s[tag=Phase2] unless entity @s[tag=ActiveHead] run function asa_animator:brachyr/anim/head_bomb/events/damage_n
execute unless entity @s[tag=Phase2] if entity @s[tag=ActiveHead] run function asa_animator:brachyr/anim/head_bomb/events/damage_a
execute if entity @s[tag=Phase2] run function asa_animator:brachyr/anim/head_bomb/events/damage_r