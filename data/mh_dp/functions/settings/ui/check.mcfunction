
execute store result storage mh_dp:settings Temp int 1 run clear @s written_book{Mhdp:1b} 0
execute if data storage mh_dp:settings {Temp:1} run tag @s add MhdpHasBook