-- Table: "cards"
-- Fields:
-- AutoKey,
-- FighterID,
-- CardID,
-- CardName,
-- CardRarity, 1 - бронза, 2 - серебро, 3 - золото, 4 - SR
-- IsLimited,
-- IsUnique,
-- CardType 0 - рука, 1 - нога, 2 - HP

INSERT INTO cards (FighterID, CardID, CardName, CardRarity, IsLimited, IsUnique, CardType) VALUES
-- KAZUYA -- id = 1; CardsNumber = 
(1, 36, 'Kazuya - I',                      1, false, false, 2),
(1, 37, 'Kazuya - I',                      2, false, false, 2),
(1, 38, 'Kazuya - I',                      3, false, false, 2),

-- SR HP --
(1, 39, 'Kazuya - II',                     4, false, false, 2),
-- --

(1, 40, 'Kazuya - III',                    1, false, false, 2),
(1, 41, 'Kazuya - III',                    2, false, false, 2),
(1, 42, 'Kazuya - III',                    3, false, false, 2),

(1, 57, 'Soul Thrust',                     1, false, false, 0),
(1, 58, 'Soul Thrust',                     2, false, false, 0),
(1, 59, 'Soul Thrust',                     3, false, false, 0),

(1, 60, 'Acute Pain',                      1, false, false, 0),
(1, 61, 'Acute Pain',                      2, false, false, 0),
(1, 62, 'Acute Pain',                      3, false, false, 0),

(1, 63, 'Engetsusen',                      1, false, false, 1),
(1, 64, 'Engetsusen',                      2, false, false, 1),
(1, 65, 'Engetsusen',                      3, false, false, 1),

(1, 66, 'Slaughter High Kick',             1, false, false, 1),
(1, 67, 'Slaughter High Kick',             2, false, false, 1),
(1, 68, 'Slaughter High Kick',             3, false, false, 1),

(1, 69, 'Lion Slayer',                     1, false, true, 0),
(1, 70, 'Lion Slayer',                     2, false, true, 0),
(1, 71, 'Lion Slayer',                     3, false, true, 0),

(1, 72, 'Oni Front Kick',                  1, false, false, 1),
(1, 73, 'Oni Front Kick',                  2, false, false, 1),
(1, 74, 'Oni Front Kick',                  3, false, false, 1),

(1, 75, 'Hell Lancer',                     1, false, false, 1),
(1, 76, 'Hell Lancer',                     2, false, false, 1),
(1, 77, 'Hell Lancer',                     3, false, false, 1),

(1, 78, 'Abolishing Fist',                 1, false, false, 0),
(1, 79, 'Abolishing Fist',                 2, false, false, 0),
(1, 80, 'Abolishing Fist',                 3, false, false, 0),

(1, 81, 'Sokushitsu Goda',                 1, false, false, 0),
(1, 82, 'Sokushitsu Goda',                 2, false, false, 0),
(1, 83, 'Sokushitsu Goda',                 3, false, false, 0),

(1, 84, "Demon's Wrath",                   1, false, false, 0),
(1, 85, "Demon's Wrath",                   2, false, false, 0),
(1, 86, "Demon's Wrath",                   3, false, false, 0),

(1, 87, 'Demon Scissors',                  1, false, false, 1),
(1, 88, 'Demon Scissors',                  2, false, false, 1),
(1, 89, 'Demon Scissors',                  3, false, false, 1),

(1, 90, 'Reign of Terror',                 1, false, false, 1),
(1, 91, 'Reign of Terror',                 2, false, false, 1),
(1, 92, 'Reign of Terror',                 3, false, false, 1),

(1, 93, 'Kumo Kiri',                       1, false, false, 0),
(1, 94, 'Kumo Kiri',                       2, false, false, 0),
(1, 95, 'Kumo Kiri',                       3, false, false, 0),

(1, 96, 'Searing Edge',                    1, false, false, 1),
(1, 97, 'Searing Edge',                    2, false, false, 1),
(1, 98, 'Searing Edge',                    3, false, false, 1),

(1, 99, 'Rising Sun',                      1, false, false, 1),
(1, 100, 'Rising Sun',                     2, false, false, 1),
(1, 101, 'Rising Sun',                     3, false, false, 1),

(1, 102, 'Skull Smash',                    1, false, false, 0),
(1, 103, 'Skull Smash',                    2, false, false, 0),
(1, 104, 'Skull Smash',                    3, false, false, 0),

(1, 105, 'Demon Slayer',                   1, false, false, 0),
(1, 106, 'Demon Slayer',                   2, false, false, 0),
(1, 107, 'Demon Slayer',                   3, false, false, 0),

(1, 108, 'Stature Smash',                  1, false, false, 1),
(1, 109, 'Stature Smash',                  2, false, false, 1),
(1, 110, 'Stature Smash',                  3, false, false, 1),

(1, 111, 'Double Back Fist',               1, false, true, 0),
(1, 112, 'Double Back Fist',               2, false, true, 0),
(1, 113, 'Double Back Fist',               3, false, true, 0),

(1, 114, 'Shattered Spine',                1, false, false, 1),
(1, 115, 'Shattered Spine',                2, false, false, 1),
(1, 116, 'Shattered Spine',                3, false, false, 1),

(1, 117, 'Jaw Breaker',                    1, false, false, 0),
(1, 118, 'Jaw Breaker',                    2, false, false, 0),
(1, 119, 'Jaw Breaker',                    3, false, false, 0),

(1, 120, 'Oni Stomp',                      1, true, false, 1),
(1, 121, 'Oni Stomp',                      2, true, false, 1),
(1, 122, 'Oni Stomp',                      3, true, false, 1),

(1, 123, 'Devastator',                     1, false, true, 0),
(1, 124, 'Devastator',                     2, false, true, 0),
(1, 125, 'Devastator',                     3, false, true, 0),

(1, 126, 'Stonehead',                      1, false, true, 0),
(1, 127, 'Stonehead',                      2, false, true, 0),
(1, 128, 'Stonehead',                      3, false, true, 0),

(1, 129, 'Glorious Demon God Fist',        1, false, true, 0),
(1, 130, 'Glorious Demon God Fist',        2, false, true, 0),
(1, 131, 'Glorious Demon God Fist',        3, false, true, 0),

(1, 132, 'Entrails Smash',                 1, false, true, 0),
(1, 133, 'Entrails Smash',                 2, false, true, 0),
(1, 134, 'Entrails Smash',                 3, false, true, 0),

(1, 135, 'Wind God Fist',                  1, false, true, 0),
(1, 136, 'Wind God Fist',                  2, false, true, 0),
(1, 137, 'Wind God Fist',                  3, false, true, 0),

(1, 138, 'Dragon Uppercut',                1, false, false, 0),
(1, 139, 'Dragon Uppercut',                2, false, false, 0),
(1, 140, 'Dragon Uppercut',                3, false, false, 0),

(1, 141, 'Tsunami Kick',                   1, false, false, 1),
(1, 142, 'Tsunami Kick',                   2, false, false, 1),
(1, 143, 'Tsunami Kick',                   3, false, false, 1),

(1, 144, 'Twin Fang Double Kick',          1, false, false, 1),
(1, 145, 'Twin Fang Double Kick',          2, false, false, 1),
(1, 146, 'Twin Fang Double Kick',          3, false, false, 1),

(1, 147, 'Inferno',                        1, false, false, 0),
(1, 148, 'Inferno',                        2, false, false, 0),
(1, 149, 'Inferno',                        3, false, false, 0),

-- SR --
(1, 150, 'Gates of Hell',                  4, false, false, 1),
(1, 151, 'Devil Fist',                     4, false, false, 0),
(1, 152, "Heaven's Door",                  4, false, false, 0),
(1, 153, 'Rampaging Demon',                4, false, false, 0),
(1, 828, 'Devil Blaster',                  4, false, false, 1),
(1, 1091, 'Left Splits Kick',              4, false, false, 1),
-- --

(1, 865, 'Demon God Fist',                 1, false, false, 0),
(1, 866, 'Demon God Fist',                 2, false, false, 0),
(1, 867, 'Demon God Fist',                 3, false, false, 0),

(1, 868, 'Agony Spear',                    1, false, false, 1),
(1, 869, 'Agony Spear',                    2, false, false, 1),
(1, 870, 'Agony Spear',                    3, false, false, 1),

(1, 871, 'Steel Pedal Drop',               1, false, true, 0),
(1, 872, 'Steel Pedal Drop',               2, false, true, 0),
(1, 873, 'Steel Pedal Drop',               3, false, true, 0),

(1, 874, 'Slaughter Hook',                 1, false, true, 0),
(1, 875, 'Slaughter Hook',                 2, false, true, 0),
(1, 876, 'Slaughter Hook',                 3, false, true, 0),

(1, 1032, 'Right Splits Kick',             1, false, false, 1),
(1, 1033, 'Right Splits Kick',             2, false, false, 1),
(1, 1034, 'Right Splits Kick',             3, false, false, 1),

(1, 1035, 'Lightning Screw Uppercut',      1, false, false, 0),
(1, 1036, 'Lightning Screw Uppercut',      2, false, false, 0),
(1, 1037, 'Lightning Screw Uppercut',      3, false, false, 0),

(1, 1082, 'Demon Cutter',                  1, false, false, 0),
(1, 1083, 'Demon Cutter',                  2, false, false, 0),
(1, 1084, 'Demon Cutter',                  3, false, false, 0),

(1, 1085, 'Sliding Low Kick',              1, false, false, 1),
(1, 1086, 'Sliding Low Kick',              2, false, false, 1),
(1, 1087, 'Sliding Low Kick',              3, false, false, 1),

(1, 1088, 'Impaling Knee Twin Thrust',     1, false, false, 0),
(1, 1089, 'Impaling Knee Twin Thrust',     2, false, false, 0),
(1, 1090, 'Impaling Knee Twin Thrust',     3, false, false, 0),

(1, 1206, 'Double Face Kick',              1, false, false, 1),
(1, 1207, 'Double Face Kick',              2, false, false, 1),
(1, 1208, 'Double Face Kick',              3, false, false, 1),

(1, 1209, 'Spinning Demon to Left Hook',   1, false, false, 0),
(1, 1210, 'Spinning Demon to Left Hook',   2, false, false, 0),
(1, 1211, 'Spinning Demon to Left Hook',   3, false, false, 0),

(1, 1212, 'Twin Pistons',                  1, false, false, 0),
(1, 1213, 'Twin Pistons',                  2, false, false, 0),
(1, 1214, 'Twin Pistons',                  3, false, false, 0),

(1, 1215, 'Tombstone Crusher',             1, false, false, 1),
(1, 1216, 'Tombstone Crusher',             2, true, false, 1),
(1, 1217, 'Tombstone Crusher',             3, true, false, 1),

(1, 1603, 'Flash Punch Combo',             1, false, false, 0),
(1, 1604, 'Flash Punch Combo',             2, false, false, 0),
(1, 1605, 'Flash Punch Combo',             3, false, false, 0),

(1, 1606, 'Senshinto',                     1, false, false, 1),
(1, 1607, 'Senshinto',                     2, false, false, 1),
(1, 1608, 'Senshinto',                     3, false, false, 1),

(1, 1609, 'Left Right Combo',              1, false, false, 0),
(1, 1610, 'Left Right Combo',              2, true, false, 0),
(1, 1611, 'Left Right Combo',              3, true, false, 0),

(1, 1612, 'Roundhouse to Triple Spin Kick',1, false, false, 1),
(1, 1613, 'Roundhouse to Triple Spin Kick',2, false, false, 1),
(1, 1614, 'Roundhouse to Triple Spin Kick',3, false, false, 1),

-- PAUL -- 2
-- SR HP --
(2, 1, 'Paul - I',                         4, false, false, 2),

(2, 2, 'Paul - II',                        1, false, false, 2),
(2, 3, 'Paul - II',                        2, false, false, 2),
(2, 4, 'Paul - II',                        3, false, false, 2),

(2, 5, 'Paul - III',                       1, false, false, 2),
(2, 6, 'Paul - III',                       2, false, false, 2),
(2, 7, 'Paul - III',                       3, false, false, 2),

(2, 542, 'Left Right Combo',               1, false, false, 0),
(2, 543, 'Left Right Combo',               2, false, false, 0),
(2, 544, 'Left Right Combo',               3, false, false, 0),

(2, 545, 'Shin Kick',                      1, false, false, 1),
(2, 546, 'Shin Kick',                      2, false, false, 1),
(2, 547, 'Shin Kick',                      3, false, false, 1),

(2, 548, 'Lights Out',                     1, false, false, 1),
(2, 549, 'Lights Out',                     2, false, false, 1),
(2, 550, 'Lights Out',                     3, false, false, 1),

(2, 551, 'Shoulder Tackle',                1, false, false, 0),
(2, 552, 'Shoulder Tackle',                2, false, false, 0),
(2, 553, 'Shoulder Tackle',                3, false, false, 0),

(2, 554, 'Rapid Fire to Lightning Bolt',   1, false, false, 1),
(2, 555, 'Rapid Fire to Lightning Bolt',   2, false, false, 1),
(2, 556, 'Rapid Fire to Lightning Bolt',   3, false, false, 1),

(2, 557, 'Neutron Bomb',                   1, false, false, 1),
(2, 558, 'Neutron Bomb',                   2, false, false, 1),
(2, 559, 'Neutron Bomb',                   3, false, false, 1),

(2, 560, 'Double Strike',                  1, false, false, 0),
(2, 561, 'Double Strike',                  2, false, false, 0),
(2, 562, 'Double Strike',                  3, false, false, 0),

(2, 563, 'Wrecking Ball',                  1, false, true, 0),
(2, 564, 'Wrecking Ball',                  2, false, true, 0),
(2, 565, 'Wrecking Ball',                  3, false, true, 0),

(2, 566, 'Leg Sweep',                      1, false, false, 1),
(2, 567, 'Leg Sweep',                      2, false, false, 1),
(2, 568, 'Leg Sweep',                      3, false, false, 1),

(2, 569, 'Flash Elbow',                    1, false, false, 0),
(2, 570, 'Flash Elbow',                    2, false, false, 0),
(2, 571, 'Flash Elbow',                    3, false, false, 0),

(2, 572, 'Hammer Punch',                   1, false, false, 0),
(2, 573, 'Hammer Punch',                   2, false, false, 0),
(2, 574, 'Hammer Punch',                   3, false, false, 0),

