-- Copyright (C) 2018  The Dota IMBA Development Team
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Editors:
--     EarthSalamander #42

-- Battlepass

-- to add soon:
-- Maelstrom (particles/econ/events/ti8/maelstorm_ti8.vpcf) -- jarnbjorn use a yellow particle while others use the blue one
-- Mjollnir shield (particles/econ/events/ti8/mjollnir_shield_ti8.vpcf) -- jarnbjorn use a yellow particle while others use the blue one
-- Phase Boots (particles/econ/events/ti8/phase_boots_ti8.vpcf) -- lifesteal boots use ti8 cosmetic already
-- add the name of the wearable slot in the reward name to be able to have multiple items on a single hero (or _set to override everything?)

if Imbattlepass == nil then Imbattlepass = class({}) end

local next_reward_shown = false
if IsInToolsMode() then
	next_reward_shown = true
end

IMBATTLEPASS_LEVEL_REWARD = {}
IMBATTLEPASS_LEVEL_REWARD[2]	= {"vengefulspirit_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[4]	= {"fountain", "common"}
IMBATTLEPASS_LEVEL_REWARD[6]	= {"bristleback_rare", "rare"}
IMBATTLEPASS_LEVEL_REWARD[7]	= {"slark_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[9]	= {"blink", "common"}
IMBATTLEPASS_LEVEL_REWARD[11]	= {"chen_mythical", "mythical"}
IMBATTLEPASS_LEVEL_REWARD[13]	= {"fountain2", "common"}
IMBATTLEPASS_LEVEL_REWARD[14]	= {"alchemist_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[15]	= {"vengefulspirit_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[16]	= {"force_staff", "common"}
IMBATTLEPASS_LEVEL_REWARD[18]	= {"blink2", "common"}
IMBATTLEPASS_LEVEL_REWARD[22]	= {"fountain3", "common"}
IMBATTLEPASS_LEVEL_REWARD[23]	= {"enigma_taunt", "rare"}
-- IMBATTLEPASS_LEVEL_REWARD[26]	= "bottle"
IMBATTLEPASS_LEVEL_REWARD[27]	= {"blink3", "common"}
IMBATTLEPASS_LEVEL_REWARD[28]	= {"dark_seer_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[30]	= {"zuus_arcana", "arcana"}
IMBATTLEPASS_LEVEL_REWARD[31]	= {"fountain4", "common"}
IMBATTLEPASS_LEVEL_REWARD[32]	= {"force_staff2", "common"}
IMBATTLEPASS_LEVEL_REWARD[33]	= {"skywrath_mage_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[35]	= {"mekansm", "common"}
IMBATTLEPASS_LEVEL_REWARD[36]	= {"blink4", "common"}
IMBATTLEPASS_LEVEL_REWARD[38]	= {"lion_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[39]	= {"bristleback_rare2", "rare"}
IMBATTLEPASS_LEVEL_REWARD[40]	= {"fountain5", "common"}
IMBATTLEPASS_LEVEL_REWARD[44]	= {"radiance", "common"}
IMBATTLEPASS_LEVEL_REWARD[45]	= {"blink5", "common"}
IMBATTLEPASS_LEVEL_REWARD[46]	= {"nyx_assassin_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[48]	= {"force_staff3", "common"}
IMBATTLEPASS_LEVEL_REWARD[49]	= {"fountain6", "common"}
-- IMBATTLEPASS_LEVEL_REWARD[50]	= {"tidehunter_ancient", "ancient"}
-- IMBATTLEPASS_LEVEL_REWARD[50]	= "bottle2"
IMBATTLEPASS_LEVEL_REWARD[52]	= {"enigma_mythical", "mythical"}
IMBATTLEPASS_LEVEL_REWARD[54]	= {"blink6", "common"}
IMBATTLEPASS_LEVEL_REWARD[55]	= {"lina_arcana", "arcana"}
IMBATTLEPASS_LEVEL_REWARD[56]	= {"huskar_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[58]	= {"fountain7", "common"}
IMBATTLEPASS_LEVEL_REWARD[60]	= {"sheepstick", "common"}
IMBATTLEPASS_LEVEL_REWARD[62]	= {"dark_willow_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[63]	= {"blink7", "common"}
IMBATTLEPASS_LEVEL_REWARD[64]	= {"force_staff4", "common"}
if next_reward_shown then
	IMBATTLEPASS_LEVEL_REWARD[65]	= {"juggernaut_arcana", "arcana"}
end
IMBATTLEPASS_LEVEL_REWARD[67]	= {"fountain8", "common"}
IMBATTLEPASS_LEVEL_REWARD[68]	= {"axe_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[70]	= {"mekansm2", "common"}
IMBATTLEPASS_LEVEL_REWARD[71]	= {"zuus_taunt", "mythical"}
IMBATTLEPASS_LEVEL_REWARD[72]	= {"blink8", "common"}
-- IMBATTLEPASS_LEVEL_REWARD[74]	= "bottle3"
IMBATTLEPASS_LEVEL_REWARD[75]	= {"pudge_arcana", "arcana"}
IMBATTLEPASS_LEVEL_REWARD[76]	= {"fountain9", "common"}
IMBATTLEPASS_LEVEL_REWARD[80]	= {"force_staff5", "common"}
IMBATTLEPASS_LEVEL_REWARD[81]	= {"blink9", "common"}
IMBATTLEPASS_LEVEL_REWARD[84]	= {"pangolier_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[85]	= {"fountain10", "common"}
IMBATTLEPASS_LEVEL_REWARD[88]	= {"radiance2", "common"}
IMBATTLEPASS_LEVEL_REWARD[90]	= {"blink10", "common"}
IMBATTLEPASS_LEVEL_REWARD[94]	= {"fountain11", "common"}
IMBATTLEPASS_LEVEL_REWARD[95]	= {"furion_taunt", "immortal"}
if next_reward_shown then
	IMBATTLEPASS_LEVEL_REWARD[95]	= {"juggernaut_arcana2", "arcana"}
end
IMBATTLEPASS_LEVEL_REWARD[96]	= {"force_staff6", "common"}
IMBATTLEPASS_LEVEL_REWARD[97]	= {"life_stealer_immortal", "immortal"}
-- IMBATTLEPASS_LEVEL_REWARD[98]	= "bottle4"
IMBATTLEPASS_LEVEL_REWARD[99]	= {"blink11", "common"}
IMBATTLEPASS_LEVEL_REWARD[100]	= {"shiva", "common"}
IMBATTLEPASS_LEVEL_REWARD[103]	= {"fountain12", "common"}
IMBATTLEPASS_LEVEL_REWARD[105]	= {"mekansm3", "common"}
IMBATTLEPASS_LEVEL_REWARD[106]	= {"death_prophet_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[108]	= {"blink12", "common"}
IMBATTLEPASS_LEVEL_REWARD[110]	= {"invoker_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[112]	= {"fountain13", "common"}
IMBATTLEPASS_LEVEL_REWARD[115]	= {"pudge_arcana2", "arcana"}
IMBATTLEPASS_LEVEL_REWARD[116]	= {"centaur_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[117]	= {"blink13", "common"}
IMBATTLEPASS_LEVEL_REWARD[120]	= {"sheepstick2", "common"}
IMBATTLEPASS_LEVEL_REWARD[121]	= {"fountain14", "common"}
-- IMBATTLEPASS_LEVEL_REWARD[122]	= "bottle5"
IMBATTLEPASS_LEVEL_REWARD[126]	= {"blink14", "common"}
IMBATTLEPASS_LEVEL_REWARD[128]	= {"dark_seer_immortal2", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[130]	= {"fountain15", "common"}
IMBATTLEPASS_LEVEL_REWARD[132]	= {"radiance3", "common"}
IMBATTLEPASS_LEVEL_REWARD[133]	= {"skywrath_mage_immortal2", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[139]	= {"fountain16", "common"}
IMBATTLEPASS_LEVEL_REWARD[140]	= {"mekansm4", "common"}
IMBATTLEPASS_LEVEL_REWARD[144]	= {"earthshaker_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[145]	= {"wisp_arcana", "arcana"}
IMBATTLEPASS_LEVEL_REWARD[148]	= {"fountain17", "common"}
IMBATTLEPASS_LEVEL_REWARD[150]	= {"shiva2", "common"}
IMBATTLEPASS_LEVEL_REWARD[152]	= {"leshrac_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[157]	= {"fountain18", "common"}
IMBATTLEPASS_LEVEL_REWARD[166]	= {"fountain19", "common"}
IMBATTLEPASS_LEVEL_REWARD[170]	= {"enigma_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[175]	= {"fountain20", "common"}
IMBATTLEPASS_LEVEL_REWARD[176]	= {"radiance4", "common"}
IMBATTLEPASS_LEVEL_REWARD[180]	= {"drow_ranger_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[184]	= {"fountain21", "common"}
IMBATTLEPASS_LEVEL_REWARD[197]	= {"life_stealer_immortal2", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[200]	= {"shiva3", "common"}
IMBATTLEPASS_LEVEL_REWARD[250]	= {"shiva4", "common"}
IMBATTLEPASS_LEVEL_REWARD[275]	= {"leshrac_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[280]	= {"pudge_immortal", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[295]	= {"windrunner_taunt", "immortal"}
IMBATTLEPASS_LEVEL_REWARD[400]	= {"ursa_immortal", "immortal"}

CustomNetTables:SetTableValue("game_options", "battlepass", {battlepass = IMBATTLEPASS_LEVEL_REWARD})

function Imbattlepass:Init()
	CustomGameEventManager:RegisterListener("change_ingame_tag", Dynamic_Wrap(self, 'DonatorTag'))
	CustomGameEventManager:RegisterListener("change_battlepass_rewards", Dynamic_Wrap(self, 'BattlepassRewards'))
	CustomGameEventManager:RegisterListener("change_player_xp", Dynamic_Wrap(self, 'PlayerXP'))

	IMBATTLEPASS_FOUNTAIN = {}
	IMBATTLEPASS_BLINK = {}
	IMBATTLEPASS_FORCE_STAFF = {}
	IMBATTLEPASS_BOTTLE = {}
	IMBATTLEPASS_MEKANSM = {}
	IMBATTLEPASS_RADIANCE = {}
	IMBATTLEPASS_SHEEPSTICK = {}
	IMBATTLEPASS_SHIVA = {}
	IMBATTLEPASS_PUDGE = {}
	IMBATTLEPASS_JUGGERNAUT = {}
	IMBATTLEPASS_ANCIENT_APPARITION = {}
	IMBATTLEPASS_VENGEFULSPIRIT = {}
	IMBATTLEPASS_ZUUS = {}
	IMBATTLEPASS_LINA = {}
	IMBATTLEPASS_WISP = {}
	IMBATTLEPASS_ENIGMA = {}
	IMBATTLEPASS_CHEN = {}
	IMBATTLEPASS_DARK_SEER = {}
	IMBATTLEPASS_HUSKAR = {}
	IMBATTLEPASS_BRISTLEBACK = {}
	IMBATTLEPASS_AXE = {}
	IMBATTLEPASS_NYX_ASSASSIN = {}
	IMBATTLEPASS_SKYWRATH_MAGE = {}
	IMBATTLEPASS_CENTAUR = {}
	IMBATTLEPASS_DROW_RANGER = {}
	IMBATTLEPASS_EARTHSHAKER = {}
	IMBATTLEPASS_LIFE_STEALER = {}
	IMBATTLEPASS_URSA = {}
	IMBATTLEPASS_LESHRAC = {}
	IMBATTLEPASS_DEATH_PROPHET = {}
--	IMBATTLEPASS_TIDEHUNTER = {}

	for k, v in pairs(IMBATTLEPASS_LEVEL_REWARD) do
		if string.find(v[1], "fountain") then
			IMBATTLEPASS_FOUNTAIN[v[1]] = k
		elseif string.find(v[1], "blink") then
			IMBATTLEPASS_BLINK[v[1]] = k
		elseif string.find(v[1], "force_staff") then
			IMBATTLEPASS_FORCE_STAFF[v[1]] = k
		elseif string.find(v[1], "bottle") then
			IMBATTLEPASS_BOTTLE[v[1]] = k
		elseif string.find(v[1], "mekansm") then
			IMBATTLEPASS_MEKANSM[v[1]] = k
		elseif string.find(v[1], "radiance") then
			IMBATTLEPASS_RADIANCE[v[1]] = k
		elseif string.find(v[1], "sheepstick") then
			IMBATTLEPASS_SHEEPSTICK[v[1]] = k
		elseif string.find(v[1], "shiva") then
			IMBATTLEPASS_SHIVA[v[1]] = k
		elseif string.find(v[1], "pudge") then
			IMBATTLEPASS_PUDGE[v[1]] = k
		elseif string.find(v[1], "juggernaut") then
			IMBATTLEPASS_JUGGERNAUT[v[1]] = k
		elseif string.find(v[1], "ancient_apparition") then
			IMBATTLEPASS_ANCIENT_APPARITION[v[1]] = k
		elseif string.find(v[1], "vengefulspirit") then
			IMBATTLEPASS_VENGEFULSPIRIT[v[1]] = k
		elseif string.find(v[1], "zuus") then
			IMBATTLEPASS_ZUUS[v[1]] = k
		elseif string.find(v[1], "lina") then
			IMBATTLEPASS_LINA[v[1]] = k
		elseif string.find(v[1], "wisp") then
			IMBATTLEPASS_WISP[v[1]] = k
		elseif string.find(v[1], "enigma") then
			IMBATTLEPASS_ENIGMA[v[1]] = k
		elseif string.find(v[1], "chen") then
			IMBATTLEPASS_CHEN[v[1]] = k
		elseif string.find(v[1], "dark_seer") then
			IMBATTLEPASS_DARK_SEER[v[1]] = k
		elseif string.find(v[1], "huskar") then
			IMBATTLEPASS_HUSKAR[v[1]] = k
		elseif string.find(v[1], "bristleback") then
			IMBATTLEPASS_BRISTLEBACK[v[1]] = k
		elseif string.find(v[1], "axe") then
			IMBATTLEPASS_AXE[v[1]] = k
		elseif string.find(v[1], "nyx_assassin") then
			IMBATTLEPASS_NYX_ASSASSIN[v[1]] = k
		elseif string.find(v[1], "skywrath_mage") then
			IMBATTLEPASS_SKYWRATH_MAGE[v[1]] = k
		elseif string.find(v[1], "centaur") then
			IMBATTLEPASS_CENTAUR[v[1]] = k
		elseif string.find(v[1], "drow_ranger") then
			IMBATTLEPASS_DROW_RANGER[v[1]] = k
		elseif string.find(v[1], "earthshaker") then
			IMBATTLEPASS_EARTHSHAKER[v[1]] = k
		elseif string.find(v[1], "life_stealer") then
			IMBATTLEPASS_LIFE_STEALER[v[1]] = k
		elseif string.find(v[1], "ursa") then
			IMBATTLEPASS_URSA[v[1]] = k
		elseif string.find(v[1], "leshrac") then
			IMBATTLEPASS_LESHRAC[v[1]] = k
		elseif string.find(v[1], "death_prophet") then
			IMBATTLEPASS_DEATH_PROPHET[v[1]] = k
--		elseif string.find(v[1], "tidehunter") then
--			IMBATTLEPASS_TIDEHUNTER[v[1]] = k
		end
	end

	Imbattlepass:BattlepassCheckArcana()
end

function Imbattlepass:AddItemEffects(hero)
	if hero.GetPlayerID == nil then return end

	local ply_table = CustomNetTables:GetTableValue("battlepass", tostring(hero:GetPlayerID()))

	if ply_table and ply_table.bp_rewards == 0 then
	else
		Imbattlepass:GetBlinkEffect(hero)
		Imbattlepass:GetForceStaffEffect(hero)
		Imbattlepass:GetRadianceEffect(hero)
		Imbattlepass:GetSheepstickEffect(hero)
		Imbattlepass:GetShivaEffect(hero)
		Imbattlepass:GetMekansmEffect(hero)
		Imbattlepass:GetFountainEffect(hero)
--		Imbattlepass:GetBottleEffect(hero)
	end

	-- some effects override some items effects, need to call it after items setup
	Imbattlepass:GetHeroEffect(hero)
end

function Imbattlepass:GetRewardUnlocked(ID)
	if IsInToolsMode() then return 100 end
	if CustomNetTables:GetTableValue("battlepass", tostring(ID)) then
		if CustomNetTables:GetTableValue("battlepass", tostring(ID)).Lvl then
			return CustomNetTables:GetTableValue("battlepass", tostring(ID)).Lvl
		end
	end

	return 1
end

function Imbattlepass:GetBlinkEffect(hero)
	local effect = "particles/items_fx/blink_dagger_start.vpcf"
	local effect2 = "particles/items_fx/blink_dagger_end.vpcf"
	local icon = 0

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink14"] then
			effect = "particles/econ/events/ti9/blink_dagger_ti9_start_lvl2.vpcf"
			effect2 = "particles/econ/events/ti9/blink_dagger_ti9_end.vpcf"
			icon = 14
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink13"] then
			effect = "particles/econ/events/ti9/blink_dagger_ti9_start.vpcf"
			effect2 = "particles/econ/events/ti9/blink_dagger_ti9_end.vpcf"
			icon = 13
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink12"] then
			effect = "particles/econ/events/ti8/blink_dagger_ti8_start_lvl2.vpcf"
			effect2 = "particles/econ/events/ti8/blink_dagger_ti8_end_lvl2.vpcf"
			icon = 12
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink11"] then
			effect = "particles/econ/events/ti8/blink_dagger_ti8_start.vpcf"
			effect2 = "particles/econ/events/ti8/blink_dagger_ti8_end.vpcf"
			icon = 11
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink10"] then
			effect = "particles/econ/events/ti5/blink_dagger_start_lvl2_ti5.vpcf"
			effect2 = "particles/econ/events/ti5/blink_dagger_end_lvl2_ti5.vpcf"
			icon = 10
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink9"] then
			effect = "particles/econ/events/ti5/blink_dagger_start_ti5.vpcf"
			effect2 = "particles/econ/events/ti5/blink_dagger_end_ti5.vpcf"
			icon = 9
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink8"] then
			effect = "particles/econ/events/ti6/blink_dagger_start_ti6_lvl2.vpcf"
			effect2 = "particles/econ/events/ti6/blink_dagger_end_ti6_lvl2.vpcf"
			icon = 8
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink7"] then
			effect = "particles/econ/events/ti6/blink_dagger_start_ti6.vpcf"
			effect2 = "particles/econ/events/ti6/blink_dagger_end_ti6.vpcf"
			icon = 7
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink6"] then
			effect = "particles/econ/events/ti4/blink_dagger_start_ti4.vpcf"
			effect = "particles/econ/events/ti4/blink_dagger_end_ti4.vpcf"
			icon = 6	
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink5"] then
			effect = "particles/econ/events/winter_major_2017/blink_dagger_start_wm07.vpcf"
			effect2 = "particles/econ/events/winter_major_2017/blink_dagger_end_wm07.vpcf"
			icon = 5
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink4"] then
			effect = "particles/econ/events/ti7/blink_dagger_start_ti7_lvl2.vpcf"
			effect2 = "particles/econ/events/ti7/blink_dagger_end_ti7_lvl2.vpcf"
			icon = 4
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink3"] then
			effect = "particles/econ/events/ti7/blink_dagger_start_ti7.vpcf"
			effect2 = "particles/econ/events/ti7/blink_dagger_end_ti7.vpcf"
			icon = 3
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink2"] then
			effect = "particles/econ/events/nexon_hero_compendium_2014/blink_dagger_start_nexon_hero_cp_2014.vpcf"
			effect2 = "particles/econ/events/nexon_hero_compendium_2014/blink_dagger_end_nexon_hero_cp_2014.vpcf"
			icon = 2
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BLINK["blink"] then
			effect = "particles/econ/events/fall_major_2016/blink_dagger_start_fm06.vpcf"
			effect2 = "particles/econ/events/fall_major_2016/blink_dagger_end_fm06.vpcf"
			icon = 1
		end
	end

	hero.blink_effect = effect
	hero.blink_effect_end = effect2
	hero.blink_icon = icon
--	CustomNetTables:SetTableValue("player_battlepass", tostring(hero:GetPlayerID()), {blink_icon = icon})
end

function Imbattlepass:GetForceStaffEffect(hero) -- still not working yet
	local effect = "particles/items_fx/force_staff.vpcf"
	local icon = 0

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FORCE_STAFF["force_staff6"] then
			effect = "particles/econ/events/ti9/force_staff_ti9.vpcf"
			icon = 6
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FORCE_STAFF["force_staff5"] then
			effect = "particles/econ/events/ti8/force_staff_ti8.vpcf"
			icon = 5
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FORCE_STAFF["force_staff4"] then
			effect = "particles/econ/events/ti6/force_staff_ti6.vpcf"
			icon = 4
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FORCE_STAFF["force_staff3"] then
			effect = "particles/econ/events/winter_major_2017/force_staff_wm07.vpcf"
			icon = 3
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FORCE_STAFF["force_staff2"] then
			effect = "particles/econ/events/ti7/force_staff_ti7.vpcf"
			icon = 2
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FORCE_STAFF["force_staff"] then
			effect = "particles/econ/events/fall_major_2016/force_staff_fm06.vpcf"
			icon = 1
		end
	end

	hero.force_staff_effect = effect
	hero.force_staff_icon = icon
end

function Imbattlepass:GetRadianceEffect(hero)
	local effect = "particles/items2_fx/radiance_owner.vpcf"
	local effect2 = "particles/items2_fx/radiance.vpcf"
	local icon = 0

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_RADIANCE["radiance4"] then
			effect = "particles/econ/events/ti9/radiance_owner_ti9.vpcf"
			effect2 = "particles/econ/events/ti9/radiance_ti9.vpcf"
			icon = 4
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_RADIANCE["radiance3"] then
			effect = "particles/econ/events/ti8/radiance_owner_ti8.vpcf"
			effect2 = "particles/econ/events/ti8/radiance_ti8.vpcf"
			icon = 3
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_RADIANCE["radiance2"] then
			effect = "particles/econ/events/ti6/radiance_owner_ti6.vpcf"
			effect2 = "particles/econ/events/ti6/radiance_ti6.vpcf"
			icon = 2
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_RADIANCE["radiance"] then
			effect = "particles/econ/events/ti7/radiance_owner_ti7.vpcf"
			effect2 = "particles/econ/events/ti7/radiance_ti7.vpcf"
			icon = 1
		end
	end

	hero.radiance_effect_owner = effect
	hero.radiance_effect = effect2
	hero.radiance_icon = icon
end

function Imbattlepass:GetSheepstickEffect(hero)
	local effect = "particles/items_fx/item_sheepstick.vpcf"
	local model = "models/props_gameplay/pig.vmdl"
	local icon = 0

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SHEEPSTICK["sheepstick2"] then
			effect = "particles/econ/items/shadow_shaman/shadow_shaman_sheepstick/shadowshaman_voodoo_sheepstick.vpcf"
			model = "models/props_gameplay/roquelaire/roquelaire.vmdl"
			icon = 2
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SHEEPSTICK["sheepstick"] then
			effect = "particles/econ/events/winter_major_2017/item_sheepstick_wm07.vpcf"
			model = "models/props_gameplay/pig_blue.vmdl"
			icon = 1
		end
	end

	hero.sheepstick_effect = effect
	hero.sheepstick_model = model
	hero.sheepstick_icon = icon
end

function Imbattlepass:GetShivaEffect(hero)
	local effect = "particles/items2_fx/shivas_guard_active.vpcf"
	local effect2 = "particles/items2_fx/shivas_guard_impact.vpcf"
	local icon = 0

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SHIVA["shiva4"] then
			effect = "particles/econ/events/ti9/shivas_guard_ti9_active.vpcf"
			effect2 = "particles/econ/events/ti9/shivas_guard_ti9_impact.vpcf"
			icon = 4
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SHIVA["shiva3"] then
			effect = "particles/econ/events/ti8/shivas_guard_ti8_active.vpcf"
			effect2 = "particles/econ/events/ti8/shivas_guard_ti8_impact.vpcf"
			icon = 3
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SHIVA["shiva2"] then
			effect = "particles/econ/events/newbloom_2015/shivas_guard_active_nian2015.vpcf"
			effect2 = "particles/econ/events/newbloom_2015/shivas_guard_impact_nian2015.vpcf"
			icon = 2
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SHIVA["shiva"] then
			effect = "particles/econ/events/ti7/shivas_guard_active_ti7.vpcf"
			effect2 = "particles/econ/events/ti7/shivas_guard_impact_ti7.vpcf"
			icon = 1
		end
	end

	hero.shiva_blast_effect = effect
	hero.shiva_hit_effect = effect2
	hero.shiva_icon = icon
end

function Imbattlepass:GetMekansmEffect(hero)
	local effect = "particles/items2_fx/mekanism.vpcf"
	local effect2 = "particles/items2_fx/mekanism_recipient.vpcf"
	local effect3 = "particles/items3_fx/warmage.vpcf"
	local effect4 = "particles/items3_fx/warmage_recipient.vpcf"
	local effect5 = "particles/items3_fx/warmage_mana_nonhero.vpcf"
	local icon = 0

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_MEKANSM["mekansm4"] then
			effect = "particles/econ/events/ti9/mekanism_ti9.vpcf"
			effect2 = "particles/econ/events/ti9/mekanism_recipient_ti9.vpcf"
			effect3 = "particles/items3_fx/warmage2.vpcf" -- make new effect, placeholder
			effect4 = "particles/items3_fx/warmage2_recipient.vpcf" -- make new effect, placeholder
			effect5 = "particles/items3_fx/warmage2_mana_nonhero.vpcf" -- make new effect, placeholder
			icon = 4
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_MEKANSM["mekansm3"] then
			effect = "particles/econ/events/ti8/mekanism_ti8.vpcf"
			effect2 = "particles/econ/events/ti8/mekanism_recipient_ti8.vpcf"
			effect3 = "particles/items3_fx/warmage2.vpcf" -- make new effect, placeholder
			effect4 = "particles/items3_fx/warmage2_recipient.vpcf" -- make new effect, placeholder
			effect5 = "particles/items3_fx/warmage2_mana_nonhero.vpcf" -- make new effect, placeholder
			icon = 3
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_MEKANSM["mekansm2"] then
			effect = "particles/econ/events/ti6/mekanism_ti6.vpcf"
			effect2 = "particles/econ/events/ti6/mekanism_recipient_ti6.vpcf"
			effect3 = "particles/items3_fx/warmage2.vpcf"
			effect4 = "particles/items3_fx/warmage2_recipient.vpcf"
			effect5 = "particles/items3_fx/warmage2_mana_nonhero.vpcf"
			icon = 2
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_MEKANSM["mekansm"] then
			effect = "particles/econ/events/ti7/mekanism_ti7.vpcf"
			effect2 = "particles/econ/events/ti7/mekanism_recipient_ti7.vpcf"
			effect3 = "particles/items3_fx/warmage1.vpcf"
			effect4 = "particles/items3_fx/warmage1_recipient.vpcf"
			effect5 = "particles/items3_fx/warmage1_mana_nonhero.vpcf"
			icon = 1
		end
	end

	hero.mekansm_effect = effect
	hero.mekansm_hit_effect = effect2
	hero.guardian_greaves_effect = effect3
	hero.guardian_greaves_hit_effect = effect4
	hero.guardian_greaves_hit_alt_effect = effect5
	hero.mekansm_icon = icon
end

function Imbattlepass:GetFountainEffect(hero)
	local effect = ""

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain21"] then
			effect = "particles/econ/events/ti9/fountain_regen_ti9_lvl3.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain20"] then
			effect = "particles/econ/events/ti9/fountain_regen_ti9_lvl2.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain19"] then
			effect = "particles/econ/events/ti9/fountain_regen_ti9.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain18"] then
			effect = "particles/econ/events/ti8/fountain_regen_ti8_lvl3.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain17"] then
			effect = "particles/econ/events/ti8/fountain_regen_ti8_lvl2.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain16"] then
			effect = "particles/econ/events/ti8/fountain_regen_ti8.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain15"] then
			effect = "particles/econ/events/ti5/radiant_fountain_regen_lvl2_ti5.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain14"] then
			effect = "particles/econ/events/ti5/radiant_fountain_regen_ti5.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain13"] then
			effect = "particles/econ/events/ti6/radiant_fountain_regen_ti6_lvl3.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain12"] then
			effect = "particles/econ/events/ti6/radiant_fountain_regen_ti6_lvl2.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain11"] then
			effect = "particles/econ/events/ti6/radiant_fountain_regen_ti6.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain10"] then
			effect = "particles/econ/events/ti4/radiant_fountain_regen_ti4.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain9"] then
			effect = "particles/econ/events/winter_major_2017/radiant_fountain_regen_wm07_lvl3.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain8"] then
			effect = "particles/econ/events/winter_major_2017/radiant_fountain_regen_wm07_lvl2.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain7"] then
			effect = "particles/econ/events/winter_major_2017/radiant_fountain_regen_wm07_lvl1.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain6"] then
			effect = "particles/econ/events/ti7/fountain_regen_ti7_lvl3.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain5"] then
			effect = "particles/econ/events/ti7/fountain_regen_ti7_lvl2.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain4"] then
			effect = "particles/econ/events/ti7/fountain_regen_ti7.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain3"] then
			effect = "particles/econ/events/fall_major_2016/radiant_fountain_regen_fm06_lvl3.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain2"] then
			effect = "particles/econ/events/fall_major_2016/radiant_fountain_regen_fm06_lvl2.vpcf"
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_FOUNTAIN["fountain"] then
			effect = "particles/econ/events/fall_major_2016/radiant_fountain_regen_fm06_lvl1.vpcf"
		end
	end

	hero.fountain_effect = effect
end

function Imbattlepass:GetBottleEffect(hero)
	local effect = "particles/items_fx/bottle.vpcf"
	local icon = 0

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BOTTLE["bottle5"] then
			effect = "particles/econ/events/ti8/bottle_ti8.vpcf"
			icon = 5
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BOTTLE["bottle4"] then
			effect = "particles/econ/events/ti5/bottle_ti5.vpcf"
			icon = 4
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BOTTLE["bottle3"] then
			effect = "particles/econ/events/ti6/bottle_ti6.vpcf"
			icon = 3
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BOTTLE["bottle2"] then
			effect = "particles/econ/events/ti4/bottle_ti4.vpcf"
			icon = 2
		elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BOTTLE["bottle"] then
			effect = "particles/econ/events/ti7/bottle_ti7.vpcf"
			icon = 1
		end
	end

	hero.bottle_effect = effect
	hero.bottle_icon = icon
--	CustomNetTables:SetTableValue("player_battlepass", tostring(hero:GetPlayerID()), {bottle_icon = icon})
end

function Imbattlepass:GetHeroEffect(hero)
	if hero:GetUnitName() == "npc_dota_hero_axe" then
		hero.pre_attack_sound = "Hero_Axe.PreAttack"
		hero.attack_sound = "Hero_Axe.Attack"
		hero.counter_helix_pfx = "particles/units/heroes/hero_axe/axe_attack_blur_counterhelix.vpcf"
		hero.culling_blade_kill_pfx = "particles/units/heroes/hero_axe/axe_culling_blade_kill.vpcf"
		hero.culling_blade_boost_pfx = "particles/units/heroes/hero_axe/axe_culling_blade_boost.vpcf"
		hero.culling_blade_sprint_pfx = "particles/units/heroes/hero_axe/axe_cullingblade_sprint.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_centaur" then
		hero.double_edge_pfx = "particles/units/heroes/hero_centaur/centaur_double_edge.vpcf"
		hero.double_edge_body_pfx = "particles/units/heroes/hero_centaur/centaur_double_edge_body.vpcf"
		hero.double_edge_phase_pfx = "particles/units/heroes/hero_centaur/centaur_double_edge_phase.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_dark_seer" then
		hero.ion_shell_effect = "particles/units/heroes/hero_dark_seer/dark_seer_ion_shell.vpcf"
		hero.ion_shell_damage_effect = "particles/units/heroes/hero_dark_seer/dark_seer_ion_shell_damage.vpcf"
		hero.ion_shell_sound = "Hero_Dark_Seer.Ion_Shield_Start"
		hero.ion_shell_end_sound = "Hero_Dark_Seer.Ion_Shield_end"
	elseif hero:GetUnitName() == "npc_dota_hero_death_prophet" then
		CustomNetTables:SetTableValue("battlepass", "death_prophet", {
			silence = "particles/units/heroes/hero_death_prophet/death_prophet_silence.vpcf",
			silence_impact = "particles/units/heroes/hero_death_prophet/death_prophet_silence_impact.vpcf",
			silence_overhead = "particles/generic_gameplay/generic_silenced.vpcf",
			silence_custom = "particles/units/heroes/hero_death_prophet/death_prophet_silence_custom.vpcf",
		})
	elseif hero:GetUnitName() == "npc_dota_hero_drow_ranger" then
		hero.base_attack_projectile = "particles/units/heroes/hero_drow/drow_base_attack.vpcf"
		hero.frost_arrows_debuff_pfx = "particles/units/heroes/hero_drow/drow_frost_arrow_debuff.vpcf"
		hero.marksmanship_arrow_pfx = "particles/units/heroes/hero_drow/drow_marksmanship_attack.vpcf"
		hero.marksmanship_frost_arrow_pfx = "particles/units/heroes/hero_drow/drow_marksmanship_frost_arrow.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_earthshaker" then
		hero.fissure_pfx = "particles/units/heroes/hero_earthshaker/earthshaker_fissure.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_huskar" then
		hero.life_break_cast_effect = "particles/units/heroes/hero_huskar/huskar_life_break_cast.vpcf"
		hero.life_break_start_effect = "particles/units/heroes/hero_huskar/huskar_life_break_spellstart.vpcf"
		hero.life_break_effect = "particles/units/heroes/hero_huskar/huskar_life_break.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_juggernaut" then
		hero.blade_dance_effect = "particles/units/heroes/hero_juggernaut/juggernaut_crit_tgt.vpcf"
		hero.blade_dance_sound = "Hero_Juggernaut.BladeDance"
		hero.omni_slash_hit_effect = "particles/units/heroes/hero_juggernaut/juggernaut_omni_slash_tgt.vpcf"
		hero.omni_slash_trail_effect = "particles/units/heroes/hero_juggernaut/juggernaut_omni_slash_trail.vpcf"
		hero.omni_slash_dash_effect = "particles/units/heroes/hero_juggernaut/juggernaut_omni_dash.vpcf"
		hero.omni_slash_status_effect = "particles/status_fx/status_effect_omnislash.vpcf"
		hero.omni_slash_end = "particles/units/heroes/hero_juggernaut/juggernaut_omni_end.vpcf"
		hero.omni_slash_light = "particles/units/heroes/hero_juggernaut/juggernaut_omnislash_light.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_leshrac" then
		CustomNetTables:SetTableValue("battlepass", "leshrac", {
			diabolic_edict = "particles/units/heroes/hero_leshrac/leshrac_diabolic_edict.vpcf",
		})
	elseif hero:GetUnitName() == "npc_dota_hero_life_stealer" then
		CustomNetTables:SetTableValue("battlepass", "life_stealer", {
			open_wounds_impact = "particles/units/heroes/hero_life_stealer/life_stealer_open_wounds_impact.vpcf",
			open_wounds = "particles/units/heroes/hero_life_stealer/life_stealer_open_wounds.vpcf",
			open_wounds_status_effect = "particles/status_fx/status_effect_life_stealer_open_wounds.vpcf",
		})
	elseif hero:GetUnitName() == "npc_dota_hero_nyx_assassin" then
		hero.spiked_carapace_pfx = "particles/units/heroes/hero_nyx_assassin/nyx_assassin_spiked_carapace.vpcf"
		hero.spiked_carapace_debuff_pfx = "particles/units/heroes/hero_nyx_assassin/nyx_assassin_spiked_carapace_hit.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_skywrath_mage" then
		hero.arcane_bolt_pfx = "particles/units/heroes/hero_skywrath_mage/skywrath_mage_arcane_bolt.vpcf"
	elseif hero:GetUnitName() == "npc_dota_hero_wisp" then
		hero.tether_effect = "particles/units/heroes/hero_wisp/wisp_tether.vpcf"
		hero.spirits_effect = "particles/units/heroes/hero_wisp/wisp_guardian.vpcf"
		hero.spirits_explosion_effect = "particles/units/heroes/hero_wisp/wisp_guardian_explosion.vpcf"
		hero.spirits_explosion_small_effect = "particles/units/heroes/hero_wisp/wisp_guardian_explosion_small.vpcf"
		hero.overcharge_effect = "particles/units/heroes/hero_wisp/wisp_overcharge.vpcf"
		hero.relocate_channel_effect = "particles/units/heroes/hero_wisp/wisp_relocate_channel.vpcf"
		hero.relocate_marker_effect = "particles/units/heroes/hero_wisp/wisp_relocate_marker.vpcf"
		hero.relocate_teleport_effect = "particles/units/heroes/hero_wisp/wisp_relocate_teleport.vpcf"
		hero.relocate_teleport_out_effect = "particles/units/heroes/hero_wisp/wisp_relocate_teleport_out.vpcf"
		hero.relocate_marker_endpoint_effect = "particles/units/heroes/hero_wisp/wisp_relocate_marker_endpoint.vpcf"
		hero.death_effect = "particles/units/heroes/hero_wisp/wisp_death.vpcf"
		hero.relocate_timer_buff = "particles/units/heroes/hero_wisp/wisp_relocate_timer_buff.vpcf"

		hero.relocate_sound = "Hero_Wisp.Relocate"
		hero.relocate_return_in_sound = "Hero_Wisp.Return"
		hero.relocate_return_out_sound = "Hero_Wisp.TeleportOut"
	end

	local ply_table = CustomNetTables:GetTableValue("battlepass", tostring(hero:GetPlayerID()))

	if ply_table and ply_table.bp_rewards == 0 then
		return
	end

	if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) ~= nil then
		if hero:GetUnitName() == "npc_dota_hero_axe" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_AXE["axe_immortal"] then
				Wearable:_WearProp(hero, "12964", "weapon")
				Wearable:_WearProp(hero, "12965", "armor")
				Wearable:_WearProp(hero, "12966", "belt")
				Wearable:_WearProp(hero, "12968", "head")

				hero.pre_attack_sound = "Hero_Axe.PreAttack.Jungle"
				hero.attack_sound = "Hero_Axe.Attack.Jungle"
				hero.counter_helix_pfx = "particles/econ/items/axe/ti9_jungle_axe/ti9_jungle_axe_attack_blur_counterhelix.vpcf"
				hero.culling_blade_kill_pfx = "particles/econ/items/axe/ti9_jungle_axe/ti9_jungle_axe_culling_blade_kill.vpcf"
				hero.culling_blade_boost_pfx = "particles/econ/items/axe/ti9_jungle_axe/ti9_jungle_axe_culling_blade_boost.vpcf"
				hero.culling_blade_sprint_pfx = "particles/econ/items/axe/ti9_jungle_axe/ti9_jungle_axe_culling_blade_sprint.vpcf"

				hero:AddNewModifier(hero, nil, "modifier_axe_arcana", {})
				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {style = style})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_bristleback" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BRISTLEBACK["bristleback_rare2"] then
				Wearable:_WearProp(hero, "9786", "back", "1")
				Wearable:_WearProp(hero, "9787", "arms", "1")
				Wearable:_WearProp(hero, "9788", "head", "1")
				Wearable:_WearProp(hero, "9789", "neck", "1")
				Wearable:_WearProp(hero, "9790", "weapon", "1")
			elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_BRISTLEBACK["bristleback_rare"] then
				Wearable:_WearProp(hero, "9786", "back", "0")
				Wearable:_WearProp(hero, "9787", "arms", "0")
				Wearable:_WearProp(hero, "9788", "head", "0")
				Wearable:_WearProp(hero, "9789", "neck", "0")
				Wearable:_WearProp(hero, "9790", "weapon", "0")
			end
		elseif hero:GetUnitName() == "npc_dota_hero_centaur" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_CENTAUR["centaur_immortal"] then
				hero.double_edge_pfx = "particles/econ/items/centaur/centaur_ti9/centaur_double_edge_ti9.vpcf"
				hero.double_edge_body_pfx = "particles/econ/items/centaur/centaur_ti9/centaur_double_edge_body_ti9.vpcf"
				hero.double_edge_phase_pfx = "particles/econ/items/centaur/centaur_ti9/centaur_double_edge_phase_ti9.vpcf"

				Wearable:_WearProp(hero, "12945", "weapon")

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_chen" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_CHEN["chen_mythical"] then
				Wearable:_WearProp(hero, "9950", "head")
				Wearable:_WearProp(hero, "9951", "weapon")
				Wearable:_WearProp(hero, "9952", "mount")
				Wearable:_WearProp(hero, "9953", "shoulder")
				Wearable:_WearProp(hero, "9954", "arms")
			end
		elseif hero:GetUnitName() == "npc_dota_hero_dark_seer" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_DARK_SEER["dark_seer_immortal2"] then
				Wearable:_WearProp(hero, "12299", "arms")
				hero.ion_shell_effect = "particles/econ/items/dark_seer/dark_seer_ti8_immortal_arms/dark_seer_ti8_immortal_ion_shell_golden.vpcf"
				hero.ion_shell_damage_effect = "particles/econ/items/dark_seer/dark_seer_ti8_immortal_arms/dark_seer_ti8_immortal_ion_shell_dmg_golden.vpcf"
				hero.ion_shell_icon = 2
				hero.ion_shell_sound = "Hero_Dark_Seer.Ion_Shield_Start.TI8"
				hero.ion_shell_end_sound = "Hero_Dark_Seer.Ion_Shield_end.TI8"
			elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_DARK_SEER["dark_seer_immortal"] then
				Wearable:_WearProp(hero, "9740", "arms")
				hero.ion_shell_effect = "particles/econ/items/dark_seer/dark_seer_ti8_immortal_arms/dark_seer_ti8_immortal_ion_shell.vpcf"
				hero.ion_shell_damage_effect = "particles/econ/items/dark_seer/dark_seer_ti8_immortal_arms/dark_seer_ti8_immortal_ion_shell_dmg.vpcf"
				hero.ion_shell_icon = 1
				hero.ion_shell_sound = "Hero_Dark_Seer.Ion_Shield_Start.TI8"
				hero.ion_shell_end_sound = "Hero_Dark_Seer.Ion_Shield_end.TI8"
			end
		elseif hero:GetUnitName() == "npc_dota_hero_death_prophet" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_DEATH_PROPHET["death_prophet_immortal"] then
				CustomNetTables:SetTableValue("battlepass", "death_prophet", {
					silence = "particles/econ/items/death_prophet/death_prophet_ti9/death_prophet_silence_ti9.vpcf",
					silence_impact = "particles/econ/items/death_prophet/death_prophet_ti9/death_prophet_silence_impact_ti9.vpcf",
					silence_overhead = "particles/econ/items/death_prophet/death_prophet_ti9/death_prophet_silence_custom_ti9_overhead_model.vpcf",
					silence_custom = "particles/econ/items/death_prophet/death_prophet_ti9/death_prophet_silence_custom_ti9.vpcf",
				})

				Wearable:_WearProp(hero, "12931", "head")

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_drow_ranger" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_DROW_RANGER["drow_ranger_immortal"] then
				hero.base_attack_projectile = "particles/econ/items/drow/drow_ti9_immortal/drow_ti9_base_attack.vpcf"
				hero.frost_arrows_debuff_pfx = "particles/econ/items/drow/drow_ti9_immortal/drow_ti9_frost_arrow_debuff.vpcf"
				hero.marksmanship_arrow_pfx = "particles/econ/items/drow/drow_ti9_immortal/drow_ti9_marksman.vpcf"
				hero.marksmanship_frost_arrow_pfx = "particles/econ/items/drow/drow_ti9_immortal/drow_ti9_marksman_frost.vpcf"
				hero:SetRangedProjectileName("particles/econ/items/drow/drow_ti9_immortal/drow_ti9_base_attack.vpcf")

				Wearable:_WearProp(hero, "12946", "weapon")

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_earthshaker" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_EARTHSHAKER["earthshaker_immortal"] then
				hero.fissure_pfx = "particles/econ/items/earthshaker/earthshaker_ti9/earthshaker_fissure_ti9.vpcf"

				Wearable:_WearProp(hero, "12969", "weapon")

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_enigma" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_ENIGMA["enigma_immortal"] then
				Wearable:_WearProp(hero, "8326", "arms")

				hero.black_hole_effect = "particles/hero/enigma/enigma_blackhole_ti5_scaleable.vpcf"
				hero.black_hole_sound = "Imba.EnigmaBlackHoleTi5"
				hero.black_hole_icon = 1
			elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_ENIGMA["enigma_mythical"] then
				Wearable:_WearProp(hero, "12329", "arms")
				Wearable:_WearProp(hero, "12330", "armor")
				Wearable:_WearProp(hero, "12332", "head")
				hero.eidolon_model = "models/items/enigma/eidolon/absolute_zero_updated_eidolon/absolute_zero_updated_eidolon.vmdl"
			end
		elseif hero:GetUnitName() == "npc_dota_hero_huskar" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_HUSKAR["huskar_immortal"] then
				Wearable:_WearProp(hero, "8188", "head")
				hero.life_break_cast_effect = "particles/econ/items/huskar/huskar_searing_dominator/huskar_searing_lifebreak_cast.vpcf"
				hero.life_break_start_effect = "particles/econ/items/huskar/huskar_searing_dominator/huskar_searing_lifebreak_spellstart.vpcf"
				hero.life_break_effect = "particles/econ/items/huskar/huskar_searing_dominator/huskar_searing_life_break.vpcf"
				hero.life_break_icon = 1
			end
		elseif hero:GetUnitName() == "npc_dota_hero_juggernaut" then
			if next_reward_shown == true and Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_JUGGERNAUT["juggernaut_arcana"] then
				local style = 0
				if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_JUGGERNAUT["juggernaut_arcana2"] then
					style = 1
				end

				if style == 0 then
					hero.blade_dance_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_crit_tgt.vpcf"
					hero.omni_slash_hit_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_omni_slash_tgt.vpcf"
					hero.omni_slash_trail_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_omni_slash_trail.vpcf"
					hero.omni_slash_dash_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_omni_dash.vpcf"
					hero.omni_slash_status_effect = "particles/econ/items/juggernaut/jugg_arcana/status_effect_jugg_arcana_omni.vpcf"
					hero.omni_slash_end = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_omni_end.vpcf"
					hero.arcana_trigger_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_trigger.vpcf"
					hero.omni_slash_light = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_omnislash_light.vpcf"
				elseif style == 1 then
					hero.blade_dance_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_v2_crit_tgt.vpcf"
					hero.omni_slash_hit_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_v2_omni_slash_tgt.vpcf"
					hero.omni_slash_trail_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_v2_omni_slash_trail.vpcf"
					hero.omni_slash_dash_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_v2_omni_dash.vpcf"
					hero.omni_slash_status_effect = "particles/econ/items/juggernaut/jugg_arcana/status_effect_jugg_arcana_v2_omni.vpcf"
					hero.omni_slash_end = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_v2_omni_end.vpcf"
					hero.arcana_trigger_effect = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_v2_trigger.vpcf"
					hero.omni_slash_light = "particles/econ/items/juggernaut/jugg_arcana/juggernaut_arcana_v2_omnislash_light.vpcf"
				end

				hero.blade_dance_sound = "Hero_Juggernaut.BladeDance.Arcana"

				hero:AddNewModifier(hero, nil, "modifier_juggernaut_arcana", {})
				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {style = style})
				Wearable:_WearProp(hero, "9059", "head", style)
			end
		elseif hero:GetUnitName() == "npc_dota_hero_leshrac" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_LESHRAC["leshrac_immortal"] then
				CustomNetTables:SetTableValue("battlepass", "leshrac", {
					diabolic_edict = "particles/econ/items/leshrac/leshrac_ti9_immortal_head/leshrac_ti9_immortal_edict.vpcf",
				})

				Wearable:_WearProp(hero, "12933", "head")

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {style = 1})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_life_stealer" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_LIFE_STEALER["life_stealer_immortal2"] then
				CustomNetTables:SetTableValue("battlepass", "life_stealer", {
					open_wounds_impact = "particles/econ/items/lifestealer/ls_ti9_immortal_gold/ls_ti9_open_wounds_gold_impact.vpcf",
					open_wounds = "particles/econ/items/lifestealer/ls_ti9_immortal_gold/ls_ti9_open_wounds_gold.vpcf",
					open_wounds_status_effect = "particles/econ/items/lifestealer/ls_ti9_immortal_gold/status_effect_ls_ti9_open_wounds_gold.vpcf",
				})

				Wearable:_WearProp(hero, "12998", "weapon")

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {style = 1})
			elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_LIFE_STEALER["life_stealer_immortal"] then
				CustomNetTables:SetTableValue("battlepass", "life_stealer", {
					open_wounds_impact = "particles/econ/items/lifestealer/ls_ti9_immortal/ls_ti9_open_wounds_impact.vpcf",
					open_wounds = "particles/econ/items/lifestealer/ls_ti9_immortal/ls_ti9_open_wounds.vpcf",
					open_wounds_status_effect = "particles/econ/items/lifestealer/ls_ti9_immortal/status_effect_ls_ti9_open_wounds.vpcf",
				})

				Wearable:_WearProp(hero, "12934", "weapon")

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_lina" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_LINA["lina_arcana"] then
				Wearable:_WearProp(hero, "4794", "head")

				hero.dragon_slave_effect = "particles/econ/items/lina/lina_head_headflame/lina_spell_dragon_slave_headflame.vpcf"
				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_nyx_assassin" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_NYX_ASSASSIN["nyx_assassin_immortal"] then
				hero.spiked_carapace_pfx = "particles/econ/items/nyx_assassin/nyx_ti9_immortal/nyx_ti9_carapace.vpcf"
				hero.spiked_carapace_debuff_pfx = "particles/econ/items/nyx_assassin/nyx_ti9_immortal/nyx_ti9_carapace_hit.vpcf"

				Wearable:_WearProp(hero, "12957", "back")
			end

			-- custom icons
			hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
		elseif hero:GetUnitName() == "npc_dota_hero_pudge" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_PUDGE["pudge_arcana"] then
				local style = 0
				if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_PUDGE["pudge_arcana2"] then
					style = 1
				end

				Wearable:_WearProp(hero, "7756", "back", style)

				-- custom icons
				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {style = style})
			end

			hero.hook_pfx = "particles/units/heroes/hero_pudge/pudge_meathook.vpcf"

			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_PUDGE["pudge_immortal"] then
				hero.hook_pfx = "particles/econ/items/pudge/pudge_dragonclaw/pudge_meathook_dragonclaw_imba.vpcf"
				Wearable:_WearProp(hero, "4007", "weapon")
			end
		elseif hero:GetUnitName() == "npc_dota_hero_skywrath_mage" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SKYWRATH_MAGE["skywrath_mage_immortal2"] then
				hero.arcane_bolt_pfx = "particles/econ/items/skywrath_mage/skywrath_ti9_immortal_back/skywrath_mage_ti9_arcane_bolt_golden.vpcf"

				Wearable:_WearProp(hero, "12993", "back")

				-- custom icons
				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {style = 1})
			elseif Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_SKYWRATH_MAGE["skywrath_mage_immortal"] then
				hero.arcane_bolt_pfx = "particles/econ/items/skywrath_mage/skywrath_ti9_immortal_back/skywrath_mage_ti9_arcane_bolt.vpcf"

				Wearable:_WearProp(hero, "12926", "back")

				-- custom icons
				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
