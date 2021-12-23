# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_bitan/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_bitan/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^0.04
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:narga/anim/tail_bitan/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0.04 ^-0.04 ^0.06
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:narga/anim/tail_bitan/keyframes/2
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^-0.001785714 ^0
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:narga/anim/tail_bitan/keyframes/3
execute if entity @s[scores={AsaMatrix=18..24}] run tp @s ^0 ^-0.001785715 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:narga/anim/tail_bitan/keyframes/4
execute if entity @s[scores={AsaMatrix=25..30}] run tp @s ^0 ^-0.002083334 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:narga/anim/tail_bitan/keyframes/5
execute if entity @s[scores={AsaMatrix=31..37}] run tp @s ^0 ^0.3053572 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:narga/anim/tail_bitan/keyframes/6
execute if entity @s[scores={AsaMatrix=38..44}] run tp @s ^-0.1428571 ^0.5714286 ^-0.1857143
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:narga/anim/tail_bitan/keyframes/7
execute if entity @s[scores={AsaMatrix=45..51}] run tp @s ^0.07142857 ^-0.4285714 ^-0.05714286
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:narga/anim/tail_bitan/keyframes/8
execute if entity @s[scores={AsaMatrix=52..58}] run tp @s ^0 ^-0.4714286 ^-0.02857142
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:narga/anim/tail_bitan/keyframes/9
execute if entity @s[scores={AsaMatrix=59..70}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:narga/anim/tail_bitan/keyframes/10
execute if entity @s[scores={AsaMatrix=71..75}] run tp @s ^0 ^0.01 ^-0.008000016
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:narga/anim/tail_bitan/keyframes/11
execute if entity @s[scores={AsaMatrix=76..80}] run tp @s ^0 ^-0.01 ^0.008000016
execute if entity @s[scores={AsaMatrix=81}] run function asa_animator:narga/anim/tail_bitan/keyframes/12
execute if entity @s[scores={AsaMatrix=81..90}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=91}] run function asa_animator:narga/anim/tail_bitan/keyframes/13
execute if entity @s[scores={AsaMatrix=91..95}] run tp @s ^0 ^0.01 ^-0.008000016
execute if entity @s[scores={AsaMatrix=96}] run function asa_animator:narga/anim/tail_bitan/keyframes/14
execute if entity @s[scores={AsaMatrix=96..100}] run tp @s ^0 ^-0.01 ^0.008000016
execute if entity @s[scores={AsaMatrix=101}] run function asa_animator:narga/anim/tail_bitan/keyframes/15
execute if entity @s[scores={AsaMatrix=101..105}] run tp @s ^0.14 ^0.08000001 ^-0.02000001
execute if entity @s[scores={AsaMatrix=106}] run function asa_animator:narga/anim/tail_bitan/keyframes/16
execute if entity @s[scores={AsaMatrix=106..109}] run tp @s ^0.025 ^0.025 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=110}] run function asa_animator:narga/anim/tail_bitan/keyframes/17
execute if entity @s[scores={AsaMatrix=110..116}] run tp @s ^-0.03571429 ^-0.01428571 ^-0.2857143 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=117}] run function asa_animator:narga/anim/tail_bitan/keyframes/18
execute if entity @s[scores={AsaMatrix=117..125}] run tp @s ^-0.02777778 ^-0.01111111 ^-0.2777778 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=126}] run function asa_animator:narga/anim/tail_bitan/keyframes/19
execute if entity @s[scores={AsaMatrix=126..130}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=131..}] run function asa_animator:narga/anim/tail_bitan/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1..20}] run function asa_animator:narga/manager/ground
execute if entity @s[scores={AsaMatrix=1..48}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=32..50}] unless entity @e[distance=0..6,tag=NargaAttackTarget] at @s run tp @s ^ ^ ^0.7

execute if entity @s[scores={AsaMatrix=10}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=25}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.85
execute if entity @s[scores={AsaMatrix=36}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=36}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 10

execute if entity @s[scores={AsaMatrix=58}] run playsound entity.wither.break_block master @a ~ ~ ~ 2 0.8
execute if entity @s[scores={AsaMatrix=74}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=94}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=94}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=101}] run playsound block.grass.break master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=101}] run particle block grass_block ^ ^ ^6 1 0.1 1 0 10

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_bitan/events/change_to_anger
execute if entity @s[scores={AsaMatrix=111}] run function asa_animator:narga/anim/tail_bitan/events/change_to_normal

execute if entity @s[scores={AsaMatrix=39..58}] run function asa_animator:narga/anim/tail_bitan/events/particle_jump
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:narga/anim/tail_bitan/events/particle_attack