(2, 575, 'Phoenix Bone Breaker',           1, false, false, 0),
(2, 576, 'Phoenix Bone Breaker',           2, false, false, 0),
(2, 577, 'Phoenix Bone Breaker',           3, false, false, 0),

(2, 578, 'Burning Spear',                  1, false, false, 0),
(2, 579, 'Burning Spear',                  2, false, false, 0),
(2, 580, 'Burning Spear',                  3, false, false, 0),

(2, 581, 'Jab Roundhouse',                 1, false, false, 1),
(2, 582, 'Jab Roundhouse',                 2, false, false, 1),
(2, 583, 'Jab Roundhouse',                 3, false, false, 1),

(2, 584, 'Phoenix Smasher',                1, false, false, 0),
(2, 585, 'Phoenix Smasher',                2, false, false, 0),
(2, 586, 'Phoenix Smasher',                3, false, false, 0),

(2, 587, 'Rapid Fire',                     1, false, false, 0),
(2, 588, 'Rapid Fire',                     2, false, false, 0),
(2, 589, 'Rapid Fire',                     3, false, false, 0),

(2, 590, 'Mountain Raze',                  1, false, false, 1),
(2, 591, 'Mountain Raze',                  2, false, false, 1),
(2, 592, 'Mountain Raze',                  3, false, false, 1),

(2, 593, 'Thunder Palm',                   1, false, false, 0),
(2, 594, 'Thunder Palm',                   2, false, false, 0),
(2, 595, 'Thunder Palm',                   3, false, false, 0),

(2, 596, 'Pump In Pedal',                  1, false, false, 1),
(2, 597, 'Pump In Pedal',                  2, false, false, 1),
(2, 598, 'Pump In Pedal',                  3, false, false, 1),

(2, 599, 'Down Strike',                    1, false, true, 0),
(2, 600, 'Down Strike',                    2, false, true, 0),
(2, 601, 'Down Strike',                    3, false, true, 0),

(2, 602, 'Shredder',                       1, false, false, 1),
(2, 603, 'Shredder',                       2, false, false, 1),
(2, 604, 'Shredder',                       3, false, false, 1),

(2, 605, 'Quick PK Smash',                 1, false, false, 0),
(2, 606, 'Quick PK Smash',                 2, false, false, 0),
(2, 607, 'Quick PK Smash',                 3, false, false, 0),

(2, 608, 'Shoulder Smash',                 1, false, false, 0),
(2, 609, 'Shoulder Smash',                 2, false, false, 0),
(2, 610, 'Shoulder Smash',                 3, false, false, 0),

(2, 611, 'Phoenix Wings',                  1, false, false, 1),
(2, 612, 'Phoenix Wings',                  2, false, false, 1),
(2, 613, 'Phoenix Wings',                  3, false, false, 1),

(2, 614, 'Fall Away',                      1, false, true, 0),
(2, 615, 'Fall Away',                      2, false, true, 0),
(2, 616, 'Fall Away',                      3, false, true, 0),

(2, 617, 'Body blow',                      1, false, false, 0),
(2, 618, 'Body blow',                      2, false, false, 0),
(2, 619, 'Body blow',                      3, false, false, 0),

(2, 620, 'Thruster',                       1, false, true, 0),
(2, 621, 'Thruster',                       2, false, true, 0),
(2, 622, 'Thruster',                       3, false, true, 0),

(2, 623, 'Juggernaut',                     1, false, true, 0),
(2, 624, 'Juggernaut',                     2, false, true, 0),
(2, 625, 'Juggernaut',                     3, false, true, 0),

(2, 626, 'God Hammer Punch',               1, false, true, 0),
(2, 627, 'God Hammer Punch',               2, false, true, 0),
(2, 628, 'God Hammer Punch',               3, false, true, 0),

-- SR --
(2, 629, 'Incomplete Somersault',          4, false, false, 1),
(2, 631, 'Hammers of the Gods',            4, false, false, 0),
(2, 633, 'Kongo Blast',                    4, false, false, 0),
(2, 635, 'Rapid Fire to Smasher',          4, false, false, 0),
(2, 1121, 'Turn Thruster',                 4, false, false, 0),
-- --

(2, 996, 'Piston fire',                    1, false, true, 0),
(2, 997, 'Piston fire',                    2, false, true, 0),
(2, 998, 'Piston fire',                    3, false, true, 0),

(2, 999, 'The Boot',                       1, false, false, 1),
(2, 1000, 'The Boot',                      2, false, false, 1),
(2, 1001, 'The Boot',                      3, false, false, 1),

(2, 1002, 'Chest Crusher',                 1, false, false, 0),
(2, 1003, 'Chest Crusher',                 2, false, false, 0),
(2, 1004, 'Chest Crusher',                 3, false, false, 0),

(2, 1005, 'Foot Launch',                   1, false, false, 1),
(2, 1006, 'Foot Launch',                   2, false, false, 1),
(2, 1007, 'Foot Launch',                   3, false, false, 1),

(2, 1056, 'Ouha',                          1, false, false, 0),
(2, 1057, 'Ouha',                          2, false, false, 0),
(2, 1058, 'Ouha',                          3, false, false, 0),

(2, 1059, 'Double Hop Kick High',          1, false, false, 1),
(2, 1060, 'Double Hop Kick High',          2, false, false, 1),
(2, 1061, 'Double Hop Kick High',          3, false, false, 1),

(2, 1112, 'Hassou Strike',                 1, false, false, 0),
(2, 1113, 'Hassou Strike',                 2, false, false, 0),
(2, 1114, 'Hassou Strike',                 3, false, false, 0),

(2, 1115, 'Push Away',                     1, false, false, 0),
(2, 1116, 'Push Away',                     2, false, false, 0),
(2, 1117, 'Push Away',                     3, false, false, 0),

(2, 1118, 'Rubber Band Attack',            1, false, true, 0),
(2, 1119, 'Rubber Band Attack',            2, false, true, 0),
(2, 1120, 'Rubber Band Attack',            3, false, true, 0),

(2, 1170, 'Gunba',                         1, false, false, 0),
(2, 1171, 'Gunba',                         2, false, false, 0),
(2, 1172, 'Gunba',                         3, false, false, 0),

(2, 1173, 'Twist and Shout',               1, false, true, 0),
(2, 1174, 'Twist and Shout',               2, false, true, 0),
(2, 1175, 'Twist and Shout',               3, false, true, 0),

(2, 1176, 'Reverse PDK Combo',             1, false, false, 1),
(2, 1177, 'Reverse PDK Combo',             2, false, false, 1),
(2, 1178, 'Reverse PDK Combo',             3, false, false, 1),

(2, 1179, 'Gengetsu',                      1, false, false, 1),
(2, 1180, 'Gengetsu',                      2, false, false, 1),
(2, 1181, 'Gengetsu',                      3, false, false, 1),

(2, 1591, 'Birning Fist',                  1, false, true, 0),
(2, 1592, 'Birning Fist',                  2, false, true, 0),
(2, 1593, 'Birning Fist',                  3, false, true, 0),

(2, 1594, 'Piggyback Throw',               1, false, false, 0),
(2, 1595, 'Piggyback Throw',               2, false, false, 0),
(2, 1596, 'Piggyback Throw',               3, false, false, 0),

(2, 1597, 'Jab Sweep',                     1, false, false, 1),
(2, 1598, 'Jab Sweep',                     2, false, false, 1),
(2, 1599, 'Jab Sweep',                     3, false, false, 1),

(2, 1600, 'Double Hop Kick Low',           1, false, false, 1),
(2, 1601, 'Double Hop Kick Low',           2, false, false, 1),
(2, 1602, 'Double Hop Kick Low',           3, false, false, 1),

-- LAW -- 3
(3, 51, 'Law - II',                        1, false, false, 2),
(3, 52, 'Law - II',                        2, false, false, 2),
(3, 53, 'Law - II',                        3, false, false, 2),

(3, 54, 'Law - III',                       1, false, false, 2),
(3, 55, 'Law - III',                       2, false, false, 2),
(3, 56, 'Law - III',                       3, false, false, 2),

(3, 446, 'Machine Gun Arrow',              1, false, false, 0),
(3, 447, 'Machine Gun Arrow',              2, false, false, 0),
(3, 448, 'Machine Gun Arrow',              3, false, false, 0),

(3, 449, 'Quick Hook',                     1, false, false, 0),
(3, 450, 'Quick Hook',                     2, false, false, 0),
(3, 451, 'Quick Hook',                     3, false, false, 0),

(3, 452, 'Shaolin Spin Kicks',             1, false, true, 1),
(3, 453, 'Shaolin Spin Kicks',             2, false, true, 1),
(3, 454, 'Shaolin Spin Kicks',             3, false, true, 1),

(3, 455, 'Poison Arrow',                   1, false, false, 0),
(3, 456, 'Poison Arrow',                   2, false, false, 0),
(3, 457, 'Poison Arrow',                   3, false, false, 0),

(3, 458, 'Rave War Combo',                 1, false, false, 0),
(3, 459, 'Rave War Combo',                 2, false, false, 0),
(3, 460, 'Rave War Combo',                 3, false, false, 0),

(3, 461, 'Construct Kick',                 1, false, false, 1),
(3, 462, 'Construct Kick',                 2, false, false, 1),
(3, 463, 'Construct Kick',                 3, false, false, 1),

(3, 464, 'Dragon Dagger',                  1, false, false, 1),
(3, 465, 'Dragon Dagger',                  2, false, false, 1),
(3, 466, 'Dragon Dagger',                  3, false, false, 1),

(3, 467, 'Dragon Knuckle',                 1, false, false, 0),
(3, 468, 'Dragon Knuckle',                 2, false, false, 0),
(3, 469, 'Dragon Knuckle',                 3, false, false, 0),

(3, 470, "Dragon's Flight",                1, false, false, 1),
(3, 471, "Dragon's Flight",                2, true, false, 1),
(3, 472, "Dragon's Flight",                3, true, false, 1),

(3, 473, 'Tricky Trap',                    1, false, false, 0),
(3, 474, 'Tricky Trap',                    2, false, false, 0),
(3, 475, 'Tricky Trap',                    3, false, false, 0),

(3, 476, "Dragon's Fire",                  1, false, false, 0),
(3, 477, "Dragon's Fire",                  2, false, false, 0),
(3, 478, "Dragon's Fire",                  3, false, false, 0),

(3, 479, 'Shin Crusher',                   1, true, false, 1),
(3, 480, 'Shin Crusher',                   2, true, false, 1),
(3, 481, 'Shin Crusher',                   3, true, false, 1),

(3, 482, 'Dragon Back Blow',               1, false, true, 0),
(3, 483, 'Dragon Back Blow',               2, false, true, 0),
(3, 484, 'Dragon Back Blow',               3, false, true, 0),

(3, 485, 'Dragon Claw',                    1, false, true, 0),
(3, 486, 'Dragon Claw',                    2, false, true, 0),
(3, 487, 'Dragon Claw',                    3, false, true, 0),

(3, 488, 'Backflipper',                    1, true, false, 1),
(3, 489, 'Backflipper',                    2, true, false, 1),
(3, 490, 'Backflipper',                    3, true, false, 1),

(3, 491, "Dragon's Tail",                  1, false, true, 1),
(3, 492, "Dragon's Tail",                  2, false, true, 1),
(3, 493, "Dragon's Tail",                  3, false, true, 1),

(3, 494, 'Elbow Spring Kick',              1, false, false, 1),
(3, 495, 'Elbow Spring Kick',              2, false, false, 1),
(3, 496, 'Elbow Spring Kick',              3, false, false, 1),

(3, 497, 'Blackout',                       1, false, false, 0),
(3, 498, 'Blackout',                       2, false, false, 0),
(3, 499, 'Blackout',                       3, false, false, 0),

(3, 500, 'Dragon Junkyard Kick',           1, false, false, 1),
(3, 501, 'Dragon Junkyard Kick',           2, false, false, 1),
(3, 502, 'Dragon Junkyard Kick',           3, false, false, 1),

(3, 503, 'Junkyard Kick',                  1, false, false, 1),
(3, 504, 'Junkyard Kick',                  2, false, false, 1),
(3, 505, 'Junkyard Kick',                  3, false, false, 1),

(3, 506, 'Tricky Fist',                    1, false, false, 0),
(3, 507, 'Tricky Fist',                    2, false, false, 0),
(3, 508, 'Tricky Fist',                    3, false, false, 0),

(3, 509, 'Ab Cruncher',                    1, false, false, 1),
(3, 510, 'Ab Cruncher',                    2, false, false, 1),
(3, 511, 'Ab Cruncher',                    3, false, false, 1),

(3, 512, "Dragon's Descent",               1, false, false, 1),
(3, 513, "Dragon's Descent",               2, false, false, 1),
(3, 514, "Dragon's Descent",               3, false, false, 1),

(3, 515, 'Fury Fist Rush',                 1, false, true, 0),
(3, 516, 'Fury Fist Rush',                 2, false, true, 0),
(3, 517, 'Fury Fist Rush',                 3, false, true, 0),

(3, 518, 'Dragon Judgment',                1, false, true, 0),
(3, 519, 'Dragon Judgment',                2, false, true, 0),
(3, 520, 'Dragon Judgment',                3, false, true, 0),

(3, 521, 'Catapult Kick',                  1, false, true, 1),
(3, 522, 'Catapult Kick',                  2, false, true, 1),
(3, 523, 'Catapult Kick',                  3, false, true, 1),

(3, 524, 'Parry',                          1, false, false, 0),
(3, 525, 'Parry',                          2, false, false, 0),
(3, 526, 'Parry',                          3, false, false, 0),

(3, 527, 'Headlock Drop',                  1, false, false, 0),
(3, 528, 'Headlock Drop',                  2, true, false, 0),
(3, 529, 'Headlock Drop',                  3, true, false, 0),

(3, 530, 'Low Backhand to High Kick',      1, false, false, 0),
(3, 531, 'Low Backhand to High Kick',      2, false, false, 0),
(3, 532, 'Low Backhand to High Kick',      3, false, false, 0),

(3, 533, 'Blind Elbow Combo',              1, false, false, 0),
(3, 534, 'Blind Elbow Combo',              2, false, false, 0),
(3, 535, 'Blind Elbow Combo',              3, false, false, 0),