--		elseif hero:GetUnitName() == "npc_dota_hero_tidehunter" then
--			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_TIDEHUNTER["tidehunter_ancient"] then
--				Wearable:RemoveWearables(hero)
--				hero.arms = SpawnEntityFromTableSynchronous("prop_dynamic", {model = "models/items/tidehunter/Celth_AzhagTidehunter/tidehunter_arms_wh/tidehunter_arms_wh.vmdl"})
--				hero.back = SpawnEntityFromTableSynchronous("prop_dynamic", {model = "models/items/tidehunter/Celth_AzhagTidehunter/tidehunter_back_wh/tidehunter_back_wh.vmdl"})
--				hero.belt = SpawnEntityFromTableSynchronous("prop_dynamic", {model = "models/items/tidehunter/Celth_AzhagTidehunter/tidehunter_belt_wh/tidehunter_belt_wh.vmdl"})
--				hero.head = SpawnEntityFromTableSynchronous("prop_dynamic", {model = "models/items/tidehunter/Celth_AzhagTidehunter/tidehunter_head_wh/tidehunter_head_wh.vmdl"})
--				hero.offhand = SpawnEntityFromTableSynchronous("prop_dynamic", {model = "models/items/tidehunter/Celth_AzhagTidehunter/tidehunter_offhand_wh/tidehunter_offhand_wh.vmdl"})
--				hero.weapon = SpawnEntityFromTableSynchronous("prop_dynamic", {model = "models/items/tidehunter/Celth_AzhagTidehunter/tidehunter_weapon_wh/tidehunter_weapon_wh.vmdl"})
--			end
		elseif hero:GetUnitName() == "npc_dota_hero_ursa" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_URSA["ursa_immortal"] then
				Wearable:_WearProp(hero, "4212", "head")
				Wearable:_WearProp(hero, "4213", "back")
				Wearable:_WearProp(hero, "4214", "belt")
				Wearable:_WearProp(hero, "4215", "arms")
			end
		elseif hero:GetUnitName() == "npc_dota_hero_vengefulspirit" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_VENGEFULSPIRIT["vengefulspirit_immortal"] then
				Wearable:_WearProp(hero, "9749", "back")
				hero.magic_missile_effect = "particles/econ/items/vengeful/vs_ti8_immortal_shoulder/vs_ti8_immortal_magic_missle.vpcf"
				hero.magic_missile_icon = 1
				hero.magic_missile_sound = "Hero_VengefulSpirit.MagicMissile.TI8"
				hero.magic_missile_sound_hit = "Hero_VengefulSpirit.MagicMissileImpact.TI8"
			end
		elseif hero:GetUnitName() == "npc_dota_hero_wisp" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_WISP["wisp_arcana"] then
				Wearable:_WearProp(hero, "9235", "head")

				hero.tether_effect = "particles/econ/items/wisp/wisp_tether_ti7.vpcf"
				hero.spirits_effect = "particles/econ/items/wisp/wisp_guardian_ti7.vpcf"
				hero.spirits_explosion_effect = "particles/econ/items/wisp/wisp_guardian_explosion_ti7.vpcf"
				hero.spirits_explosion_small_effect = "particles/econ/items/wisp/wisp_guardian_explosion_small_ti7.vpcf"
				hero.overcharge_effect = "particles/econ/items/wisp/wisp_overcharge_ti7.vpcf"
				hero.relocate_channel_effect = "particles/econ/items/wisp/wisp_relocate_channel_ti7.vpcf"
				hero.relocate_marker_effect = "particles/econ/items/wisp/wisp_relocate_marker_ti7.vpcf"
				hero.relocate_teleport_effect = "particles/econ/items/wisp/wisp_relocate_teleport_ti7.vpcf"
				hero.relocate_teleport_out_effect = "particles/econ/items/wisp/wisp_relocate_teleport_ti7_out.vpcf"
				hero.relocate_marker_endpoint_effect = "particles/econ/items/wisp/wisp_relocate_marker_ti7_endpoint.vpcf"
				hero.death_effect = "particles/econ/items/wisp/wisp_death_ti7.vpcf"
				hero.relocate_timer_buff = "particles/econ/items/wisp/wisp_relocate_timer_buff_ti7.vpcf"

				hero.relocate_sound = "Hero_Wisp.Relocate.Arc"
				hero.relocate_return_in_sound = "Hero_Wisp.Return.Arc"
				hero.relocate_return_out_sound = "Hero_Wisp.TeleportOut.Arc"

				hero.tether_icon = 1
				hero.spirits_icon = 1

				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		elseif hero:GetUnitName() == "npc_dota_hero_zuus" then
			if Imbattlepass:GetRewardUnlocked(hero:GetPlayerID()) >= IMBATTLEPASS_ZUUS["zuus_arcana"] then
				Wearable:_WearProp(hero, "6914", "head")
				Wearable:_WearProp(hero, "8692", "arms")
				Wearable:_WearProp(hero, "8693", "back")

				hero.static_field_icon = 1
				hero.static_field_effect = "particles/econ/items/zeus/arcana_chariot/zeus_arcana_static_field.vpcf"
				hero.thundergods_wrath_start_effect = "particles/econ/items/zeus/arcana_chariot/zeus_arcana_thundergods_wrath_start.vpcf"
				hero.thundergods_wrath_effect = "particles/econ/items/zeus/arcana_chariot/zeus_arcana_thundergods_wrath.vpcf"
				hero.thundergods_wrath_icon = 1
				hero.thundergods_wrath_pre_sound = "Hero_Zuus.GodsWrath.PreCast.Arcana"

				hero.blink_effect = "particles/econ/items/zeus/arcana_chariot/zeus_arcana_blink_start.vpcf"
				hero.blink_effect_end = "particles/econ/items/zeus/arcana_chariot/zeus_arcana_blink_end.vpcf"
				hero.blink_icon = "zuus"
				hero.blink_sound = "Hero_Zeus.BlinkDagger.Arcana"
				hero:AddNewModifier(hero, nil, "modifier_battlepass_wearable_spellicons", {})
			end
		end
	end
