# This function was generated by ArmorstandAnimator
scoreboard players add #asa_zinogre_tick_current AsaMatrix 1
execute if score #asa_zinogre_tick_current AsaMatrix >= #asa_zinogre_tick_end AsaMatrix run function asa_animator:zinogre/anim/charge/keyframes/manager
function asa_animator:zinogre/anim/charge/events/manager
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
scoreboard players operation #asa_move_pos_x AsaMatrix = #asa_zinogre_move_pos_x AsaMatrix
scoreboard players operation #asa_move_pos_y AsaMatrix = #asa_zinogre_move_pos_y AsaMatrix
scoreboard players operation #asa_move_pos_z AsaMatrix = #asa_zinogre_move_pos_z AsaMatrix
function #asa_matrix:move
function asa_animator:zinogre/model

execute unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.5 ~ ~ ~