execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
gamerule sendCommandFeedback false
data modify storage mh_dp:settings Custom.QuestRank set value 1
tellraw @a {"text":"【MH_DP：クエストランクがハードに設定されました】"}
schedule function mh_dp:settings/ui/set_gamerule 2t replace
function mh_dp:settings/ui/show_setting_ui

鋼竜
・give @s clock{display:{Name:'{"text":"鋼の龍鱗","italic":false}',Lore:['{"text":"風を操る龍の鱗．","italic":false}','{"text":"武器の素材として使用される．","italic":false}']},CustomModelData:10019,MhdpID:20}
・give @s clock{display:{Name:'{"text":"鋼龍の堅殻","italic":false}',Lore:['{"text":"鋼龍の体を覆う金属質の甲殻．","italic":false}','{"text":"防具の素材として使用される．","italic":false}']},CustomModelData:10020,MhdpID:21}

炎王竜
・give @s clock{display:{Name:'{"text":"炎の龍鱗","italic":false}',Lore:['{"text":"炎を操る龍の鱗．","italic":false}','{"text":"武器の素材として使用される．","italic":false}']},CustomModelData:10022,MhdpID:23}
・give @s clock{display:{Name:'{"text":"炎王龍の堅殻","italic":false}',Lore:['{"text":"王者を守る紅蓮の甲殻．","italic":false}','{"text":"防具の素材として使用される．","italic":false}']},CustomModelData:10023,MhdpID:24}

霞龍
・give @s clock{display:{Name:'{\"text\":"霞龍の尖爪","italic":false}',Lore:['{"text":"細く鋭い霞龍の爪．","italic":false}','{"text":"武器の素材として使用される．","italic":false}']},CustomModelData:10024,MhdpID:25}
・give @s clock{display:{Name:'{"text":"霞龍の上皮","italic":false}',Lore:['{"text":"不思議な触感をもつ霞龍の皮．","italic":false}','{"text":"防具の素材として使用される．","italic":false}']},CustomModelData:10025,MhdpID:26}

極龍
・give @s clock{display:{Name:'{"text":"極龍の鋭爪","italic":false}',Lore:['{"text":"鋼をも切り裂く極龍の爪．","italic":false}','{"text":"武器の素材として使用される．","italic":false}']},CustomModelData:10026,MhdpID:27}
・give @s clock{display:{Name:'{"text":"極龍の磁殻","italic":false}',Lore:['{"text":"磁力を帯びた極龍の甲殻．","italic":false}','{"text":"防具の素材として使用される．","italic":false}']},CustomModelData:10027,MhdpID:28}