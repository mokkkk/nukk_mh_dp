# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_bitan_anger/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^0.04
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0.04 ^-0.04 ^0.06
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/2
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^-0.001785714 ^0
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/3
execute if entity @s[scores={AsaMatrix=18..24}] run tp @s ^0 ^-0.001785715 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/4
execute if entity @s[scores={AsaMatrix=25..30}] run tp @s ^0 ^-0.002083334 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/5
execute if entity @s[scores={AsaMatrix=31..37}] run tp @s ^0 ^0.3053572 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/6
execute if entity @s[scores={AsaMatrix=38..44}] run tp @s ^-0.1428571 ^0.5714286 ^-0.1857143
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/7
execute if entity @s[scores={AsaMatrix=45..51}] run tp @s ^0.07142857 ^-0.4285714 ^-0.05714286
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/8
execute if entity @s[scores={AsaMatrix=52..58}] run tp @s ^0 ^-0.4642857 ^-0.03428572
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/9
execute if entity @s[scores={AsaMatrix=59..65}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/10
execute if entity @s[scores={AsaMatrix=66..72}] run tp @s ^0.07142857 ^0.3214286 ^-0.2228571
execute if entity @s[scores={AsaMatrix=73}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/11
execute if entity @s[scores={AsaMatrix=73..79}] run tp @s ^-0.1428571 ^0.5714286 ^0.2571428
execute if entity @s[scores={AsaMatrix=80}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/12
execute if entity @s[scores={AsaMatrix=80..86}] run tp @s ^0.07142857 ^-0.4285714 ^0
execute if entity @s[scores={AsaMatrix=87}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/13
execute if entity @s[scores={AsaMatrix=87..93}] run tp @s ^0 ^-0.4642857 ^-0.03428572
execute if entity @s[scores={AsaMatrix=94}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/14
execute if entity @s[scores={AsaMatrix=94..100}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=101}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/15
execute if entity @s[scores={AsaMatrix=101..105}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=106}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/16
execute if entity @s[scores={AsaMatrix=106..110}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=111}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/17
execute if entity @s[scores={AsaMatrix=111..120}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=121}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/18
execute if entity @s[scores={AsaMatrix=121..125}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=126}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/19
execute if entity @s[scores={AsaMatrix=126..130}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=131}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/20
execute if entity @s[scores={AsaMatrix=131..135}] run tp @s ^0.14 ^0.07 ^-0.172
execute if entity @s[scores={AsaMatrix=136}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/21
execute if entity @s[scores={AsaMatrix=136..140}] run tp @s ^0.02 ^0.02 ^-0.04000001 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=141}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/22
execute if entity @s[scores={AsaMatrix=141..146}] run tp @s ^-0.04166667 ^-0.01666667 ^-0.1666667 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=147}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/23
execute if entity @s[scores={AsaMatrix=147..155}] run tp @s ^-0.02777778 ^-0.01111111 ^-0.2777778 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=156}] run function asa_animator:narga/anim/tail_bitan_anger/keyframes/24
execute if entity @s[scores={AsaMatrix=156..160}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=161..}] run function asa_animator:narga/anim/tail_bitan_anger/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1..20}] run function asa_animator:narga/manager/ground
execute if entity @s[scores={AsaMatrix=1..48}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=32..50}] unless entity @e[distance=0..6,tag=NargaAttackTarget] at @s run tp @s ^ ^ ^0.7

execute if entity @s[scores={AsaMatrix=10}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=25}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.85
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:narga/manager/particle/jump

execute if entity @s[scores={AsaMatrix=39..58}] run function asa_animator:narga/anim/tail_bitan/events/particle_jump
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:narga/anim/tail_bitan_anger/events/particle_attack
execute if entity @s[scores={AsaMatrix=58}] run playsound entity.wither.break_block master @a ~ ~ ~ 2 0.8

execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=66..80}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=66..84}] unless entity @e[distance=0..6,tag=NargaAttackTarget] at @s run tp @s ^ ^ ^0.7
execute if entity @s[scores={AsaMatrix=74..92}] run function asa_animator:narga/anim/tail_bitan/events/particle_jump
execute if entity @s[scores={AsaMatrix=92}] run function asa_animator:narga/anim/tail_bitan/events/particle_attack
execute if entity @s[scores={AsaMatrix=92}] run playsound entity.wither.break_block master @a ~ ~ ~ 2 0.8

execute if entity @s[scores={AsaMatrix=104}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=124}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=134}] run playsound block.grass.break master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=134}] run particle block grass_block ^ ^ ^6 1 0.1 1 0 10

execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:narga/anim/tail_bitan/events/change_to_normal
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:narga/anim/tail_bitan/events/change_to_anger