execute unless entity @s[tag=Phase2] unless entity @s[tag=ActiveArmL] run function asa_animator:brachyr/manager/bomb/large
execute unless entity @s[tag=Phase2] if entity @s[tag=ActiveArmL] run function asa_animator:brachyr/manager/bomb/head/set
execute if entity @s[tag=Phase2] run function asa_animator:brachyr/manager/bomb/red/set