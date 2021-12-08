
execute if predicate asa_animator:random/010 run tag @s add IsRare
execute unless entity @s[tag=IsRare] run function asa_animator:brachy/manager/n_summon
execute if entity @s[tag=IsRare] run function asa_animator:brachyr/manager/summon
tag @s remove IsRare