-- SR --
(3, 537, 'Dragon Storm',                   4, false, false, 0),
(3, 538, 'Headlock Punch',                 4, false, false, 1),
(3, 541, 'Tiger Fang',                     4, false, false, 1),
-- --

(3, 841, 'Wolf Fang',                      1, false, false, 1),
(3, 842, 'Wolf Fang',                      3, false, false, 1),
(3, 843, 'Wolf Fang',                      2, false, false, 1),

(3, 844, 'Dragon Roar',                    1, false, false, 0),
(3, 845, 'Dragon Roar',                    3, false, false, 0),
(3, 846, 'Dragon Roar',                    2, false, false, 0),

(3, 847, 'Flash Fist',                     1, false, true, 0),
(3, 848, 'Flash Fist',                     3, false, true, 0),
(3, 849, 'Flash Fist',                     2, false, true, 0),

(3, 850, 'Rainbow Kick',                   1, false, false, 1),
(3, 851, 'Rainbow Kick',                   3, true, true, 1),
(3, 852, 'Rainbow Kick',                   2, true, true, 1),

(3, 1062, 'Left Right Blazing Fist Combo', 1, false, false, 0),
(3, 1063, 'Left Right Blazing Fist Combo', 2, false, false, 0),
(3, 1064, 'Left Right Blazing Fist Combo', 3, false, false, 0),

(3, 1065, 'Cloud Gates',                   1, false, true, 0),
(3, 1066, 'Cloud Gates',                   2, false, true, 0),
(3, 1067, 'Cloud Gates',                   3, false, true, 0),

(3, 1122, 'Charge Power Punch',            1, false, false, 0),
(3, 1123, 'Charge Power Punch',            2, false, false, 0),
(3, 1124, 'Charge Power Punch',            3, false, false, 0),

(3, 1125, "Dragon's Fire II",              1, false, false, 0),
(3, 1126, "Dragon's Fire II",              2, false, false, 0),
(3, 1127, "Dragon's Fire II",              3, false, false, 0),

(3, 1128, 'Dragon Low to Hook Kick',       1, false, false, 1),
(3, 1129, 'Dragon Low to Hook Kick',       2, true, false, 1),
(3, 1130, 'Dragon Low to Hook Kick',       3, true, false, 1),

(3, 1218, 'Tricky Mid Kick',               1, false, false, 1),
(3, 1219, 'Tricky Mid Kick',               2, false, false, 1),
(3, 1220, 'Tricky Mid Kick',               3, false, false, 1),

(3, 1221, 'Left Right to Knee',            1, false, false, 1),
(3, 1222, 'Left Right to Knee',            2, false, false, 1),
(3, 1223, 'Left Right to Knee',            3, false, false, 1),

(3, 1224, 'Feint to Middle Kick',          1, false, true, 1),
(3, 1225, 'Feint to Middle Kick',          2, false, true, 1),
(3, 1226, 'Feint to Middle Kick',          3, false, true, 1),

(3, 1227, 'Dragon Knuckle Spin Kick',      1, false, false, 1),
(3, 1228, 'Dragon Knuckle Spin Kick',      2, false, false, 1),
(3, 1229, 'Dragon Knuckle Spin Kick',      3, false, false, 1),

(3, 1396, 'Left Right Dragon Fist',        1, false, false, 0),
(3, 1397, 'Left Right Dragon Fist',        2, false, false, 0),
(3, 1398, 'Left Right Dragon Fist',        3, false, false, 0),

(3, 1399, 'High Kick to Bloody Cleaver',   1, false, true, 1),
(3, 1400, 'High Kick to Bloody Cleaver',   2, false, true, 1),
(3, 1401, 'High Kick to Bloody Cleaver',   3, false, true, 1),

(3, 1402, 'Dragon Roar II',                1, false, false, 0),
(3, 1403, 'Dragon Roar II',                2, true, false, 0),
(3, 1404, 'Dragon Roar II',                3, true, false, 0),

(3, 1405, 'Dragon Low Kick',               1, false, true, 1),
(3, 1406, 'Dragon Low Kick',               2, true, true, 1),
(3, 1407, 'Dragon Low Kick',               3, true, true, 1),

-- PANDA -- 4
(4, 29, 'Panda - I',                       1, false, false, 2),
(4, 30, 'Panda - I',                       2, false, false, 2),
(4, 31, 'Panda - I',                       3, false, false, 2),

(4, 32, 'Panda - II',                      1, false, false, 2),
(4, 33, 'Panda - II',                      2, false, false, 2),
(4, 34, 'Panda - II',                      3, false, false, 2),

-- SR HP --
(4, 35, 'Panda - III',                     4, false, false, 2),
-- --

(4, 250, 'Triple Hammer',                  1, false, false, 0),
(4, 251, 'Triple Hammer',                  2, false, false, 0),
(4, 252, 'Triple Hammer',                  3, false, false, 0),

(4, 253, 'Big Tree',                       1, false, false, 0),
(4, 254, 'Big Tree',                       2, false, false, 0),
(4, 255, 'Big Tree',                       3, false, false, 0),

(4, 256, 'Bear Tackle',                    1, false, false, 1),
(4, 257, 'Bear Tackle',                    2, false, false, 1),
(4, 258, 'Bear Tackle',                    3, false, false, 1),

(4, 259, 'Bear Lariat',                    1, false, true, 0),
(4, 260, 'Bear Lariat',                    2, false, true, 0),
(4, 261, 'Bear Lariat',                    3, false, true, 0),

(4, 262, 'Trout Smash',                    1, false, false, 0),
(4, 263, 'Trout Smash',                    2, false, false, 0),
(4, 264, 'Trout Smash',                    3, false, false, 0),

(4, 265, 'Kuma Musou',                     1, false, false, 0),
(4, 266, 'Kuma Musou',                     2, false, false, 0),
(4, 267, 'Kuma Musou',                     3, false, false, 0),

(4, 268, 'G-Clef Cannon',                  1, false, true, 0),
(4, 269, 'G-Clef Cannon',                  2, false, true, 0),
(4, 270, 'G-Clef Cannon',                  3, false, true, 0),

(4, 271, 'Wild Lumberjack',                1, false, true, 0),
(4, 272, 'Wild Lumberjack',                2, false, true, 0),
(4, 273, 'Wild Lumberjack',                3, false, true, 0),

(4, 274, 'Wild Slap',                      1, false, false, 0),
(4, 275, 'Wild Slap',                      2, false, false, 0),
(4, 276, 'Wild Slap',                      3, false, false, 0),

(4, 277, 'Spinning Kuma',                  1, false, true, 1),
(4, 278, 'Spinning Kuma',                  2, false, true, 1),
(4, 279, 'Spinning Kuma',                  3, false, true, 1),

(4, 280, 'Killing Uppercut Grizzly Claw',  1, false, false, 0),
(4, 281, 'Killing Uppercut Grizzly Claw',  2, false, false, 0),
(4, 282, 'Killing Uppercut Grizzly Claw',  3, false, false, 0),

(4, 283, 'Howling Bear',                   1, false, false, 0),
(4, 284, 'Howling Bear',                   2, false, false, 0),
(4, 285, 'Howling Bear',                   3, false, false, 0),

(4, 286, 'Bear Slash',                     1, false, false, 0),
(4, 287, 'Bear Slash',                     2, false, false, 0),
(4, 288, 'Bear Slash',                     3, false, false, 0),

(4, 289, 'Bear Toss',                      1, false, true, 0),
(4, 290, 'Bear Toss',                      2, false, true, 0),
(4, 291, 'Bear Toss',                      3, false, true, 0),

(4, 292, 'Spinning bear Kick',             1, false, true, 1),
(4, 293, 'Spinning bear Kick',             2, false, true, 1),
(4, 294, 'Spinning bear Kick',             3, false, true, 1),

(4, 295, 'Bear Claw',                      1, false, false, 0),
(4, 296, 'Bear Claw',                      2, false, false, 0),
(4, 297, 'Bear Claw',                      3, false, false, 0),

(4, 298, 'Bear Double Hop Kick Combo',     1, false, true, 1),
(4, 299, 'Bear Double Hop Kick Combo',     2, false, true, 1),
(4, 300, 'Bear Double Hop Kick Combo',     3, false, true, 1),

(4, 301, 'Bear Butterfly',                 1, false, false, 0),
(4, 302, 'Bear Butterfly',                 2, false, false, 0),
(4, 303, 'Bear Butterfly',                 3, false, false, 0),

(4, 304, 'Salmon Swipe',                   1, false, false, 0),
(4, 305, 'Salmon Swipe',                   2, false, false, 0),
(4, 306, 'Salmon Swipe',                   3, false, false, 0),

(4, 307, 'Jab Elbow Stomp',                1, false, true, 1),
(4, 308, 'Jab Elbow Stomp',                2, false, true, 1),
(4, 309, 'Jab Elbow Stomp',                3, false, true, 1),

(4, 310, 'Hornet Sweep',                   1, false, false, 0),
(4, 311, 'Hornet Sweep',                   2, false, false, 0),
(4, 312, 'Hornet Sweep',                   3, false, false, 0),

(4, 313, 'Trout Sweep',                    1, false, false, 0),
(4, 314, 'Trout Sweep',                    2, false, false, 0),
(4, 315, 'Trout Sweep',                    3, false, false, 0),

(4, 316, 'Salmon Hunter',                  1, false, true, 0),
(4, 317, 'Salmon Hunter',                  2, false, true, 0),
(4, 318, 'Salmon Hunter',                  3, false, true, 0),

(4, 319, 'Rabid Bear',                     1, false, true, 0),
(4, 320, 'Rabid Bear',                     2, false, true, 0),
(4, 321, 'Rabid Bear',                     3, false, true, 0),

(4, 322, 'Grizzly Claws',                  1, false, true, 0),
(4, 323, 'Grizzly Claws',                  2, false, true, 0),
(4, 324, 'Grizzly Claws',                  3, false, true, 0),

(4, 325, "Break'n",                        1, false, true, 0),
(4, 326, "Break'n",                        2, false, true, 0),
(4, 327, "Break'n",                        3, false, true, 0),

(4, 328, 'Windmill Punch',                 1, false, false, 0),
(4, 329, 'Windmill Punch',                 2, false, false, 0),
(4, 330, 'Windmill Punch',                 3, false, false, 0),

(4, 331, 'Bear Shove',                     1, false, false, 0),
(4, 332, 'Bear Shove',                     2, false, false, 0),
(4, 333, 'Bear Shove',                     3, false, false, 0),

(4, 334, 'Dance With Me',                  1, false, false, 1),
(4, 335, 'Dance With Me',                  2, false, false, 1),
(4, 336, 'Dance With Me',                  3, false, false, 1),

(4, 337, 'Bear Slam',                      1, false, false, 0),
(4, 338, 'Bear Slam',                      2, false, false, 0),
(4, 339, 'Bear Slam',                      3, false, false, 0),

-- SR --
(4, 341, 'Big Bear Attack',                4, false, false, 0),
(4, 344, 'Fatal Wind',                     4, false, false, 0),
(4, 345, 'Killing Combination',            4, false, false, 0),
(4, 1161, 'Hip Smash',                     4, false, false, 0),
-- --

(4, 1008, 'High Jinks',                    1, false, false, 1),
(4, 1009, 'High Jinks',                    2, false, false, 1),
(4, 1010, 'High Jinks',                    3, false, false, 1),

(4, 1011, 'Bear Slide',                    1, false, true, 1),
(4, 1012, 'Bear Slide',                    3, false, true, 1),
(4, 1013, 'Bear Slide',                    2, false, true, 1),

(4, 1014, 'Bear Rolling Kick',             1, false, false, 1),
(4, 1015, 'Bear Rolling Kick',             3, false, false, 1),
(4, 1016, 'Bear Rolling Kick',             2, false, false, 1),

(4, 1017, 'Bear Flail Kick',               1, false, true, 1),
(4, 1018, 'Bear Flail Kick',               3, false, true, 1),
(4, 1019, 'Bear Flail Kick',               2, false, true, 1),

(4, 1044, 'Shape-Up Kick',                 1, false, false, 1),
(4, 1045, 'Shape-Up Kick',                 2, false, false, 1),
(4, 1046, 'Shape-Up Kick',                 3, false, false, 1),

(4, 1047, 'Get Up Punch',                  1, false, true, 0),
(4, 1048, 'Get Up Punch',                  2, false, true, 0),
(4, 1049, 'Get Up Punch',                  3, false, true, 0),

(4, 1152, 'Double Claw',                   1, false, false, 0),
(4, 1153, 'Double Claw',                   2, false, false, 0),
(4, 1154, 'Double Claw',                   3, false, false, 0),

(4, 1155, 'Frolicking Bear',               1, false, false, 0),
(4, 1156, 'Frolicking Bear',               2, false, false, 0),
(4, 1157, 'Frolicking Bear',               3, false, false, 0),

(4, 1158, 'Shape-Up Hip',                  1, false, false, 0),
(4, 1159, 'Shape-Up Hip',                  2, false, false, 0),
(4, 1160, 'Shape-Up Hip',                  3, false, false, 0),

(4, 1254, 'Honey Trap',                    1, false, true, 1),
(4, 1255, 'Honey Trap',                    2, false, true, 1),
(4, 1256, 'Honey Trap',                    3, false, true, 1),

(4, 1257, 'Pancake Press',                 1, false, false, 1),
(4, 1258, 'Pancake Press',                 2, false, false, 1),
(4, 1259, 'Pancake Press',                 3, false, false, 1),

(4, 1260, 'Bear Backstroke',               1, false, false, 0),
(4, 1261, 'Bear Backstroke',               2, false, false, 0),
(4, 1262, 'Bear Backstroke',               3, false, false, 0),

(4, 1263, "Rock'n Roll Circus",            1, false, true, 0),
(4, 1264, "Rock'n Roll Circus",            2, false, true, 0),
(4, 1265, "Rock'n Roll Circus",            3, false, true, 0),

(4, 1579, 'Bear Pump in Pedal',            1, false, false, 1),
(4, 1580, 'Bear Pump in Pedal',            2, false, false, 1),
(4, 1581, 'Bear Pump in Pedal',            3, false, false, 1),

(4, 1582, 'Bear Hug',                      1, false, true, 0),
(4, 1583, 'Bear Hug',                      2, false, true, 0),
(4, 1584, 'Bear Hug',                      3, false, true, 0),

