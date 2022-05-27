AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_a.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_b.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_c.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_d.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_a.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_b.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_c.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_d.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_a.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_b.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_c.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_d.mdl"
}

ENT.VJ_NPC_Class = {"CLASS_RUSSIAN"}

ENT.WeaponInventory_AntiArmor = true
ENT.WeaponInventory_AntiArmorList = {"weapon_vj_mw_rpg","weapon_vj_mw_smaw"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_ASSAULT] = {
		Primary = {
			"weapon_vj_mw_ak47",
			"weapon_vj_mw_g36",
			"weapon_vj_mw_acr",
			"weapon_vj_mw_fad",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_p99",
			"weapon_vj_mw_mp412",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_pecheneg",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_p99",
			"weapon_vj_mw_mp412",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_SHOTGUN] = {
		Primary = {
			"weapon_vj_mw_spas12",
			"weapon_vj_mw_striker",
			"weapon_vj_mw_m1887",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_p99",
			"weapon_vj_mw_mp412",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_SMG] = {
		Primary = {
			"weapon_vj_mw_ak74u",
			"weapon_vj_mw_pp90m1",
			"weapon_vj_mw_mp5",
			"weapon_vj_mw_p90",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_p99",
			"weapon_vj_mw_mp412",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_SNIPER] = {
		Primary = {
			"weapon_vj_mw_dragunov",
			"weapon_vj_mw_as50",
			"weapon_vj_mw_rsass",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_p99",
			"weapon_vj_mw_mp412",
			"weapon_vj_mw_g18",
		},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	local mdl = self:GetModel()
	if string.find(mdl,"urban") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_urban_sniper.mdl"
	elseif string.find(mdl,"woodland") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_woodland_sniper.mdl"
	elseif string.find(mdl,"airborne") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_air_sniper.mdl"
	elseif string.find(mdl,"arctic") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_arctic_sniper.mdl"
	end
	self:SetLoadout(math.random(1,5))
end