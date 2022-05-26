AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_delta_elite_a.mdl",
	"models/tfusion/playermodels/mw3/mp_delta_elite_b.mdl",
	"models/tfusion/playermodels/mw3/mp_delta_elite_c.mdl",
	"models/tfusion/playermodels/mw3/mp_delta_elite_d.mdl"
}

ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY","CLASS_UNITED_STATES"}
ENT.FriendsWithAllPlayerAllies = true

ENT.WeaponInventory_AntiArmor = true
ENT.WeaponInventory_AntiArmorList = {"weapon_vj_mw_smaw","weapon_vj_mw_xm25","weapon_vj_mw_m320"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_ASSAULT] = {
		Primary = {
			"weapon_vj_mw_acr",
			"weapon_vj_mw_m4a1",
			"weapon_vj_mw_m16",
			"weapon_vj_mw_mk14",
			"weapon_vj_mw_scar",
			"weapon_vj_mw_g36",
			"weapon_vj_mw_ak47",
		},
		Secondary = {
			"weapon_vj_mw_p99",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_mp412"
		},
	},
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_mk46",
			"weapon_vj_mw_sa80",
			"weapon_vj_mw_pecheneg",
		},
		Secondary = {
			"weapon_vj_mw_p99",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_mp412"
		},
	},
	[VJ_MW_LOADOUT_SHOTGUN] = {
		Primary = {
			"weapon_vj_mw_aa12",
			"weapon_vj_mw_m1887",
			"weapon_vj_mw_striker",
		},
		Secondary = {
			"weapon_vj_mw_p99",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_mp412"
		},
	},
	[VJ_MW_LOADOUT_SMG] = {
		Primary = {
			"weapon_vj_mw_ump45",
			"weapon_vj_mw_mp7",
			"weapon_vj_mw_mp5",
			"weapon_vj_mw_p90",
			"weapon_vj_mw_ak74u",
		},
		Secondary = {
			"weapon_vj_mw_p99",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_mp412"
		},
	},
	[VJ_MW_LOADOUT_SNIPER] = {
		Primary = {
			"weapon_vj_mw_mk14",
			"weapon_vj_mw_msr",
			"weapon_vj_mw_as50",
			"weapon_vj_mw_rsass",
			"weapon_vj_mw_dragunov",
		},
		Secondary = {
			"weapon_vj_mw_p99",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_mp412"
		},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end