end

function HasPudgeArcana(ID)
	if Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_PUDGE["pudge_arcana2"] then
		return 1
	elseif Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_PUDGE["pudge_arcana"] then
		return 0
	else
		return nil
	end
end

function HasJuggernautArcana(ID)
	if next_reward_shown == false then return nil end

	if Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_JUGGERNAUT["juggernaut_arcana2"] then
		return 1
	elseif Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_JUGGERNAUT["juggernaut_arcana"] then
		return 0
	else
		return nil
	end
end

function HasZuusArcana(ID)
	if Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_ZUUS["zuus_arcana"] then
		return 0
	else
		return nil
	end
end

function HasLinaArcana(ID)
	if Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_LINA["lina_arcana"] then
		return 0
	else
		return nil
	end
end

function HasWispArcana(ID)
	if Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_LINA["lina_arcana"] then
		return 0
	else
		return nil
	end
end

-- not an arcana, but this is used for replacing top bar icon (FORMAT ME PLEASE)
function HasAxeArcana(ID)
	if Imbattlepass:GetRewardUnlocked(ID) >= IMBATTLEPASS_AXE["axe_immortal"] then
		return 0
	else
		return nil
	end
end

-- override pick screen and top bar image
function Imbattlepass:BattlepassCheckArcana()
	for i = 0, PlayerResource:GetPlayerCount() - 1 do
		local arcana = {}
		arcana["npc_dota_hero_axe"] = HasAxeArcana(i)
		arcana["npc_dota_hero_juggernaut"] = HasJuggernautArcana(i)
		arcana["npc_dota_hero_pudge"] = HasPudgeArcana(i)
		arcana["npc_dota_hero_zuus"] = HasZuusArcana(i)
		arcana["npc_dota_hero_wisp"] = HasWispArcana(i)

		CustomNetTables:SetTableValue("battlepass", tostring(i), {arcana = arcana})
	end
