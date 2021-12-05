execute unless entity @s[tag=Phase2] unless entity @s[tag=ActiveTail] run function asa_animator:brachyr/anim/tail/events/damage_n
execute unless entity @s[tag=Phase2] if entity @s[tag=ActiveTail] run function asa_animator:brachyr/anim/tail/events/damage_a
execute if entity @s[tag=Phase2] run function asa_animator:brachyr/anim/tail/events/damage_r