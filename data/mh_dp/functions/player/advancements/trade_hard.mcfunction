
clear @s clock{display:{Name:'{"text":"ハードランク許可証","italic":false}',Lore:['{"text":"数多のモンスターを狩りし者へ送る．","italic":false}','{"text":"クエストランクの「ハード」を解禁する．","italic":false}']},CustomModelData:10510,MhdpID:99}

data modify storage mh_dp:status Flag.QuestRank set value true

tellraw @a {"text":"【クエストランクの設定が可能になった！より強力なモンスターと遭遇できるようになる！】"}
data modify storage mh_dp:settings Custom.QuestRank set value 1
tellraw @a {"text":"【MH_DP：クエストランクがハードに設定されました】"}

execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1

advancement revoke @s only mh_dp:player/trade_hard