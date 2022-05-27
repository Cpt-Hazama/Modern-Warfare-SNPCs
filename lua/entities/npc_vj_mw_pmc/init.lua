AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_pmc_africa_a.mdl",
	"models/tfusion/playermodels/mw3/mp_pmc_africa_b.mdl",
	"models/tfusion/playermodels/mw3/mp_pmc_africa_c.mdl",
	"models/tfusion/playermodels/mw3/mp_pmc_africa_d.mdl",
	"models/tfusion/playermodels/mw3/mp_pmc_africa_e.mdl",
	"models/tfusion/playermodels/mw3/mp_pmc_africa_f.mdl"
}
ENT.SniperModel = "models/tfusion/playermodels/mw3/mp_ally_pmc_sniper.mdl"

ENT.VJ_NPC_Class = {"CLASS_PMC"}

ENT.WeaponInventory_AntiArmor = true
ENT.WeaponInventory_AntiArmorList = {"weapon_vj_mw_smaw","weapon_vj_mw_xm25"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_ASSAULT] = {
		Primary = {
			"weapon_vj_mw_ak47",
			"weapon_vj_mw_g36",
			"weapon_vj_mw_m4a1",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_pecheneg",
			"weapon_vj_mw_mg36",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_SHOTGUN] = {
		Primary = {
			"weapon_vj_mw_aa12",
			"weapon_vj_mw_spas12",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_SMG] = {
		Primary = {
			"weapon_vj_mw_pp90m1",
			"weapon_vj_mw_mp5",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_SNIPER] = {
		Primary = {
			"weapon_vj_mw_mk14",
			"weapon_vj_mw_msr",
			"weapon_vj_mw_l96a1",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end