end

function Imbattlepass:InitializeTowers()
	local radiant_level = 0
	local dire_level = 0

	for ID = 0, PlayerResource:GetPlayerCount() - 1 do
		if PlayerResource:GetPlayer(ID):GetTeamNumber() == 2 then
			radiant_level = radiant_level + Imbattlepass:GetRewardUnlocked(ID)
		else
			dire_level = dire_level + Imbattlepass:GetRewardUnlocked(ID)
		end
	end

	print("Team Battlepass Levels:", radiant_level, dire_level)

	local towers = Entities:FindAllByClassname("npc_dota_tower")

	for _, tower in pairs(towers) do
		local level = dire_level
		local particle = "particles/world_tower/tower_upgrade/ti7_dire_tower_orb.vpcf"
		local team = "dire"
--		local max_particle = "particles/world_tower/tower_upgrade/ti7_radiant_tower_lvl11_orb.vpcf"

		if tower:GetTeamNumber() == 2 then
			level = radiant_level
			particle = "particles/world_tower/tower_upgrade/ti7_radiant_tower_orb.vpcf"
			team = "radiant"
		end

		tower:SetModel("models/props_structures/tower_upgrade/tower_upgrade.vmdl")
		tower:SetOriginalModel("models/props_structures/tower_upgrade/tower_upgrade.vmdl")
		tower:SetMaterialGroup(team.."_level"..Imbattlepass:CheckBattlepassTowerLevel(level).mg)
		ParticleManager:CreateParticle(particle, PATTACH_ABSORIGIN_FOLLOW, tower)
		StartAnimation(tower, {duration=9999, activity=ACT_DOTA_CAPTURE, rate=1.0, translate = 'level'..Imbattlepass:CheckBattlepassTowerLevel(level).anim})
	end
