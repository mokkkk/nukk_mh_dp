execute unless entity @s[tag=Phase2] unless entity @s[tag=ActiveHead] run function asa_animator:brachyr/manager/bomb/large
execute unless entity @s[tag=Phase2] if entity @s[tag=ActiveHead] run function asa_animator:brachyr/manager/bomb/setter/set
execute if entity @s[tag=Phase2] run function asa_animator:brachyr/manager/bomb/setter/set_r
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5