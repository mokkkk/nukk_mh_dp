
execute at @e[type=armor_stand,tag=TeoParts,tag=HeadU] positioned ^ ^1.4 ^0.5 run particle crit ~ ~ ~ 0 0 0 1 20
playsound item.flintandsteel.use master @a ~ ~ ~ 2 0.5
playsound item.flintandsteel.use master @a ~ ~ ~ 2 0.7
schedule function asa_animator:teo/manager/bomb/ingite_ 10t replace