end

function Imbattlepass:CheckBattlepassTowerLevel(level)
	local animation
	local material_group

	if level < 25 then
		material_group = "1"
		animation = "1"
	elseif level >= 25 then
		material_group = "2"
		animation = "1"
	elseif level >= 50 then
		material_group = "2"
		animation = "2"
	elseif level >= 75 then
		material_group = "3"
		animation = "2"
	elseif level >= 100 then
		material_group = "3"
		animation = "3"
	elseif level >= 150 then
		material_group = "4"
		animation = "3"
	elseif level >= 200 then
		material_group = "4"
		animation = "4"
	elseif level >= 300 then
		material_group = "5"
		animation = "4"
	elseif level >= 500 then
		material_group = "5"
		animation = "5"
	elseif level >= 1000 then
		material_group = "6"
		animation = "5"
	elseif level >= 2000 then
		material_group = "6"
		animation = "6"
	end

	local params = {
		anim = animation,
		mg = material_group
	}

	return params
end

function Imbattlepass:DonatorTag(keys)
	local hero = PlayerResource:GetPlayer(keys.ID):GetAssignedHero()
	local ply_table = CustomNetTables:GetTableValue("battlepass", tostring(keys.ID))

	CustomNetTables:SetTableValue("battlepass", tostring(keys.ID), {
		XP = ply_table.XP,
		MaxXP = ply_table.MaxXP,
		Lvl = ply_table.Lvl,
		ply_color = ply_table.ply_color,
		title = ply_table.title,
		title_color = ply_table.title_color,
		XP_change = 0,
		IMR_5v5_change = 0,
		donator_level = ply_table.donator_level,
		donator_color = ply_table.donator_color,
		in_game_tag = keys.tag,
		bp_rewards = ply_table.bp_rewards,
		player_xp = ply_table.player_xp
	})

	hero:SetupHealthBarLabel()
