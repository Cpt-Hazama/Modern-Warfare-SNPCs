AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_gign_a.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_b.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_c.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_d.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_e.mdl"
}

ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY","CLASS_FRENCH"}
ENT.FriendsWithAllPlayerAllies = true

ENT.WeaponInventory_AntiArmor = true
ENT.WeaponInventory_AntiArmorList = {"weapon_vj_mw_smaw","weapon_vj_mw_m320"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_ASSAULT] = {
		Primary = {
			"weapon_vj_mw_g36",
			"weapon_vj_mw_pp90m1",
			"weapon_vj_mw_m4a1",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_mk46",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_SHOTGUN] = {
		Primary = {
			"weapon_vj_mw_aa12",
			"weapon_vj_mw_ksg",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_SMG] = {
		Primary = {
			"weapon_vj_mw_mp5",
			"weapon_vj_mw_ak74u",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
		},
	},
	[VJ_MW_LOADOUT_SNIPER] = {
		Primary = {
			"weapon_vj_mw_mk14",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
		},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end