(4, 1585, 'Mad Angler',                    1, false, false, 0),
(4, 1586, 'Mad Angler',                    2, true, false, 0),
(4, 1587, 'Mad Angler',                    3, true, false, 0),

(4, 1588, 'Bear Backhand',                 1, false, false, 0),
(4, 1589, 'Bear Backhand',                 2, false, false, 0),
(4, 1590, 'Bear Backhand',                 3, false, false, 0),

(4, 1669, 'Left Right Bear Claw',          1, false, false, 0),
(4, 1670, 'Left Right Bear Claw',          2, false, false, 0),
(4, 1671, 'Left Right Bear Claw',          3, false, false, 0),

(4, 1672, 'Jab Elbow Smash',               1, true, true, 0),
(4, 1673, 'Jab Elbow Smash',               2, true, true, 0),
(4, 1674, 'Jab Elbow Smash',               3, true, true, 0),

(4, 1675, 'Rushing Uppercut L',            1, false, false, 0),
(4, 1676, 'Rushing Uppercut L',            2, false, false, 0),
(4, 1677, 'Rushing Uppercut L',            3, false, false, 0),

(4, 1678, 'Double Wild Slap',              1, false, false, 0),
(4, 1679, 'Double Wild Slap',              2, false, false, 0),
(4, 1680, 'Double Wild Slap',              3, false, false, 0),

(4, 1681, 'Double Hammer',                 1, false, true, 0),
(4, 1682, 'Double Hammer',                 2, false, true, 0),
(4, 1683, 'Double Hammer',                 3, false, true, 0),

(4, 1684, "Bear's Bite",                   1, false, true, 0),
(4, 1685, "Bear's Bite",                   2, false, true, 0),
(4, 1686, "Bear's Bite",                   3, false, true, 0),

-- YOSHIMITSU -- 5
(5, 43, 'Yoshimitsu - I',                  1, false, false, 2),
(5, 44, 'Yoshimitsu - I',                  2, false, false, 2),
(5, 45, 'Yoshimitsu - I',                  3, false, false, 2),

(5, 46, 'Yoshimitsu - II',                 1, false, false, 2),
(5, 47, 'Yoshimitsu - II',                 2, false, false, 2),
(5, 48, 'Yoshimitsu - II',                 3, false, false, 2),

(5, 346, 'Seiken Douharai',                1, false, false, 0),
(5, 347, 'Seiken Douharai',                2, false, false, 0),
(5, 348, 'Seiken Douharai',                3, false, false, 0),

(5, 349, 'Oni Kick Combo',                 1, false, false, 1),
(5, 350, 'Oni Kick Combo',                 2, false, false, 1),
(5, 351, 'Oni Kick Combo',                 3, false, false, 1),

(5, 352, 'Dragonfly Blade',                1, false, true, 0),
(5, 353, 'Dragonfly Blade',                2, false, true, 0),
(5, 354, 'Dragonfly Blade',                3, false, true, 0),

(5, 355, 'Mumyo Juji Ken',                 1, false, false, 0),
(5, 356, 'Mumyo Juji Ken',                 2, false, false, 0),
(5, 357, 'Mumyo Juji Ken',                 3, false, false, 0),

(5, 358, 'Nade Kujaku',                    1, false, false, 0),
(5, 359, 'Nade Kujaku',                    2, false, false, 0),
(5, 360, 'Nade Kujaku',                    3, false, false, 0),

(5, 361, 'Tsuka Splitter',                 1, false, false, 0),
(5, 362, 'Tsuka Splitter',                 2, false, false, 0),
(5, 363, 'Tsuka Splitter',                 3, false, false, 0),

(5, 364, 'Nebular Burst',                  1, false, false, 0),
(5, 365, 'Nebular Burst',                  2, false, false, 0),
(5, 366, 'Nebular Burst',                  3, false, false, 0),

(5, 367, 'Sakanobori',                     1, false, false, 1),
(5, 368, 'Sakanobori',                     2, false, false, 1),
(5, 369, 'Sakanobori',                     3, false, false, 1),

(5, 370, 'Tsurubebi',                      1, false, false, 1),
(5, 371, 'Tsurubebi',                      2, false, false, 1),
(5, 372, 'Tsurubebi',                      3, false, false, 1),

(5, 373, 'Prison Gate',                    1, false, false, 0),
(5, 374, 'Prison Gate',                    2, false, false, 0),
(5, 375, 'Prison Gate',                    3, false, false, 0),

(5, 376, 'Oni Thrust',                     1, false, false, 0),
(5, 377, 'Oni Thrust',                     2, false, false, 0),
(5, 378, 'Oni Thrust',                     3, false, false, 0),

(5, 379, 'Omage Hosen',                    1, false, false, 0),
(5, 380, 'Omage Hosen',                    2, false, false, 0),
(5, 381, 'Omage Hosen',                    3, false, false, 0),

(5, 382, 'Perilous Spirit',                1, false, false, 1),
(5, 383, 'Perilous Spirit',                2, false, false, 1),
(5, 384, 'Perilous Spirit',                3, false, false, 1),

(5, 385, 'Kurama Itto',                    1, false, false, 0),
(5, 386, 'Kurama Itto',                    2, false, false, 0),
(5, 387, 'Kurama Itto',                    3, false, false, 0),

(5, 388, 'Toita Daoshi',                   1, false, false, 1),
(5, 389, 'Toita Daoshi',                   2, false, false, 1),
(5, 390, 'Toita Daoshi',                   3, false, false, 1),

(5, 391, 'Dragonfly Twister',              1, false, false, 1),
(5, 392, 'Dragonfly Twister',              2, false, false, 1),
(5, 393, 'Dragonfly Twister',              3, false, false, 1),

(5, 394, 'Dragonfly Fist',                 1, false, false, 0),
(5, 395, 'Dragonfly Fist',                 2, false, false, 0),
(5, 396, 'Dragonfly Fist',                 3, false, false, 0),

(5, 397, 'Agonbaku',                       1, false, false, 0),
(5, 398, 'Agonbaku',                       2, false, false, 0),
(5, 399, 'Agonbaku',                       3, false, false, 0),

(5, 400, 'Gehosen',                        1, false, false, 0),
(5, 401, 'Gehosen',                        2, false, false, 0),
(5, 402, 'Gehosen',                        3, false, false, 0),

(5, 403, 'Soul Stealer',                   1, false, false, 0),
(5, 404, 'Soul Stealer',                   2, false, false, 0),
(5, 405, 'Soul Stealer',                   3, false, false, 0),

(5, 406, 'Thunder Blade',                  1, false, true, 0),
(5, 407, 'Thunder Blade',                  2, false, true, 0),
(5, 408, 'Thunder Blade',                  3, false, true, 0),

(5, 409, 'Karakuri Uzumaki',               1, false, false, 0),
(5, 410, 'Karakuri Uzumaki',               2, false, false, 0),
(5, 411, 'Karakuri Uzumaki',               3, false, false, 0),

(5, 412, 'Shibakari',                      1, false, true, 1),
(5, 413, 'Shibakari',                      2, false, true, 1),
(5, 414, 'Shibakari',                      3, false, true, 1),

(5, 415, 'Poison Breath',                  1, false, true, 0),
(5, 416, 'Poison Breath',                  2, false, true, 0),
(5, 417, 'Poison Breath',                  3, false, true, 0),

(5, 418, 'Fubuki',                         1, false, false, 1),
(5, 419, 'Fubuki',                         2, false, false, 1),
(5, 420, 'Fubuki',                         3, false, false, 1),

(5, 421, 'Kimon Matagi',                   1, false, true, 0),
(5, 422, 'Kimon Matagi',                   2, false, true, 0),
(5, 423, 'Kimon Matagi',                   3, false, true, 0),

(5, 424, 'Nozuchi Fumi',                   1, false, false, 1),
(5, 425, 'Nozuchi Fumi',                   2, false, false, 1),
(5, 426, 'Nozuchi Fumi',                   3, false, false, 1),

(5, 427, 'Tobi Ushiwaka',                  1, false, true, 1),
(5, 428, 'Tobi Ushiwaka',                  2, false, true, 1),
(5, 429, 'Tobi Ushiwaka',                  3, false, true, 1),

(5, 430, 'Utsusemi',                       1, false, false, 0),
(5, 431, 'Utsusemi',                       2, false, false, 0),
(5, 432, 'Utsusemi',                       3, false, false, 0),

(5, 433, 'Tenshu Kuzushi',                 1, false, true, 0),
(5, 434, 'Tenshu Kuzushi',                 2, false, true, 0),
(5, 435, 'Tenshu Kuzushi',                 3, false, true, 0),

(5, 436, 'Heshikirigari',                  1, false, true, 0),
(5, 437, 'Heshikirigari',                  2, false, true, 0),
(5, 438, 'Heshikirigari',                  3, false, true, 0),

(5, 439, 'Aratama',                        1, false, true, 0),
(5, 440, 'Aratama',                        2, false, true, 0),
(5, 441, 'Aratama',                        3, false, true, 0),

-- SR --
(5, 442, 'Ashura Blade',                   4, false, false, 0),
(5, 443, 'Kaishaku',                       4, false, false, 0),
-- --

(5, 853, 'Kamikaze',                       1, false, true, 1),
(5, 854, 'Kamikaze',                       2, false, true, 1),
(5, 855, 'Kamikaze',                       3, false, true, 1),

(5, 856, 'Shisetsu Genman',                1, false, false, 1),
(5, 857, 'Shisetsu Genman',                2, false, false, 1),
(5, 858, 'Shisetsu Genman',                3, false, false, 1),

(5, 859, 'Spirited Away',                  1, false, false, 1),
(5, 860, 'Spirited Away',                  2, false, false, 1),
(5, 861, 'Spirited Away',                  3, false, false, 1),

(5, 862, 'Doushi Kiri',                    1, false, false, 0),
(5, 863, 'Doushi Kiri',                    2, false, false, 0),
(5, 864, 'Doushi Kiri',                    3, false, false, 0),

(5, 1074, 'Naguri Kabuto Wari',            1, false, false, 0),
(5, 1075, 'Naguri Kabuto Wari',            2, false, false, 0),
(5, 1076, 'Naguri Kabuto Wari',            3, false, false, 0),

(5, 1077, 'Spirit Shield',                 1, false, false, 0),
(5, 1078, 'Spirit Shield',                 2, false, false, 0),
(5, 1079, 'Spirit Shield',                 3, false, false, 0),

(5, 1132, 'Triple Roundhouse Combo',       1, false, false, 1),
(5, 1133, 'Triple Roundhouse Combo',       2, false, false, 1),
(5, 1134, 'Triple Roundhouse Combo',       3, false, false, 1),

(5, 1135, 'Wood Cutter',                   1, false, false, 0),
(5, 1136, 'Wood Cutter',                   2, false, false, 0),
(5, 1137, 'Wood Cutter',                   3, false, false, 0),

(5, 1138, 'Ganto',                         1, false, false, 0),
(5, 1139, 'Ganto',                         2, false, false, 0),
(5, 1140, 'Ganto',                         3, false, false, 0),

(5, 1266, 'Rising Knee',                   1, false, false, 1),
(5, 1267, 'Rising Knee',                   2, false, false, 1),
(5, 1268, 'Rising Knee',                   3, false, false, 1),

(5, 1269, 'Guillotine Crow Kick',          1, false, false, 1),
(5, 1270, 'Guillotine Crow Kick',          2, false, false, 1),
(5, 1271, 'Guillotine Crow Kick',          3, false, false, 1),

(5, 1272, 'Kangaroo Kick',                 1, false, true, 1),
(5, 1273, 'Kangaroo Kick',                 2, false, true, 1),
(5, 1274, 'Kangaroo Kick',                 3, false, true, 1),

(5, 1275, 'Flea',                          1, false, false, 0),
(5, 1276, 'Flea',                          2, false, false, 0),
(5, 1277, 'Flea',                          3, false, false, 0),

(5, 1408, 'Inner Palm',                    1, false, true, 0),
(5, 1409, 'Inner Palm',                    2, false, true, 0),
(5, 1410, 'Inner Palm',                    3, false, true, 0),

(5, 1411, 'Knee Cap',                      1, false, false, 1),
(5, 1412, 'Knee Cap',                      2, false, false, 1),
(5, 1413, 'Knee Cap',                      3, false, false, 1),

(5, 1414, 'Samurai Cutter',                1, false, true, 0),
(5, 1415, 'Samurai Cutter',                2, false, true, 0),
(5, 1416, 'Samurai Cutter',                3, false, true, 0),

(5, 1417, 'Avoiding The Puddle',           1, false, true, 1),
(5, 1418, 'Avoiding The Puddle',           2, false, true, 1),
(5, 1419, 'Avoiding The Puddle',           3, false, true, 1),

(5, 1651, 'Quick Slash',                   1, false, false, 0),
(5, 1652, 'Quick Slash',                   2, false, false, 0),
(5, 1653, 'Quick Slash',                   3, false, false, 0),

(5, 1654, 'Dragonfly Sweep',               1, false, false, 1),
(5, 1655, 'Dragonfly Sweep',               2, false, false, 1),
(5, 1656, 'Dragonfly Sweep',               3, false, false, 1),

(5, 1657, 'Sword Smash',                   1, false, false, 0),
(5, 1658, 'Sword Smash',                   2, false, false, 0),
(5, 1659, 'Sword Smash',                   3, false, false, 0),

(5, 1660, 'Door Knocker',                  1, false, true, 0),
(5, 1661, 'Door Knocker',                  2, false, true, 0),
(5, 1662, 'Door Knocker',                  3, false, true, 0),

(5, 1663, 'Whirlwind',                     1, false, true, 0),
(5, 1664, 'Whirlwind',                     2, false, true, 0),
(5, 1665, 'Whirlwind',                     3, false, true, 0),

(5, 1666, 'Soul Siphon',                   1, false, true, 0),
(5, 1667, 'Soul Siphon',                   2, false, true, 0),
(5, 1668, 'Soul Siphon',                   3, false, true, 0),

-- XIAOYU -- 6
(6, 8, 'Ling Xiaoyu - I',                  4, false, false, 2),
(6, 9, 'Ling Xiaoyu - II',                 1, false, false, 2),
(6, 10, 'Ling Xiaoyu - II',                2, false, false, 2),
(6, 11, 'Ling Xiaoyu - II',                3, false, false, 2),