end

function Imbattlepass:BattlepassRewards(keys)
	local ply_table = CustomNetTables:GetTableValue("battlepass", tostring(keys.ID))

	CustomNetTables:SetTableValue("battlepass", tostring(keys.ID), {
		XP = ply_table.XP,
		MaxXP = ply_table.MaxXP,
		Lvl = ply_table.Lvl,
		ply_color = ply_table.ply_color,
		title = ply_table.title,
		title_color = ply_table.title_color,
		XP_change = 0,
		IMR_5v5_change = 0,
		donator_level = ply_table.donator_level,
		donator_color = ply_table.donator_color,
		in_game_tag = ply_table.in_game_tag,
		bp_rewards = keys.bp_rewards,
		player_xp = ply_table.player_xp
	})
end

function Imbattlepass:PlayerXP(keys)
	local ply_table = CustomNetTables:GetTableValue("battlepass", tostring(keys.ID))

	CustomNetTables:SetTableValue("battlepass", tostring(keys.ID), {
		XP = ply_table.XP,
		MaxXP = ply_table.MaxXP,
		Lvl = ply_table.Lvl,
		ply_color = ply_table.ply_color,
		title = ply_table.title,
		title_color = ply_table.title_color,
		XP_change = 0,
		IMR_5v5_change = 0,
		donator_level = ply_table.donator_level,
		donator_color = ply_table.donator_color,
		in_game_tag = ply_table.in_game_tag,
		bp_rewards = ply_table.bp_rewards,
		player_xp = keys.player_xp
	})
end
