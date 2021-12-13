execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
gamerule sendCommandFeedback false
scoreboard players add #mhdp_attack_multiply AsaMatrix 100
execute if score #mhdp_attack_multiply AsaMatrix matches 1001.. run scoreboard players set #mhdp_attack_multiply AsaMatrix 1000
schedule function mh_dp:settings/ui/set_gamerule 2t replace
function mh_dp:settings/ui/show_setting_ui