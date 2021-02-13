INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1613114657829623292');

-- Improve quest Pyrewood Ambush

-- Deathstalker Faerleia

UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName`="" WHERE `entry`=2058;

DELETE FROM `creature_summon_groups` WHERE `summonerId`=2058;
INSERT INTO `creature_summon_groups` (`summonerId`,`summonerType`,`groupId`,`entry`,`position_x`,`position_y`,`position_z`,`orientation`,`summonType`,`summonTime`) VALUES
(2058,0,0,2060,-398.35,1510.75,18.87,4.76,4,60000), -- Deathstalker Faerleia - Group 0 - Councilman Smithers
(2058,0,1,2061,-396.41,1511.06,18.87,4.74,4,60000), -- Deathstalker Faerleia - Group 1 - Councilman Thatcher
(2058,0,1,2062,-398.35,1510.75,18.87,4.76,4,60000), -- Deathstalker Faerleia - Group 1 - Councilman Hendricks
(2058,0,2,2063,-398.35,1510.75,18.87,4.76,4,60000), -- Deathstalker Faerleia - Group 2 - Councilman Wilhelm
(2058,0,2,2064,-397.45,1509.56,18.87,4.73,4,60000), -- Deathstalker Faerleia - Group 2 - Councilman Hartin
(2058,0,2,2066,-396.41,1511.06,18.87,4.74,4,60000), -- Deathstalker Faerleia - Group 2 - Councilman Higarth
(2058,0,3,2065,-398.35,1510.75,18.87,4.76,4,60000), -- Deathstalker Faerleia - Group 3 - Councilman Cooper
(2058,0,3,2067,-396.41,1511.06,18.87,4.74,4,60000), -- Deathstalker Faerleia - Group 3 - Councilman Brunswick
(2058,0,3,2068,-397.45,1509.56,18.87,4.73,4,60000); -- Deathstalker Faerleia - Group 3 - Councilman Morrison

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid`=2058;
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` IN (205800,205801,205802,205803,205804);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(2058,0,0,0,19,0,100,0,452,0,0,0,0,80,205800,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Quest 'Pyrewood Ambush' Taken - Run Script"),
(2058,0,1,0,82,0,100,0,0,0,0,0,0,63,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Summoned Unit Dies - Set Counter 1 1"),
(2058,0,2,0,77,0,100,0,1,1,0,0,0,80,205801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Counter Set 1 1 - Run Script"),
(2058,0,3,0,77,0,100,0,1,3,0,0,0,80,205802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Counter Set 1 3 - Run Script"),
(2058,0,4,0,77,0,100,0,1,6,0,0,0,80,205803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Counter Set 1 6 - Run Script"),
(2058,0,5,0,77,0,100,0,1,9,0,0,0,80,205804,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Counter Set 1 9 - Run Script"),
(2058,0,6,0,2,0,100,0,0,20,10000,15000,0,11,3359,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Health pct - Cast 'Drink Potion'"),
(2058,0,7,0,6,0,100,0,0,0,0,0,0,6,452,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Death - Fail Quest 'Pyrewood Ambush'"),

(205800,9,0,0,0,0,100,0,0,0,0,0,0,64,1,0,0,0,0,0,16,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Store Targetlist"),
(205800,9,1,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Say Line 0"),
(205800,9,2,0,0,0,100,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Remove Npc Flag Questgiver"),
(205800,9,3,0,0,0,100,0,0,0,0,0,0,2,232,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Set Faction 232"),
(205800,9,4,0,0,0,100,0,10000,10000,0,0,0,107,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Summon Group 0"),
(205801,9,1,0,0,0,100,0,10000,10000,0,0,0,107,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Summon Group 1"),
(205802,9,1,0,0,0,100,0,10000,10000,0,0,0,107,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Summon Group 2"),
(205803,9,1,0,0,0,100,0,8000,8000,0,0,0,107,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Summon Group 3"),
(205804,9,0,0,0,0,100,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Say Line 1"),
(205804,9,1,0,0,0,100,0,0,0,0,0,0,15,452,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Quest Credit 'Pyrewood Ambush'"),
(205804,9,2,0,0,0,100,0,0,0,0,0,0,2,68,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Set Faction 68"),
(205804,9,3,0,0,0,100,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Add Npc Flag Questgiver"),
(205804,9,5,0,0,0,100,0,0,0,0,0,0,63,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Reset Counter"),
(205804,9,6,0,0,0,100,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deathstalker Faerleia - On Script - Reset All Scripts");

-- The council

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2060,2061,2062,2063,2064,2065,2066,2067,2068) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Small
(2060,0,0,0,54,0,100,0,0,0,0,0,0,3,0,729,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Smithers - On Just Summoned - Morph To Model 729"),
(2060,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2060,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Smithers - On Just Summoned - Start Waypoint"),
(2060,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Smithers - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2060,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Smithers - On Evade - Despawn (0)"),
-- Big
(2061,0,0,0,54,0,100,0,0,0,0,0,0,3,0,574,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Thatcher - On Just Summoned - Morph To Model 574"),
(2061,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2061,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Thatcher - On Just Summoned - Start Waypoint"),
(2061,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Thatcher - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2061,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Thatcher - On Evade - Despawn (0)"),
-- Small
(2062,0,0,0,54,0,100,0,0,0,0,0,0,3,0,729,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Hendricks - On Just Summoned - Morph To Model 729"),
(2062,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2062,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Hendricks - On Just Summoned - Start Waypoint"),
(2062,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Hendricks - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2062,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Hendricks - On Evade - Despawn (0)"),
-- Big
(2063,0,0,0,54,0,100,0,0,0,0,0,0,3,0,574,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Wilhelm - On Just Summoned - Morph To Model 574"),
(2063,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2063,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Wilhelm - On Just Summoned - Start Waypoint"),
(2063,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Wilhelm - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2063,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Wilhelm - On Evade - Despawn (0)"),
-- Big
(2064,0,0,0,54,0,100,0,0,0,0,0,0,3,0,574,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Hartin - On Just Summoned - Morph To Model 574"),
(2064,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2064,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Hartin - On Just Summoned - Start Waypoint"),
(2064,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Hartin - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2064,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Hartin - On Evade - Despawn (0)"),
-- Big
(2065,0,0,0,54,0,100,0,0,0,0,0,0,3,0,574,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Cooper - On Just Summoned - Morph To Model 574"),
(2065,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2065,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Cooper - On Just Summoned - Start Waypoint"),
(2065,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Cooper - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2065,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Cooper - On Evade - Despawn (0)"),
-- Big
(2066,0,0,0,54,0,100,0,0,0,0,0,0,3,0,574,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Higarth - On Just Summoned - Morph To Model 574"),
(2066,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2066,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Higarth - On Just Summoned - Start Waypoint"),
(2066,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Higarth - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2066,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Higarth - On Evade - Despawn (0)"),
-- Big
(2067,0,0,0,54,0,100,0,0,0,0,0,0,3,0,574,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Brunswick - On Just Summoned - Morph To Model 574"),
(2067,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2067,0,0,0,2,1,0,0,0,0,0,0,0,0,"Councilman Brunswick - On Just Summoned - Start Waypoint"),
(2067,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Councilman Brunswick - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2067,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Councilman Brunswick - On Evade - Despawn (0)"),
-- Small
(2068,0,0,0,54,0,100,0,0,0,0,0,0,3,0,729,0,0,0,0,1,0,0,0,0,0,0,0,0,"Lord Mayor Morrison - On Just Summoned - Morph To Model 729"),
(2068,0,1,0,54,0,100,0,0,0,0,0,0,53,0,2068,0,0,0,2,1,0,0,0,0,0,0,0,0,"Lord Mayor Morrison - On Link - Start Waypoint"),
(2068,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Lord Mayor Morrison - Between 0-15% Health - Flee For Assist (No Repeat)"),
(2068,0,3,0,7,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Lord Mayor Morrison - On Evade - Despawn (0)");

DELETE FROM `waypoints` WHERE `entry` IN (2060,2061,2062,2063,2064,2065,2066,2067,2068);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(2060,1,-397.731445,1502.890625,19.770845,"Councilman Smithers"),
(2060,2,-401.691681,1499.818726,19.770845,"Councilman Smithers"),
(2061,1,-396.266296,1502.207153,19.770849,"Councilman Thatcher"),
(2061,2,-400.981476,1498.297241,19.770849,"Councilman Thatcher"),
(2062,1,-397.731445,1502.890625,19.770845,"Councilman Hendricks"),
(2062,2,-401.691681,1499.818726,19.770845,"Councilman Hendricks"),
(2063,1,-397.731445,1502.890625,19.770845,"Councilman Wilhelm"),
(2063,2,-401.691681,1499.818726,19.770845,"Councilman Wilhelm"),
(2064,1,-397.009979,1502.273804,19.747398,"Councilman Hartin"),
(2064,2,-401.794128,1498.638428,19.747398,"Councilman Hartin"),
(2065,1,-397.731445,1502.890625,19.770845,"Councilman Cooper"),
(2065,2,-401.691681,1499.818726,19.770845,"Councilman Cooper"),
(2066,1,-396.266296,1502.207153,19.770849,"Councilman Higarth"),
(2066,2,-400.981476,1498.297241,19.770849,"Councilman Higarth"),
(2067,1,-396.266296,1502.207153,19.770849,"Councilman Brunswick"),
(2067,2,-400.981476,1498.297241,19.770849,"Councilman Brunswick"),
(2068,1,-397.009979,1502.273804,19.747398,"Councilman Morrison"),
(2068,2,-401.794128,1498.638428,19.747398,"Councilman Morrison");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` IN (2060,2061,2062,2063,2064,2065,2066,2067,2068) AND `SourceId` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,2060,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2061,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2062,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2063,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2064,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2065,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2066,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2067,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active"),
(22,1,2068,0,0,12,1,25,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if event 'Nights' is active");
