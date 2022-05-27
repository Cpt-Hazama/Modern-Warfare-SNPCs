AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_africa_militia_a.mdl",
	"models/tfusion/playermodels/mw3/mp_africa_militia_b.mdl",
	"models/tfusion/playermodels/mw3/mp_africa_militia_c.mdl",
	"models/tfusion/playermodels/mw3/mp_africa_militia_d.mdl",
}
ENT.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_ghillie_africa_militia_sniper.mdl"

ENT.VJ_NPC_Class = {"CLASS_AFRICA"}

ENT.WeaponInventory_AntiArmor = true
ENT.WeaponInventory_AntiArmorList = {"weapon_vj_mw_rpg","weapon_vj_mw_m320"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_ASSAULT] = {
		Primary = {
			"weapon_vj_mw_ak47",
			"weapon_vj_mw_fad",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_pecheneg",
			"weapon_vj_mw_m60e4",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_SHOTGUN] = {
		Primary = {
			"weapon_vj_mw_m1887",
			"weapon_vj_mw_striker",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_SMG] = {
		Primary = {
			"weapon_vj_mw_pp90m1",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
	[VJ_MW_LOADOUT_SNIPER] = {
		Primary = {
			"weapon_vj_mw_mk14",
			"weapon_vj_mw_dragunov",
		},
		Secondary = {
			"weapon_vj_mw_44_magnum",
			"weapon_vj_mw_fiveseven",
			"weapon_vj_mw_g18",
			"weapon_vj_mw_usp45",
			"weapon_vj_mw_desert_eagle",
		},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end