(6, 12, 'Ling Xiaoyu - III',               1, false, false, 2),
(6, 13, 'Ling Xiaoyu - III',               2, false, false, 2),
(6, 14, 'Ling Xiaoyu - III',               3, false, false, 2),

(6, 732, 'Bayonet',                        1, false, false, 0),
(6, 733, 'Bayonet',                        2, false, false, 0),
(6, 734, 'Bayonet',                        3, false, false, 0),

(6, 735, 'Seven Star Fist',                1, false, false, 0),
(6, 736, 'Seven Star Fist',                2, false, false, 0),
(6, 737, 'Seven Star Fist',                3, false, false, 0),

(6, 738, 'Skyscraper Kick',                1, false, false, 1),
(6, 739, 'Skyscraper Kick',                2, false, false, 1),
(6, 740, 'Skyscraper Kick',                3, false, false, 1),

(6, 741, 'Rising Front Kick',              1, false, false, 1),
(6, 742, 'Rising Front Kick',              2, true, false, 1),
(6, 743, 'Rising Front Kick',              3, true, false, 1),

(6, 744, 'Hypnotist',                      1, false, false, 0),
(6, 745, 'Hypnotist',                      2, false, false, 0),
(6, 746, 'Hypnotist',                      3, false, false, 0),

(6, 747, 'Jumping Pirouette',              1, false, false, 1),
(6, 748, 'Jumping Pirouette',              2, false, false, 1),
(6, 749, 'Jumping Pirouette',              3, false, false, 1),

(6, 750, 'Ji Dan Tui',                     1, false, false, 1),
(6, 751, 'Ji Dan Tui',                     2, false, false, 1),
(6, 752, 'Ji Dan Tui',                     3, false, false, 1),

(6, 753, 'Flapping Wings',                 1, false, false, 0),
(6, 754, 'Flapping Wings',                 2, false, false, 0),
(6, 755, 'Flapping Wings',                 3, false, false, 0),

(6, 756, 'Nutcracker',                     1, false, true, 1),
(6, 757, 'Nutcracker',                     2, false, true, 1),
(6, 758, 'Nutcracker',                     3, false, true, 1),

(6, 759, 'Poison Flower',                  1, false, false, 1),
(6, 760, 'Poison Flower',                  2, false, false, 1),
(6, 761, 'Poison Flower',                  3, false, false, 1),

(6, 762, 'Cyanide',                        1, false, false, 1),
(6, 763, 'Cyanide',                        2, false, false, 1),
(6, 764, 'Cyanide',                        3, false, false, 1),

(6, 765, 'May Flowers',                    1, false, false, 0),
(6, 766, 'May Flowers',                    2, false, false, 0),
(6, 767, 'May Flowers',                    3, false, false, 0),

(6, 768, 'Raccoon Swing',                  1, false, false, 1),
(6, 769, 'Raccoon Swing',                  2, false, false, 1),
(6, 770, 'Raccoon Swing',                  3, false, false, 1),

(6, 771, 'Rising Axe Kick',                1, false, false, 1),
(6, 772, 'Rising Axe Kick',                2, false, false, 1),
(6, 773, 'Rising Axe Kick',                3, false, false, 1),

(6, 774, 'Battering Winds',                1, false, true, 0),
(6, 775, 'Battering Winds',                2, false, true, 0),
(6, 776, 'Battering Winds',                3, false, true, 0),

(6, 777, 'Flower Power',                   1, false, true, 1),
(6, 778, 'Flower Power',                   2, false, true, 1),
(6, 779, 'Flower Power',                   3, false, true, 1),

(6, 780, 'Mistrust',                       1, false, false, 1),
(6, 781, 'Mistrust',                       2, false, false, 1),
(6, 782, 'Mistrust',                       3, false, false, 1),

(6, 783, 'Street Sweeper Combo',           1, false, false, 1),
(6, 784, 'Street Sweeper Combo',           2, false, false, 1),
(6, 785, 'Street Sweeper Combo',           3, false, false, 1),

(6, 786, 'Guard Breaker',                  1, false, false, 1),
(6, 787, 'Guard Breaker',                  2, false, false, 1),
(6, 788, 'Guard Breaker',                  3, false, false, 1),

(6, 789, 'Hidden Fortune',                 1, false, true, 1),
(6, 790, 'Hidden Fortune',                 2, false, true, 1),
(6, 791, 'Hidden Fortune',                 3, false, true, 1),

(6, 792, 'Peg Leg',                        1, false, true, 1),
(6, 793, 'Peg Leg',                        2, false, true, 1),
(6, 794, 'Peg Leg',                        3, false, true, 1),

(6, 795, 'Firecracker',                    1, false, true, 1),
(6, 796, 'Firecracker',                    2, false, true, 1),
(6, 797, 'Firecracker',                    3, false, true, 1),

(6, 798, 'Flower Garden',                  1, false, true, 1),
(6, 799, 'Flower Garden',                  2, false, true, 1),
(6, 800, 'Flower Garden',                  3, false, true, 1),

(6, 801, 'Ruby',                           1, false, true, 0),
(6, 802, 'Ruby',                           2, true, true, 0),
(6, 803, 'Ruby',                           3, true, true, 0),

(6, 804, 'Phoenix Swipe',                  1, false, true, 0),
(6, 805, 'Phoenix Swipe',                  2, false, true, 0),
(6, 806, 'Phoenix Swipe',                  3, false, true, 0),

(6, 807, 'Clouded Peak',                   1, false, true, 0),
(6, 808, 'Clouded Peak',                   2, true, true, 0),
(6, 809, 'Clouded Peak',                   3, true, true, 0),

(6, 810, 'Storming Flower',                1, false, false, 0),
(6, 811, 'Storming Flower',                2, false, false, 0),
(6, 812, 'Storming Flower',                3, false, false, 0),

(6, 813, 'Bolting Rabbit',                 1, false, true, 1),
(6, 814, 'Bolting Rabbit',                 2, false, true, 1),
(6, 815, 'Bolting Rabbit',                 3, false, true, 1),

(6, 816, 'Step Kick',                      1, false, false, 1),
(6, 817, 'Step Kick',                      2, false, false, 1),
(6, 818, 'Step Kick',                      3, false, false, 1),

(6, 819, 'Falling Tiger Kick',             1, false, false, 1),
(6, 820, 'Falling Tiger Kick',             2, false, false, 1),
(6, 821, 'Falling Tiger Kick',             3, false, false, 1),

-- SR --
(6, 822, 'Single Fan',                    4, false, false, 0),
(6, 823, 'Silver Needle',                 4, false, false, 1),
(6, 826, 'Diving Falcon',                 4, false, false, 1),
(6, 827, 'Tiao Tui Bai Ji',               4, false, false, 1),
(6, 1111, 'Li He Double Sweep',           4, false, true, 1),
-- --

(6, 829, 'Phoenix Tail',                  1, false, false, 1),
(6, 830, 'Phoenix Tail',                  3, false, false, 1),
(6, 831, 'Phoenix Tail',                  2, false, false, 1),

(6, 832, 'Street Sweeper',                1, false, true, 1),
(6, 833, 'Street Sweeper',                3, false, true, 1),
(6, 834, 'Street Sweeper',                2, false, true, 1),

(6, 835, 'Wave Crest',                    1, false, false, 0),
(6, 836, 'Wave Crest',                    3, false, false, 0),
(6, 837, 'Wave Crest',                    2, false, false, 0),

(6, 838, 'Phoenix Talon',                 1, false, true, 1),
(6, 839, 'Phoenix Talon',                 3, false, true, 1),
(6, 840, 'Phoenix Talon',                 2, false, true, 1),

(6, 1050, 'Phoenix Flight',               1, false, false, 1),
(6, 1051, 'Phoenix Flight',               2, false, false, 1),
(6, 1052, 'Phoenix Flight',               3, false, false, 1),

(6, 1053, 'Fan Dance to Pushing Hands',   1, false, true, 1),
(6, 1054, 'Fan Dance to Pushing Hands',   2, false, true, 1),
(6, 1055, 'Fan Dance to Pushing Hands',   3, false, true, 1),

(6, 1102, 'Cloud Kick',                   1, false, false, 1),
(6, 1103, 'Cloud Kick',                   2, false, false, 1),
(6, 1104, 'Cloud Kick',                   3, false, false, 1),

(6, 1105, 'Crescent Moon Kick',           1, false, false, 1),
(6, 1106, 'Crescent Moon Kick',           2, false, false, 1),
(6, 1107, 'Crescent Moon Kick',           3, false, false, 1),

(6, 1108, 'Wings of Fury',                1, false, false, 1),
(6, 1109, 'Wings of Fury',                2, false, false, 1),
(6, 1110, 'Wings of Fury',                3, false, false, 1),

(6, 1242, 'Cross Lifting Palms',          1, false, true, 0),
(6, 1243, 'Cross Lifting Palms',          2, false, true, 0),
(6, 1244, 'Cross Lifting Palms',          3, false, true, 0),

(6, 1245, 'X Marks the Spot',             1, false, false, 0),
(6, 1246, 'X Marks the Spot',             2, false, false, 0),
(6, 1247, 'X Marks the Spot',             3, false, false, 0),

(6, 1248, 'Back Layout',                  1, false, false, 1),
(6, 1249, 'Back Layout',                  2, false, false, 1),
(6, 1250, 'Back Layout',                  3, false, false, 1),

(6, 1251, 'Spin Sticker',                 1, false, false, 0),
(6, 1252, 'Spin Sticker',                 2, false, false, 0),
(6, 1253, 'Spin Sticker',                 3, false, false, 0),

(6, 1639, 'Butter the Bread',             1, true, false, 1),
(6, 1640, 'Butter the Bread',             2, true, false, 1),
(6, 1641, 'Butter the Bread',             3, true, false, 1),

(6, 1642, 'Heaven Punch',                 1, false, true, 0),
(6, 1643, 'Heaven Punch',                 2, false, true, 0),
(6, 1644, 'Heaven Punch',                 3, false, true, 0),

(6, 1645, 'Sunflower',                    1, false, true, 1),
(6, 1646, 'Sunflower',                    2, false, true, 1),
(6, 1647, 'Sunflower',                    3, false, true, 1),

(6, 1648, 'Peacock Kick',                 1, false, true, 1),
(6, 1649, 'Peacock Kick',                 2, false, true, 1),
(6, 1650, 'Peacock Kick',                 3, false, true, 1),

-- NINA -- 7
-- SR HP --
(7, 22, 'Nina - I',                        4, false, false, 2),

(7, 23, 'Nina - II',                       1, false, false, 2),
(7, 24, 'Nina - II',                       2, false, false, 2),
(7, 25, 'Nina - II',                       3, false, false, 2),

(7, 26, 'Nina - III',                      1, false, false, 2),
(7, 27, 'Nina - III',                      2, false, false, 2),
(7, 28, 'Nina - III',                      3, false, false, 2),

(7, 636, 'Biting Snake',                   1, false, false, 1),
(7, 637, 'Biting Snake',                   2, false, false, 1),
(7, 638, 'Biting Snake',                   3, false, false, 1),

(7, 639, 'Ray Hands',                      1, false, false, 0),
(7, 640, 'Ray Hands',                      2, false, false, 0),
(7, 641, 'Ray Hands',                      3, false, false, 0),

(7, 642, 'Cutthroat',                      1, false, false, 1),
(7, 643, 'Cutthroat',                      2, false, false, 1),
(7, 644, 'Cutthroat',                      3, false, false, 1),

(7, 645, 'Easy Prey',                      1, false, false, 1),
(7, 646, 'Easy Prey',                      2, false, false, 1),
(7, 647, 'Easy Prey',                      3, false, false, 1),

(7, 648, 'Stiletto Heel',                  1, false, false, 1),
(7, 649, 'Stiletto Heel',                  2, false, false, 1),
(7, 650, 'Stiletto Heel',                  3, false, false, 1),

(7, 651, 'Blonde Bomb',                    1, false, false, 0),
(7, 652, 'Blonde Bomb',                    2, true, false, 0),
(7, 653, 'Blonde Bomb',                    3, true, false, 0),

(7, 654, 'Deadly Hunter',                  1, false, false, 1),
(7, 655, 'Deadly Hunter',                  2, false, false, 1),
(7, 656, 'Deadly Hunter',                  3, false, false, 1),

(7, 657, 'Backhand Combo',                 1, false, false, 0),
(7, 658, 'Backhand Combo',                 2, true, false, 0),
(7, 659, 'Backhand Combo',                 3, true, false, 0),

(7, 660, 'Shut Up',                        1, false, false, 0),
(7, 661, 'Shut Up',                        2, false, false, 0),
(7, 662, 'Shut Up',                        3, false, false, 0),

(7, 663, 'Spiral Explosion',               1, false, false, 0),
(7, 664, 'Spiral Explosion',               2, false, false, 0),
(7, 665, 'Spiral Explosion',               3, false, false, 0),

(7, 666, 'Flashing Escape',                1, false, false, 1),
(7, 667, 'Flashing Escape',                2, false, false, 1),
(7, 668, 'Flashing Escape',                3, false, false, 1),

(7, 669, 'Fluttering Butterfly',           1, false, false, 0),
(7, 670, 'Fluttering Butterfly',           2, false, false, 0),
(7, 671, 'Fluttering Butterfly',           3, false, false, 0),

(7, 672, 'Helping Hand',                   1, false, false, 0),
(7, 673, 'Helping Hand',                   2, false, false, 0),
(7, 674, 'Helping Hand',                   3, false, false, 0),

(7, 675, 'Ice Pick',                       1, false, false, 1),
(7, 676, 'Ice Pick',                       2, false, false, 1),
(7, 677, 'Ice Pick',                       3, false, false, 1),

(7, 678, 'Spin Low Kick to Right Upper',   1, false, false, 0),
(7, 679, 'Spin Low Kick to Right Upper',   2, false, false, 0),
(7, 680, 'Spin Low Kick to Right Upper',   3, false, false, 0),

(7, 681, 'Left Backhand Body Blow',        1, false, false, 0),
(7, 682, 'Left Backhand Body Blow',        2, false, false, 0),
(7, 683, 'Left Backhand Body Blow',        3, false, false, 0),

