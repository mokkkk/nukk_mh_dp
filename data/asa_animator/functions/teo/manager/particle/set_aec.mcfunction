playsound item.firecharge.use master @a ~ ~ ~ 2 1
particle lava ~ ~0.5 ~ 0.5 0 0.5 0 10
summon area_effect_cloud ~ ~0.5 ~ {Particle:"flame",Radius:1.5f,Duration:600,DurationOnUse:-300,Tags:["TeoFlameAec"],Effects:[{Id:27b,Amplifier:77b,Duration:2,ShowParticles:0b}]}