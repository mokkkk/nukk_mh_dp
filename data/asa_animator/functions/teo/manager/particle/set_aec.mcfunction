playsound item.firecharge.use master @a ~ ~ ~ 2 1
particle lava ~ ~0.5 ~ 0.5 0 0.5 0 10
summon area_effect_cloud ~ ~0.5 ~ {Particle:"flame",Radius:1.5f,Duration:600,RadiusPerTick:0.0004f,DurationOnUse:-300,Tags:["TeoFlameAec"],Effects:[{Id:27b,Amplifier:77b,Duration:2,ShowParticles:0b}]}
execute as @e[type=area_effect_cloud,tag=TeoFlameAec,sort=nearest,limit=1] at @s run function asa_animator:zinogre/manager/check_ground