(7, 684, 'Ivory Cutter',                   1, false, true, 1),
(7, 685, 'Ivory Cutter',                   2, false, true, 1),
(7, 686, 'Ivory Cutter',                   3, false, true, 1),

(7, 687, 'Catapult Kick',                  1, false, false, 1),
(7, 688, 'Catapult Kick',                  2, false, false, 1),
(7, 689, 'Catapult Kick',                  3, false, false, 1),

(7, 690, 'Binding Whip',                   1, false, false, 0),
(7, 691, 'Binding Whip',                   2, false, false, 0),
(7, 692, 'Binding Whip',                   3, false, false, 0),

(7, 693, 'Spider Knee',                    1, false, false, 1),
(7, 694, 'Spider Knee',                    2, false, false, 1),
(7, 695, 'Spider Knee',                    3, false, false, 1),

(7, 696, 'Right Backhand Body Blow',       1, false, false, 0),
(7, 697, 'Right Backhand Body Blow',       2, false, false, 0),
(7, 698, 'Right Backhand Body Blow',       3, false, false, 0),

(7, 699, 'Hellbringer',                    1, false, false, 0),
(7, 700, 'Hellbringer',                    2, false, false, 0),
(7, 701, 'Hellbringer',                    3, false, false, 0),

(7, 702, 'Blonde to Right High Kick',      1, false, false, 1),
(7, 703, 'Blonde to Right High Kick',      2, true, false, 1),
(7, 704, 'Blonde to Right High Kick',      3, true, false, 1),

(7, 705, 'Geyser Cannon',                  1, false, false, 1),
(7, 706, 'Geyser Cannon',                  2, false, false, 1),
(7, 707, 'Geyser Cannon',                  3, false, false, 1),

(7, 708, 'Jab to Mid Kick',                1, false, false, 1),
(7, 709, 'Jab to Mid Kick',                2, false, false, 1),
(7, 710, 'Jab to Mid Kick',                3, false, false, 1),

(7, 711, 'Twisted Mind',                   1, false, true, 1),
(7, 712, 'Twisted Mind',                   2, false, true, 1),
(7, 713, 'Twisted Mind',                   3, false, true, 1),

(7, 714, 'Jumping Flip',                   1, false, false, 0),
(7, 715, 'Jumping Flip',                   2, false, false, 0),
(7, 716, 'Jumping Flip',                   3, false, false, 0),

(7, 717, 'Assault Bomb',                   1, false, true, 0),
(7, 718, 'Assault Bomb',                   2, false, true, 0),
(7, 719, 'Assault Bomb',                   3, false, true, 0),

(7, 720, 'Spear Kick',                     1, false, true, 1),
(7, 721, 'Spear Kick',                     2, false, true, 1),
(7, 722, 'Spear Kick',                     3, false, true, 1),

(7, 723, 'Flash Kicks',                    1, false, true, 1),
(7, 724, 'Flash Kicks',                    2, false, true, 1),
(7, 725, 'Flash Kicks',                    3, false, true, 1),

-- SR --
(7, 727, 'Evil Mist',                      4, false, false, 0),
(7, 730, 'Elbow Smash',                    4, false, false, 0),
(7, 1151, 'Hammer Throw',                  4, false, false, 0),
-- --

(7, 1020, 'Bombshell Blast',               1, false, true, 0),
(7, 1021, 'Bombshell Blast',               3, false, true, 0),
(7, 1022, 'Bombshell Blast',               2, false, true, 0),

(7, 1023, 'PK Combo to Deadly Scythe',     1, false, false, 1),
(7, 1024, 'PK Combo to Deadly Scythe',     3, false, false, 1),
(7, 1025, 'PK Combo to Deadly Scythe',     2, false, false, 1),

(7, 1026, 'Seoi Gyaku Juji-gatame',        1, false, true, 0),
(7, 1027, 'Seoi Gyaku Juji-gatame',        3, false, true, 0),
(7, 1028, 'Seoi Gyaku Juji-gatame',        2, false, true, 0),

(7, 1029, 'Kneel Kick',                    1, false, false, 1),
(7, 1030, 'Kneel Kick',                    3, false, false, 1),
(7, 1031, 'Kneel Kick',                    2, false, false, 1),

(7, 1068, 'Skull Splitter',                1, false, false, 0),
(7, 1069, 'Skull Splitter',                2, false, false, 0),
(7, 1070, 'Skull Splitter',                3, false, false, 0),

(7, 1071, 'Sweeper Combo',                 1, false, false, 1),
(7, 1072, 'Sweeper Combo',                 2, false, false, 1),
(7, 1073, 'Sweeper Combo',                 3, false, false, 1),

(7, 1142, 'Elbow to Arm Grab Flip',        1, false, false, 0),
(7, 1143, 'Elbow to Arm Grab Flip',        2, false, false, 0),
(7, 1144, 'Elbow to Arm Grab Flip',        3, false, false, 0),

(7, 1145, 'Lift Shot',                     1, false, false, 0),
(7, 1146, 'Lift Shot',                     2, false, false, 0),
(7, 1147, 'Lift Shot',                     3, false, false, 0),

(7, 1148, "PK Combo to Assassin's Blade",  1, false, false, 0),
(7, 1149, "PK Combo to Assassin's Blade",  2, false, false, 0),
(7, 1150, "PK Combo to Assassin's Blade",  3, false, false, 0),

(7, 1182, 'Leaping Axe Kick',              1, false, false, 1),
(7, 1183, 'Leaping Axe Kick',              2, false, false, 1),
(7, 1184, 'Leaping Axe Kick',              3, false, false, 1),

(7, 1185, 'Reverse Neck Breaker',          1, false, false, 0),
(7, 1186, 'Reverse Neck Breaker',          2, false, false, 0),
(7, 1187, 'Reverse Neck Breaker',          3, false, false, 0),

(7, 1188, 'Sideslip',                      1, false, true, 1),
(7, 1189, 'Sideslip',                      2, false, true, 1),
(7, 1190, 'Sideslip',                      3, false, true, 1),

(7, 1191, 'Bad Habit',                     1, false, true, 1),
(7, 1192, 'Bad Habit',                     2, false, true, 1),
(7, 1193, 'Bad Habit',                     3, false, true, 1),

(7, 1384, 'Left Right Combo',              1, false, false, 0),
(7, 1385, 'Left Right Combo',              2, false, false, 0),
(7, 1386, 'Left Right Combo',              3, false, false, 0),

(7, 1387, 'Bermuda Triangle',              1, false, true, 1),
(7, 1388, 'Bermuda Triangle',              2, true, true, 1),
(7, 1389, 'Bermuda Triangle',              3, true, true, 1),

(7, 1390, 'Double Whip',                   1, false, false, 1),
(7, 1391, 'Double Whip',                   2, false, false, 1),
(7, 1392, 'Double Whip',                   3, false, false, 1),

(7, 1393, 'Shockwave Palm',                1, false, true, 0),
(7, 1394, 'Shockwave Palm',                3, false, true, 0),
(7, 1395, 'Shockwave Palm',                2, false, true, 0),

-- LILI -- 8
-- SR HP --
(8, 15, 'Lili - I',                        4, false, false, 2),

(8, 16, 'Lili - II',                       1, false, false, 2),
(8, 17, 'Lili - II',                       2, false, false, 2),
(8, 18, 'Lili - II',                       3, false, false, 2),

(8, 19, 'Lili - III',                      1, false, false, 2),
(8, 20, 'Lili - III',                      2, false, false, 2),
(8, 21, 'Lili - III',                      3, false, false, 2),

(8, 154, 'Alstroemeria',                   1, false, false, 1),
(8, 155, 'Alstroemeria',                   2, false, false, 1),
(8, 156, 'Alstroemeria',                   3, false, false, 1),

(8, 157, 'Dendrobium',                     1, false, false, 0),
(8, 158, 'Dendrobium',                     2, false, false, 0),
(8, 159, 'Dendrobium',                     3, false, false, 0),

(8, 160, 'Broken Heart',                   1, false, false, 0),
(8, 161, 'Broken Heart',                   2, false, false, 0),
(8, 162, 'Broken Heart',                   3, false, false, 0),

(8, 163, 'Peacock Waltz',                  1, false, false, 0),
(8, 164, 'Peacock Waltz',                  2, false, false, 0),
(8, 165, 'Peacock Waltz',                  3, false, false, 0),

(8, 166, 'Sunrise Sunset',                 1, false, false, 1),
(8, 167, 'Sunrise Sunset',                 2, false, false, 1),
(8, 168, 'Sunrise Sunset',                 3, false, false, 1),

(8, 169, 'Heliotrope',                     1, false, false, 0),
(8, 170, 'Heliotrope',                     2, false, false, 0),
(8, 171, 'Heliotrope',                     3, false, false, 0),

(8, 172, 'Matterhorn Ascension',           1, false, false, 1),
(8, 173, 'Matterhorn Ascension',           2, false, false, 1),
(8, 174, 'Matterhorn Ascension',           3, false, false, 1),

(8, 175, 'Mars Sword',                     1, false, false, 1),
(8, 176, 'Mars Sword',                     2, false, false, 1),
(8, 177, 'Mars Sword',                     3, false, false, 1),

(8, 178, 'Rompez Fleuret',                 1, false, false, 0),
(8, 179, 'Rompez Fleuret',                 2, false, false, 0),
(8, 180, 'Rompez Fleuret',                 3, false, false, 0),

(8, 181, 'Honeysuckle',                    1, false, false, 1),
(8, 182, 'Honeysuckle',                    2, false, false, 1),
(8, 183, 'Honeysuckle',                    3, false, false, 1),

(8, 184, 'Freesia Thrust',                 1, false, false, 1),
(8, 185, 'Freesia Thrust',                 2, true, false, 1),
(8, 186, 'Freesia Thrust',                 3, true, false, 1),

(8, 187, 'Autumn Wind',                    1, false, false, 1),
(8, 188, 'Autumn Wind',                    2, false, false, 1),
(8, 189, 'Autumn Wind',                    3, false, false, 1),

(8, 190, 'Cancer Une-Deux',                1, false, false, 0),
(8, 191, 'Cancer Une-Deux',                2, false, false, 0),
(8, 192, 'Cancer Une-Deux',                3, false, false, 0),

(8, 193, 'Piercing Thorn',                 1, false, false, 1),
(8, 194, 'Piercing Thorn',                 2, false, false, 1),
(8, 195, 'Piercing Thorn',                 3, false, false, 1),

(8, 196, 'Allonger Le Bras',               1, false, false, 0),
(8, 197, 'Allonger Le Bras',               2, false, false, 0),
(8, 198, 'Allonger Le Bras',               3, false, false, 0),

(8, 199, 'Circle Knee',                    1, false, false, 1),
(8, 200, 'Circle Knee',                    2, false, false, 1),
(8, 201, 'Circle Knee',                    3, false, false, 1),

(8, 202, 'Soleil',                         1, false, false, 1),
(8, 203, 'Soleil',                         2, false, false, 1),
(8, 204, 'Soleil',                         3, false, false, 1),

(8, 205, 'Kitty Claws',                    1, false, false, 0),
(8, 206, 'Kitty Claws',                    2, false, false, 0),
(8, 207, 'Kitty Claws',                    3, false, false, 0),

(8, 208, 'Direct Persuasion',              1, false, false, 0),
(8, 209, 'Direct Persuasion',              2, false, false, 0),
(8, 210, 'Direct Persuasion',              3, false, false, 0),

(8, 211, 'Bloody Masquerade Piton',        1, false, false, 1),
(8, 212, 'Bloody Masquerade Piton',        2, false, false, 1),
(8, 213, 'Bloody Masquerade Piton',        3, false, false, 1),

(8, 214, 'Submissive Heel',                1, false, false, 1),
(8, 215, 'Submissive Heel',                2, false, false, 1),
(8, 216, 'Submissive Heel',                3, false, false, 1),

(8, 217, 'Orchid ring',                    1, false, false, 1),
(8, 218, 'Orchid ring',                    2, false, false, 1),
(8, 219, 'Orchid ring',                    3, false, false, 1),

(8, 220, 'Dominating Heel',                1, false, false, 1),
(8, 221, 'Dominating Heel',                2, false, false, 1),
(8, 222, 'Dominating Heel',                3, false, false, 1),

(8, 223, 'Heavy Languish',                 1, false, false, 1),
(8, 224, 'Heavy Languish',                 2, true, false, 1),
(8, 225, 'Heavy Languish',                 3, true, false, 1),

(8, 226, 'Stunning Toe Kick',              1, false, false, 1),
(8, 227, 'Stunning Toe Kick',              2, false, false, 1),
(8, 228, 'Stunning Toe Kick',              3, false, false, 1),

(8, 229, 'Minuet',                         1, false, false, 0),
(8, 230, 'Minuet',                         2, false, false, 0),
(8, 231, 'Minuet',                         3, false, false, 0),

(8, 232, 'Thorn Whip',                     1, false, false, 1),
(8, 233, 'Thorn Whip',                     2, false, false, 1),
(8, 234, 'Thorn Whip',                     3, false, false, 1),

(8, 235, 'Tempest',                        1, false, false, 0),
(8, 236, 'Tempest',                        2, false, false, 0),
(8, 237, 'Tempest',                        3, false, false, 0),

(8, 238, 'Slashing Vine',                  1, false, true, 0),
(8, 239, 'Slashing Vine',                  2, false, true, 0),
(8, 240, 'Slashing Vine',                  3, false, true, 0),

(8, 241, 'Monte Carlo Snap',               1, false, false, 0),
(8, 242, 'Monte Carlo Snap',               2, false, false, 0),
(8, 243, 'Monte Carlo Snap',               3, false, false, 0),

-- SR --
(8, 245, 'Divine step',                    4, false, false, 1),
(8, 1101, 'Capricorn Kick',                4, false, false, 1),
-- --

(8, 984, 'Delicate Uprising',              1, false, true, 0),
(8, 985, 'Delicate Uprising',              3, false, true, 0),
(8, 986, 'Delicate Uprising',              2, false, true, 0),

(8, 987, 'Shears to Spinning Edge',        1, false, true, 1),
(8, 988, 'Shears to Spinning Edge',        3, false, true, 1),
(8, 989, 'Shears to Spinning Edge',        2, false, true, 1),

(8, 990, 'Rose Pique',                     1, false, false, 0),
(8, 991, 'Rose Pique',                     2, false, false, 0),
(8, 992, 'Rose Pique',                     3, false, false, 0),

