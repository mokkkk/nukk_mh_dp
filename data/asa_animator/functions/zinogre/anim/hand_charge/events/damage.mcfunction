# 8 Damage
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..4] run function asa_animator:zinogre/anim/hand_2/events/damage_sub
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle sneeze ~ ~2 ~ 0.1 1 0.1 0.05 30