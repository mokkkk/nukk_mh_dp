execute if data storage mh_dp:settings {Temp:{Scf:1}} run gamerule sendCommandFeedback true
data modify storage mh_dp:settings Temp.Await set value false
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1