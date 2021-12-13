execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
gamerule sendCommandFeedback false
data modify storage mh_dp:settings Custom.EnableBossSpawn set value false
tellraw @a {"text":"【MH_DP：ボスモンスターの出現を無効にしました】"}
schedule function mh_dp:settings/ui/set_gamerule 2t replace
function mh_dp:settings/ui/show_setting_ui