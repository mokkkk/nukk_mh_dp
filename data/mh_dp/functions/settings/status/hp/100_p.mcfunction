execute store result storage mh_dp:settings Temp int 1 run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
scoreboard players add #mhdp_hp_multiply AsaMatrix 100
execute if score #mhdp_hp_multiply AsaMatrix matches 1001.. run scoreboard players set #mhdp_hp_multiply AsaMatrix 1000
schedule function mh_dp:settings/ui/set_gamerule 2t
function mh_dp:settings/ui/show_setting_ui