SELECT (SELECT COUNT(CardID) FROM cards WHERE FighterID=1 AND CardRarity=1) AS KazuyaTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=1 AND CardRarity=4) AS KazuyaSRTotal,
       
       (SELECT COUNT(CardID) FROM cards WHERE FighterID=2 AND CardRarity=1) AS PaulTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=2 AND CardRarity=4) AS PaulSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=3 AND CardRarity=1) AS LawTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=3 AND CardRarity=4) AS LawSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=4 AND CardRarity=1) AS PandaTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=4 AND CardRarity=4) AS PandaSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=5 AND CardRarity=1) AS YoshimitsuTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=5 AND CardRarity=4) AS YoshimitsuSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=6 AND CardRarity=1) AS XiaoyuTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=6 AND CardRarity=4) AS XiaoyuSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=7 AND CardRarity=1) AS NinaTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=7 AND CardRarity=4) AS NinaSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=8 AND CardRarity=1) AS LiliTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=8 AND CardRarity=4) AS LiliSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=9 AND CardRarity=1) AS HeihachiTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=9 AND CardRarity=4) AS HeihachiSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=10 AND CardRarity=1) AS HwoarangTotal,
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=10 AND CardRarity=4) AS HwoarangSRTotal,

       (SELECT COUNT(CardID) FROM cards WHERE FighterID=11 AND CardRarity=1) AS JinTotal
    -- (SELECT COUNT(CardID) FROM cards WHERE FighterID=11 AND CardRarity=3) AS JinSRTotal

FROM cards
LIMIT 1


SELECT COUNT(UC.CardID) AS UserTotal, F.FighterName FROM users_cards UC LEFT JOIN cards C ON C.CardID = UC.CardID LEFT JOIN fighters F ON F.FighterID = UC.FighterID WHERE UC.FighterID=4 AND C.CardRarity=1  

SELECT F.FighterName, C.CardName, CR.RarityDescr, YN.YN_Descr IsUnique, YN.YN_Descr IsLimited, UC.CardCount
FROM users_cards UC
LEFT JOIN fighters F ON UC.FighterID = F.FighterID
LEFT JOIN cards C ON UC.CardID = C.CardID
LEFT JOIN card_rarity CR ON CR.RarityID = C.CardRarity
LEFT JOIN yes_no YN ON YN.ID = C.IsUnique
LEFT JOIN yes_no YN2 ON YN2.ID = C.IsLimited
WHERE UC.uid = 35


-- SHOW VARIABLES LIKE "character_set_database"
-- ! SHOW VARIABLES LIKE "character_set_client"
SHOW VARIABLES LIKE "character_set_connection"

-- SHOW VARIABLES LIKE "character_set_filesystem"
-- SHOW VARIABLES LIKE "character_set_results"
-- SHOW VARIABLES LIKE "character_set_server"
-- SHOW VARIABLES LIKE "character_set_system"
-- SHOW VARIABLES LIKE "character_sets_dir"
