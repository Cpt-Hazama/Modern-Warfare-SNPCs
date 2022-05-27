AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_sas_a.mdl",
	"models/tfusion/playermodels/mw3/mp_sas_b.mdl",
	"models/tfusion/playermodels/mw3/mp_sas_c.mdl"
}
ENT.SniperModel = "models/tfusion/playermodels/mw3/mp_sas_sniper.mdl"

ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY","CLASS_UNITED_KINGDOM"}
ENT.FriendsWithAllPlayerAllies = true

ENT.WeaponInventory_AntiArmor = true
ENT.WeaponInventory_AntiArmorList = {"weapon_vj_mw_xm25"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_ASSAULT] = {
		Primary = {
			"weapon_vj_mw_acr",
			"weapon_vj_mw_g36",
			"weapon_vj_mw_m16",
			"weapon_vj_mw_scar",
			"weapon_vj_mw_m4a1",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
		},
	},
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_pecheneg",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
		},
	},
	[VJ_MW_LOADOUT_SHOTGUN] = {
		Primary = {
			"weapon_vj_mw_spas12",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
		},
	},
	[VJ_MW_LOADOUT_SMG] = {
		Primary = {
			"weapon_vj_mw_mp5",
			"weapon_vj_mw_mp7",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
		},
	},
	[VJ_MW_LOADOUT_SNIPER] = {
		Primary = {
			"weapon_vj_mw_rsass",
		},
		Secondary = {
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_usp45",
		},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end