(8, 993, 'Rafflesia',                      1, false, true, 0),
(8, 994, 'Rafflesia',                      2, false, true, 0),
(8, 995, 'Rafflesia',                      3, false, true, 0),

(8, 1038, 'Twist of Fate',                 1, false, false, 1),
(8, 1039, 'Twist of Fate',                 2, true, false, 1),
(8, 1040, 'Twist of Fate',                 3, true, false, 1),

(8, 1041, 'Peacock Jive',                  1, false, false, 1),
(8, 1042, 'Peacock Jive',                  2, false, false, 1),
(8, 1043, 'Peacock Jive',                  3, false, false, 1),

(8, 1092, 'Root of Evil',                  1, false, false, 1),
(8, 1093, 'Root of Evil',                  2, false, false, 1),
(8, 1094, 'Root of Evil',                  3, false, false, 1),

(8, 1095, 'Bed Time',                      1, false, false, 0),
(8, 1096, 'Bed Time',                      2, false, false, 0),
(8, 1097, 'Bed Time',                      3, false, false, 0),

(8, 1098, 'Garland Kick Combo',            1, false, true, 1),
(8, 1099, 'Garland Kick Combo',            2, false, true, 1),
(8, 1100, 'Garland Kick Combo',            3, false, true, 1),

(8, 1194, "Rabbit's Foot",                 1, false, false, 0),
(8, 1195, "Rabbit's Foot",                 2, false, false, 0),
(8, 1196, "Rabbit's Foot",                 3, false, false, 0),

(8, 1197, 'Cloisonne',                     1, false, true, 1),
(8, 1198, 'Cloisonne',                     2, false, true, 1),
(8, 1199, 'Cloisonne',                     3, false, true, 1),

(8, 1200, 'En Garde',                      1, false, false, 0),
(8, 1201, 'En Garde',                      2, false, false, 0),
(8, 1202, 'En Garde',                      3, false, false, 0),

(8, 1203, 'Attack Reversal',               1, false, false, 0),
(8, 1204, 'Attack Reversal',               2, false, false, 0),
(8, 1205, 'Attack Reversal',               3, false, false, 0),

(8, 1627, 'Heavy Languish to Mirror Image', 1, false, false, 1),
(8, 1628, 'Heavy Languish to Mirror Image', 2, false, false, 1),
(8, 1629, 'Heavy Languish to Mirror Image', 3, false, false, 1),

(8, 1630, 'Belier Attaque',                1, false, true, 1),
(8, 1631, 'Belier Attaque',                2, false, true, 1),
(8, 1632, 'Belier Attaque',                3, false, true, 1),

(8, 1633, 'Edelweiss',                     1, false, true, 0),
(8, 1634, 'Edelweiss',                     2, false, true, 0),
(8, 1635, 'Edelweiss',                     3, false, true, 0),

(8, 1636, 'Angel Knee to Front Kick',      1, false, false, 1),
(8, 1637, 'Angel Knee to Front Kick',      2, false, false, 1),
(8, 1638, 'Angel Knee to Front Kick',      3, false, false, 1),

-- HEIHACHI -- 9
(9, 877, 'Demon Slayer',                   1, false, false, 0),
(9, 878, 'Demon Slayer',                   2, false, false, 0),
(9, 879, 'Demon Slayer',                   3, false, false, 0),

(9, 880, 'Demon Executioner',              1, false, false, 0),
(9, 881, 'Demon Executioner',              2, false, false, 0),
(9, 882, 'Demon Executioner',              3, false, false, 0),

(9, 883, 'Left Splits Kick',               1, false, true, 1),
(9, 884, 'Left Splits Kick',               2, false, true, 1),
(9, 885, 'Left Splits Kick',               3, false, true, 1),

(9, 886, 'Demon Lair',                     1, false, false, 1),
(9, 887, 'Demon Lair',                     2, false, false, 1),
(9, 888, 'Demon Lair',                     3, false, false, 1),

(9, 889, 'Monzenbarai',                    3, false, true, 1),
(9, 890, 'Monzenbarai',                    1, false, true, 1),
(9, 891, 'Monzenbarai',                    2, false, true, 1),

(9, 892, 'Lightning Hammer',               3, false, false, 0),
(9, 893, 'Lightning Hammer',               1, false, false, 0),
(9, 894, 'Lightning Hammer',               2, false, false, 0),

(9, 895, 'Demon Scissors',                 3, false, false, 1),
(9, 896, 'Demon Scissors',                 1, false, false, 1),
(9, 897, 'Demon Scissors',                 2, false, false, 1),

(9, 898, 'Jichinsai',                      3, false, true, 1),
(9, 899, 'Jichinsai',                      1, false, true, 1),
(9, 900, 'Jichinsai',                      2, false, true, 1),

(9, 901, 'Deity Slayer',                   3, false, false, 0),
(9, 902, 'Deity Slayer',                   1, false, false, 0),
(9, 903, 'Deity Slayer',                   2, false, false, 0),

(9, 904, 'Twin Hammers',                   3, false, false, 0),
(9, 905, 'Twin Hammers',                   1, false, false, 0),
(9, 906, 'Twin Hammers',                   2, false, false, 0),

(9, 907, 'Jumping Low Kick',               3, false, false, 1),
(9, 908, 'Jumping Low Kick',               1, false, false, 1),
(9, 909, 'Jumping Low Kick',               2, false, false, 1),

(9, 910, 'Geta Stomp',                     3, false, false, 1),
(9, 911, 'Geta Stomp',                     1, false, false, 1),
(9, 912, 'Geta Stomp',                     2, false, false, 1),

(9, 913, 'Twin Hammer Volley',             3, false, false, 0),
(9, 914, 'Twin Hammer Volley',             1, false, false, 0),
(9, 915, 'Twin Hammer Volley',             2, false, false, 0),

(9, 916, 'Jumping Powerbomb',              3, false, false, 0),
(9, 917, 'Jumping Powerbomb',              1, false, false, 0),
(9, 918, 'Jumping Powerbomb',              2, false, false, 0),

(9, 919, 'Demon Kicker',                   3, false, false, 1),
(9, 920, 'Demon Kicker',                   1, false, false, 1),
(9, 921, 'Demon Kicker',                   2, false, false, 1),

(9, 922, 'Kidney Smasher',                 3, false, true, 0),
(9, 923, 'Kidney Smasher',                 1, false, true, 0),
(9, 924, 'Kidney Smasher',                 2, false, true, 0),

(9, 925, 'Subjugator',                     3, false, false, 1),
(9, 926, 'Subjugator',                     1, false, false, 1),
(9, 927, 'Subjugator',                     2, false, false, 1),

(9, 928, 'Iron Hand',                      3, false, true, 0),
(9, 929, 'Iron Hand',                      1, false, true, 0),
(9, 930, 'Iron Hand',                      2, false, true, 0),

(9, 931, 'Funkei Uraken',                  3, false, true, 0),
(9, 932, 'Funkei Uraken',                  1, false, true, 0),
(9, 933, 'Funkei Uraken',                  2, false, true, 0),

(9, 934, 'Tenma Destroyer',                1, false, false, 1),
(9, 935, 'Tenma Destroyer',                2, false, false, 1),
(9, 936, 'Tenma Destroyer',                3, false, false, 1),

(9, 937, 'Quick Iron Fist',                1, false, false, 0),
(9, 938, 'Quick Iron Fist',                2, false, false, 0),
(9, 939, 'Quick Iron Fist',                3, false, false, 0),

(9, 940, 'Lightning Crush',                1, false, false, 1),
(9, 941, 'Lightning Crush',                2, false, false, 1),
(9, 942, 'Lightning Crush',                3, false, false, 1),

(9, 943, 'Jumping Mid Kick',               1, false, false, 1),
(9, 944, 'Jumping Mid Kick',               2, false, false, 1),
(9, 945, 'Jumping Mid Kick',               3, false, false, 1),

(9, 946, 'Chrome Dome',                    1, false, false, 0),
(9, 947, 'Chrome Dome',                    2, true, false, 0),
(9, 948, 'Chrome Dome',                    3, true, false, 0),

(9, 949, 'Double Palm Strike',             1, false, false, 0),
(9, 950, 'Double Palm Strike',             2, false, false, 0),
(9, 951, 'Double Palm Strike',             3, false, false, 0),

(9, 952, 'Spinning Demon',                 1, false, false, 1),
(9, 953, 'Spinning Demon',                 2, false, false, 1),
(9, 954, 'Spinning Demon',                 3, false, false, 1),

(9, 955, "Demon's Wings",                  1, false, true, 0),
(9, 956, "Demon's Wings",                  2, false, true, 0),
(9, 957, "Demon's Wings",                  3, false, true, 0),

(9, 958, 'Guillotine Chop',                1, false, false, 0),
(9, 959, 'Guillotine Chop',                2, false, false, 0),
(9, 960, 'Guillotine Chop',                3, false, false, 0),

(9, 961, 'Hammer Punch',                   1, false, false, 0),
(9, 962, 'Hammer Punch',                   2, false, false, 0),
(9, 963, 'Hammer Punch',                   3, false, false, 0),

(9, 964, 'Pulverizer',                     1, false, false, 0),
(9, 965, 'Pulverizer',                     2, false, false, 0),
(9, 966, 'Pulverizer',                     3, false, false, 0),

(9, 967, 'Lightning Bolt',                 1, false, false, 0),
(9, 968, 'Lightning Bolt',                 2, false, false, 0),
(9, 969, 'Lightning Bolt',                 3, false, false, 0),

(9, 970, 'Tatarigoroshi',                  1, false, false, 0),
(9, 971, 'Tatarigoroshi',                  2, false, false, 0),
(9, 972, 'Tatarigoroshi',                  3, false, false, 0),

(9, 973, 'Freefall',                       1, false, false, 0),
(9, 974, 'Freefall',                       2, false, false, 0),
(9, 975, 'Freefall',                       3, false, false, 0),

-- SR --
(9, 976, "Heaven's Wrath",                 4, false, false, 1),
(9, 978, 'Demon Massacre',                 4, false, false, 0),
(9, 1169, 'Stonehead',                     4, false, false, 0),
-- --

-- SR HP --
(9, 979, 'Heihachi - I',                   4, false, false, 2),
(9, 980, 'Heihachi - II',                  4, false, false, 2),
-- --

(9, 981, 'Heihachi - III',                 1, false, false, 2),
(9, 982, 'Heihachi - III',                 2, false, false, 2),
(9, 983, 'Heihachi - III',                 3, false, false, 2),

(9, 1080, 'Right Splits Kick',             1, false, false, 1),
(9, 1162, 'Right Splits Kick',             2, false, false, 1),
(9, 1163, 'Right Splits Kick',             3, false, false, 1),

(9, 1081, 'Tsunami Kick',                  1, false, false, 1),
(9, 1164, 'Tsunami Kick',                  2, false, false, 1),
(9, 1165, 'Tsunami Kick',                  3, false, false, 1),

(9, 1166, 'Muso Tettsui',                  1, false, false, 0),
(9, 1167, 'Muso Tettsui',                  2, false, false, 0),
(9, 1168, 'Muso Tettsui',                  3, false, false, 0),

(9, 1230, 'Wind Slicer',                   1, false, false, 1),
(9, 1231, 'Wind Slicer',                   2, false, false, 1),
(9, 1232, 'Wind Slicer',                   3, false, false, 1),

(9, 1233, 'Debilitator',                   1, false, false, 1),
(9, 1234, 'Debilitator',                   2, false, false, 1),
(9, 1235, 'Debilitator',                   3, false, false, 1),

(9, 1236, 'Neck Breaker',                  1, false, true, 0),
(9, 1237, 'Neck Breaker',                  2, false, true, 0),
(9, 1238, 'Neck Breaker',                  3, false, true, 0),

(9, 1239, 'Eisho Mon',                     1, false, true, 0),
(9, 1240, 'Eisho Mon',                     2, false, true, 0),
(9, 1241, 'Eisho Mon',                     3, false, true, 0),

(9, 1615, 'Fire Starter',                  1, false, false, 0),
(9, 1616, 'Fire Starter',                  2, false, false, 0),
(9, 1617, 'Fire Starter',                  3, false, false, 0),

(9, 1618, 'Shingetsusen',                  1, false, true, 1),
(9, 1619, 'Shingetsusen',                  2, false, true, 1),
(9, 1620, 'Shingetsusen',                  3, false, true, 1),

(9, 1621, 'Broken Toy',                    1, false, false, 0),
(9, 1622, 'Broken Toy',                    2, false, false, 0),
(9, 1623, 'Broken Toy',                    3, false, false, 0),

(9, 1624, 'Crouching Dragon Kick',         1, false, false, 1),
(9, 1625, 'Crouching Dragon Kick',         2, false, false, 1),
(9, 1626, 'Crouching Dragon Kick',         3, false, false, 1),

-- HWOARANG -- 10
(10, 1420, 'Migraine',                      1, false, false, 0),
(10, 1421, 'Migraine',                      2, false, false, 0),
(10, 1422, 'Migraine',                      3, false, false, 0),

(10, 1423, 'Left Viper Combo',              1, false, false, 1),
(10, 1424, 'Left Viper Combo',              2, false, false, 1),
(10, 1425, 'Left Viper Combo',              3, false, false, 1),

(10, 1426, 'Rusty Knife',                   1, false, true, 1),
(10, 1427, 'Rusty Knife',                   2, false, true, 1),
(10, 1428, 'Rusty Knife',                   3, false, true, 1),

(10, 1429, 'Firecracker',                   1, false, false, 1),
(10, 1430, 'Firecracker',                   2, false, false, 1),
(10, 1431, 'Firecracker',                   3, false, false, 1),

(10, 1432, 'Cheap Shot Snap Kick',          1, false, true, 1),
(10, 1433, 'Cheap Shot Snap Kick',          2, true, true, 1),
(10, 1434, 'Cheap Shot Snap Kick',          3, true, true, 1),

(10, 1435, 'Right Viper Combo',             1, false, false, 1),
(10, 1436, 'Right Viper Combo',             2, false, false, 1),
(10, 1437, 'Right Viper Combo',             3, false, false, 1),

(10, 1438, 'Bolt Cut',                      1, false, false, 0),
(10, 1439, 'Bolt Cut',                      2, false, false, 0),
(10, 1440, 'Bolt Cut',                      3, false, false, 0),

