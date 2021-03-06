/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
"Initializing game world..." call ExileServer_util_log;
ExileServerKillFeed = if((getNumber (configFile >> "CfgSettings" >> "KillFeed" >> "showKillFeed")) isEqualTo 1)then{true}else{false};
call ExileServer_World_loadAllTerritories;
call ExileServer_world_deleteUnMaintained;
call ExileServer_world_loadAllDatabaseConstructions;
call ExileServer_world_loadAllDatabaseVehicles;
call ExileServer_world_loadAllDatabaseContainers;
call ExileServer_world_spawnSpawnZoneVehicles;
call ExileServer_world_spawnVehicles;
"Game world initialized! Let the fun begin!" call ExileServer_util_log;
true