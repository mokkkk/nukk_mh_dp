particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute unless entity @s[tag=Phase2] run function asa_animator:brachyr/manager/bomb/large
execute if entity @s[tag=Phase2] run function asa_animator:brachyr/manager/bomb/red/set