(10, 1441, 'Hunting Hawk',                  1, false, false, 1),
(10, 1442, 'Hunting Hawk',                  2, false, false, 1),
(10, 1443, 'Hunting Hawk',                  3, false, false, 1),

(10, 1444, 'Body Blow',                     1, false, false, 0),
(10, 1445, 'Body Blow',                     2, false, false, 0),
(10, 1446, 'Body Blow',                     3, false, false, 0),

(10, 1447, 'Sweep Kick',                    1, false, false, 1),
(10, 1448, 'Sweep Kick',                    2, false, false, 1),
(10, 1449, 'Sweep Kick',                    3, false, false, 1),

(10, 1450, 'Left Plasma Blade',             1, false, false, 1),
(10, 1451, 'Left Plasma Blade',             2, false, false, 1),
(10, 1452, 'Left Plasma Blade',             3, false, false, 1),

(10, 1453, 'Middle Claymore',               1, false, false, 1),
(10, 1454, 'Middle Claymore',               2, false, false, 1),
(10, 1455, 'Middle Claymore',               3, false, false, 1),

(10, 1456, 'Push Hands',                    1, false, true, 0),
(10, 1457, 'Push Hands',                    2, false, true, 0),
(10, 1458, 'Push Hands',                    3, false, true, 0),

(10, 1459, 'Air Raid',                      1, false, false, 1),
(10, 1460, 'Air Raid',                      2, false, false, 1),
(10, 1461, 'Air Raid',                      3, false, false, 1),

(10, 1462, 'Bone Stinger',                  1, false, true, 0),
(10, 1463, 'Bone Stinger',                  2, false, true, 0),
(10, 1464, 'Bone Stinger',                  3, false, true, 0),

(10, 1465, 'Ankle Biter',                   1, false, false, 1),
(10, 1466, 'Ankle Biter',                   2, false, false, 1),
(10, 1467, 'Ankle Biter',                   3, false, false, 1),

(10, 1468, 'Roll and Choke',                1, false, false, 0),
(10, 1469, 'Roll and Choke',                2, false, false, 0),
(10, 1470, 'Roll and Choke',                3, false, false, 0),

(10, 1471, 'Torpedo Kick',                  1, false, false, 1),
(10, 1472, 'Torpedo Kick',                  2, false, false, 1),
(10, 1473, 'Torpedo Kick',                  3, false, false, 1),

(10, 1474, 'Blast Fist',                    1, false, true, 0),
(10, 1475, 'Blast Fist',                    2, false, true, 0),
(10, 1476, 'Blast Fist',                    3, false, true, 0),

(10, 1477, 'Spinning Axe Kick to Right Stance', 1, false, false, 1),
(10, 1478, 'Spinning Axe Kick to Right Stance', 2, false, false, 1),
(10, 1479, 'Spinning Axe Kick to Right Stance', 3, false, false, 1),

(10, 1480, 'One Two Punch',                 1, false, false, 0),
(10, 1481, 'One Two Punch',                 2, false, false, 0),
(10, 1482, 'One Two Punch',                 3, false, false, 0),

(10, 1483, 'Phalanx',                       1, false, false, 1),
(10, 1484, 'Phalanx',                       2, false, false, 1),
(10, 1485, 'Phalanx',                       3, false, false, 1),

(10, 1486, 'Left Punch',                    1, false, false, 1),
(10, 1487, 'Left Punch',                    2, false, false, 1),
(10, 1488, 'Left Punch',                    3, false, false, 1),

(10, 1489, 'Flying Eagle',                  1, false, false, 0),
(10, 1490, 'Flying Eagle',                  2, false, false, 0),
(10, 1491, 'Flying Eagle',                  3, false, false, 0),

(10, 1492, 'Iron Heel',                     1, false, false, 1),
(10, 1493, 'Iron Heel',                     2, false, false, 1),
(10, 1494, 'Iron Heel',                     3, false, false, 1),

(10, 1495, 'Big Fists',                     1, false, false, 0),
(10, 1496, 'Big Fists',                     2, false, false, 0),
(10, 1497, 'Big Fists',                     3, false, false, 0),

(10, 1498, 'Spinning Trip Kick',            1, false, true, 1),
(10, 1499, 'Spinning Trip Kick',            2, false, true, 1),
(10, 1500, 'Spinning Trip Kick',            3, false, true, 1),

(10, 1501, 'Trick Jab',                     1, false, true, 0),
(10, 1502, 'Trick Jab',                     2, false, true, 0),
(10, 1503, 'Trick Jab',                     3, false, true, 0),

(10, 1504, 'Teaser',                        1, false, true, 1),
(10, 1505, 'Teaser',                        2, true, true, 1),
(10, 1506, 'Teaser',                        3, true, true, 1),

(10, 1507, 'Nose Bleeder',                  1, false, false, 1),
(10, 1508, 'Nose Bleeder',                  2, false, false, 1),
(10, 1509, 'Nose Bleeder',                  3, false, false, 1),

(10, 1510, 'Screw Kick',                    1, false, true, 1),
(10, 1511, 'Screw Kick',                    2, false, true, 1),
(10, 1512, 'Screw Kick',                    3, false, true, 1),

(10, 1513, 'Sky Rocket',                    1, false, false, 1),
(10, 1514, 'Sky Rocket',                    2, false, false, 1),
(10, 1515, 'Sky Rocket',                    3, false, false, 1),

(10, 1516, 'Hunting Heel',                  1, false, false, 1),
(10, 1517, 'Hunting Heel',                  2, false, false, 1),
(10, 1518, 'Hunting Heel',                  3, false, false, 1),

-- SR --
(10, 1520, 'Right Backhand',                4, false, false, 0),
(10, 1521, 'Flamingo Low to Right Hook Kick', 4, false, false, 1),
(10, 1523, 'Step Kick',                     4, false, false, 1),
(10, 1524, 'Left Heel Lance',               4, false, false, 1),
(10, 1525, 'Snap Kick',                     4, false, false, 1),
(10, 1526, 'Home Surgery',                  4, false, false, 1),
-- --

(10, 1527, 'Hwoarang - I',                  1, false, false, 2),
(10, 1528, 'Hwoarang - I',                  2, false, false, 2),
(10, 1529, 'Hwoarang - I',                  3, false, false, 2),

(10, 1530, 'Hwoarang - II',                 1, false, false, 2),
(10, 1531, 'Hwoarang - II',                 2, false, false, 2),
(10, 1532, 'Hwoarang - II',                 3, false, false, 2),

-- JIN -- 11
(11, 1687, 'Crouching Uppercut',            1, false, false, 0),
(11, 1688, 'Crouching Uppercut',            2, false, false, 0),
(11, 1689, 'Crouching Uppercut',            3, false, false, 0),

(11, 1690, 'Left Right Axe Kick',           1, false, false, 1),
(11, 1691, 'Left Right Axe Kick',           2, false, false, 1),
(11, 1692, 'Left Right Axe Kick',           3, false, false, 1),

(11, 1693, 'Right Elbow',                   1, false, false, 0),
(11, 1694, 'Right Elbow',                   2, false, false, 0),
(11, 1695, 'Right Elbow',                   3, false, false, 0),

(11, 1696, 'Kazama Style 5 Hit Combo',      1, false, false, 1),
(11, 1697, 'Kazama Style 5 Hit Combo',      2, false, false, 1),
(11, 1698, 'Kazama Style 5 Hit Combo',      3, false, false, 1),

(11, 1699, 'Power Stance',                  1, false, false, 0),
(11, 1700, 'Power Stance',                  2, false, true, 0),
(11, 1701, 'Power Stance',                  3, false, true, 0),

(11, 1702, 'Left Jab to Double Low',        1, false, false, 1),
(11, 1703, 'Left Jab to Double Low',        2, false, true, 1),
(11, 1704, 'Left Jab to Double Low',        3, false, true, 1),

(11, 1705, 'Median Line Destruction',       1, false, false, 0),
(11, 1706, 'Median Line Destruction',       2, false, true, 0),
(11, 1707, 'Median Line Destruction',       3, false, true, 0),

(11, 1708, 'Double Thrust Roundhouse',      1, false, false, 1),
(11, 1709, 'Double Thrust Roundhouse',      2, false, true, 1),
(11, 1710, 'Double Thrust Roundhouse',      3, false, true, 1),

(11, 1711, 'Suigetsu Strike',               1, false, false, 0),
(11, 1712, 'Suigetsu Strike',               2, false, true, 0),
(11, 1713, 'Suigetsu Strike',               3, false, true, 0),

(11, 1714, 'Front Thrust Kick',             1, false, false, 1),
(11, 1715, 'Front Thrust Kick',             2, true, false, 1),
(11, 1716, 'Front Thrust Kick',             3, true, false, 1),

(11, 1717, 'Thrusting Uppercut',            1, false, false, 0),
(11, 1718, 'Thrusting Uppercut',            2, false, true, 0),
(11, 1719, 'Thrusting Uppercut',            3, false, true, 0),

(11, 1720, 'Double Lift Kick',              1, false, false, 1),
(11, 1721, 'Double Lift Kick',              2, false, false, 1),
(11, 1722, 'Double Lift Kick',              3, false, false, 1),

(11, 1723, 'Stinger',                       1, false, false, 1),
(11, 1724, 'Stinger',                       2, true, true, 1),
(11, 1725, 'Stinger',                       3, true, true, 1),

(11, 1726, 'Left Sidekick to Stinger',      1, false, false, 1),
(11, 1727, 'Left Sidekick to Stinger',      2, true, false, 1),
(11, 1728, 'Left Sidekick to Stinger',      3, true, false, 1),

(11, 1729, "Demon's Paw",                   1, false, false, 0),
(11, 1730, "Demon's Paw",                   2, false, true, 0),
(11, 1731, "Demon's Paw",                   3, false, true, 0),

(11, 1732, 'Right Spinning Axe Kick',       1, false, true, 1),
(11, 1733, 'Right Spinning Axe Kick',       2, false, true, 1),
(11, 1734, 'Right Spinning Axe Kick',       3, false, true, 1),

(11, 1735, 'Shun Masatsu',                  1, false, false, 0),
(11, 1736, 'Shun Masatsu',                  2, false, false, 0),
(11, 1737, 'Shun Masatsu',                  3, false, false, 0),

(11, 1738, 'Knee Popper to Sidekick',       1, false, false, 1),
(11, 1739, 'Knee Popper to Sidekick',       2, true, true, 1),
(11, 1740, 'Knee Popper to Sidekick',       3, true, true, 1),

(11, 1741, 'Avenger',                       1, false, false, 0),
(11, 1742, 'Avenger',                       2, false, false, 0),
(11, 1743, 'Avenger',                       3, false, false, 0),

(11, 1744, 'Tensho Rakufu',                 1, false, false, 1),
(11, 1745, 'Tensho Rakufu',                 2, false, true, 1),
(11, 1746, 'Tensho Rakufu',                 3, false, true, 1),

(11, 1747, 'Black Out',                     1, false, false, 0),
(11, 1748, 'Black Out',                     2, false, false, 0),
(11, 1749, 'Black Out',                     3, false, false, 0),

(11, 1750, 'Left Knee',                     1, false, false, 1),
(11, 1751, 'Left Knee',                     2, false, false, 1),
(11, 1752, 'Left Knee',                     3, false, false, 1),

(11, 1753, 'Swaying Willow',                1, false, false, 0),
(11, 1754, 'Swaying Willow',                2, false, false, 0),
(11, 1755, 'Swaying Willow',                3, false, false, 0),

(11, 1756, 'Right Roundhouse Punch',        1, false, false, 0),
(11, 1757, 'Right Roundhouse Punch',        2, false, true, 0),
(11, 1758, 'Right Roundhouse Punch',        3, false, true, 0),

(11, 1759, 'Savage Sword',                  1, false, false, 1),
(11, 1760, 'Savage Sword',                  2, false, false, 1),
(11, 1761, 'Savage Sword',                  3, false, false, 1),

(11, 1762, 'Evading Middle Strike',         1, false, false, 0),
(11, 1763, 'Evading Middle Strike',         2, false, true, 0),
(11, 1764, 'Evading Middle Strike',         3, false, true, 0),

(11, 1765, 'Spinning Sidekick',             1, false, true, 1),
(11, 1766, 'Spinning Sidekick',             2, false, true, 1),
(11, 1767, 'Spinning Sidekick',             3, false, true, 1),

(11, 1768, 'Evil Intent',                   1, false, false, 0),
(11, 1769, 'Evil Intent',                   2, false, false, 0),
(11, 1770, 'Evil Intent',                   3, false, false, 0),

(11, 1771, 'Left Roundhouse',               1, false, false, 1),
(11, 1772, 'Left Roundhouse',               2, false, false, 1),
(11, 1773, 'Left Roundhouse',               3, false, false, 1),

(11, 1774, 'Left Drill Punch',              1, false, false, 0),
(11, 1775, 'Left Drill Punch',              2, false, true, 0),
(11, 1776, 'Left Drill Punch',              3, false, true, 0),

(11, 1777, 'Lunging Low Roundhouse Kick',   1, false, false, 1),
(11, 1778, 'Lunging Low Roundhouse Kick',   2, true, true, 1),
(11, 1779, 'Lunging Low Roundhouse Kick',   3, true, true, 1),

(11, 1780, 'Corpse Thrust',                 1, false, false, 0),
(11, 1781, 'Corpse Thrust',                 2, true, true, 0),
(11, 1782, 'Corpse Thrust',                 3, true, true, 0),

-- SR --
(11, 1783, 'Keito',                         4, false, false, 1),
(11, 1784, 'Spine Cracker',                 4, false, false, 0),
(11, 1785, 'Double Chamber Punch',          4, false, false, 0),
(11, 1788, 'Right Sweep',                   4, false, false, 1),
-- --

(11, 1789, 'Jin - I',                       1, false, false, 2),
(11, 1790, 'Jin - I',                       2, false, false, 2),
(11, 1791, 'Jin - I',                       3, false, false, 2),

(11, 1792, 'Jin - II',                      1, false, false, 2),
(11, 1793, 'Jin - II',                      2, false, false, 2),
(11, 1794, 'Jin - II',                      3, false, false, 2),

-- SR HP --
(11, 1795, 'Jin - III',                     4, false, false, 2);
