
# クエストランクによって分岐
execute if data storage mh_dp:settings Custom{QuestRank:0} run function mh_dp:spawn/select/normal
execute if data storage mh_dp:settings Custom{QuestRank:1} run function mh_dp:spawn/select/hard
