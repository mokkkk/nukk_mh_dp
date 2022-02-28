
summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2b,Amplifier:1b,Duration:2,ShowParticles:0b}]}
summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:5b,Amplifier:1b,Duration:2,ShowParticles:0b}]}
execute unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~1 ~
execute if block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~ ~