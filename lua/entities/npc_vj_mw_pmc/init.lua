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

ENT.SoundTbl_Idle = {
	"cpthazama/mw/npc/rangers/idle1.wav",
	"cpthazama/mw/npc/rangers/idle2.wav",
	"cpthazama/mw/npc/rangers/idle3.wav",
	"cpthazama/mw/npc/rangers/idle4.wav",
	"cpthazama/mw/npc/rangers/idle5.wav",
	"cpthazama/mw/npc/rangers/idle6.wav",
	"cpthazama/mw/npc/rangers/idle7.wav",
	"cpthazama/mw/npc/rangers/idle8.wav",
}
ENT.SoundTbl_OnGrenadeSight = {
	"cpthazama/mw/npc/rangers/grenade1.wav",
	"cpthazama/mw/npc/rangers/grenade2.wav",
	"cpthazama/mw/npc/rangers/grenade3.wav",
	"cpthazama/mw/npc/rangers/grenade4.wav",
	"cpthazama/mw/npc/rangers/grenade5.wav",
	"cpthazama/mw/npc/rangers/grenade6.wav",
	"cpthazama/mw/npc/rangers/throwgrenade1.wav",
	"cpthazama/mw/npc/rangers/throwgrenade2.wav",
	"cpthazama/mw/npc/rangers/throwgrenade3.wav",
	"cpthazama/mw/npc/rangers/throwgrenade4.wav",
	"cpthazama/mw/npc/rangers/throwgrenade5.wav",
	"cpthazama/mw/npc/rangers/throwgrenade6.wav",
}
ENT.SoundTbl_Death = {
	"cpthazama/mw/npc/rangers/death1.wav",
	"cpthazama/mw/npc/rangers/death2.wav",
	"cpthazama/mw/npc/rangers/death3.wav",
	"cpthazama/mw/npc/rangers/death4.wav",
	"cpthazama/mw/npc/rangers/death5.wav",
}
ENT.SoundTbl_Suppressing = {
	"cpthazama/mw/npc/rangers/suppressing1.wav",
	"cpthazama/mw/npc/rangers/suppressing2.wav",
	"cpthazama/mw/npc/rangers/suppressing3.wav",
	"cpthazama/mw/npc/rangers/suppressing4.wav",
	"cpthazama/mw/npc/rangers/suppressing5.wav",
	"cpthazama/mw/npc/rangers/suppressing6.wav",
	"cpthazama/mw/npc/rangers/suppressing7.wav",
	"cpthazama/mw/npc/rangers/suppressing8.wav",
}
ENT.SoundTbl_Alert = {
	"cpthazama/mw/npc/rangers/contact1.wav",
	"cpthazama/mw/npc/rangers/contact10.wav",
	"cpthazama/mw/npc/rangers/contact11.wav",
	"cpthazama/mw/npc/rangers/contact12.wav",
	"cpthazama/mw/npc/rangers/contact13.wav",
	"cpthazama/mw/npc/rangers/contact14.wav",
	"cpthazama/mw/npc/rangers/contact15.wav",
	"cpthazama/mw/npc/rangers/contact16.wav",
	"cpthazama/mw/npc/rangers/contact17.wav",
	"cpthazama/mw/npc/rangers/contact18.wav",
	"cpthazama/mw/npc/rangers/contact19.wav",
	"cpthazama/mw/npc/rangers/contact2.wav",
	"cpthazama/mw/npc/rangers/contact20.wav",
	"cpthazama/mw/npc/rangers/contact21.wav",
	"cpthazama/mw/npc/rangers/contact22.wav",
	"cpthazama/mw/npc/rangers/contact23.wav",
	"cpthazama/mw/npc/rangers/contact24.wav",
	"cpthazama/mw/npc/rangers/contact25.wav",
	"cpthazama/mw/npc/rangers/contact26.wav",
	"cpthazama/mw/npc/rangers/contact27.wav",
	"cpthazama/mw/npc/rangers/contact28.wav",
	"cpthazama/mw/npc/rangers/contact29.wav",
	"cpthazama/mw/npc/rangers/contact3.wav",
	"cpthazama/mw/npc/rangers/contact30.wav",
	"cpthazama/mw/npc/rangers/contact31.wav",
	"cpthazama/mw/npc/rangers/contact32.wav",
	"cpthazama/mw/npc/rangers/contact33.wav",
	"cpthazama/mw/npc/rangers/contact34.wav",
	"cpthazama/mw/npc/rangers/contact35.wav",
	"cpthazama/mw/npc/rangers/contact36.wav",
	"cpthazama/mw/npc/rangers/contact37.wav",
	"cpthazama/mw/npc/rangers/contact38.wav",
	"cpthazama/mw/npc/rangers/contact39.wav",
	"cpthazama/mw/npc/rangers/contact4.wav",
	"cpthazama/mw/npc/rangers/contact40.wav",
	"cpthazama/mw/npc/rangers/contact41.wav",
	"cpthazama/mw/npc/rangers/contact42.wav",
	"cpthazama/mw/npc/rangers/contact5.wav",
	"cpthazama/mw/npc/rangers/contact6.wav",
	"cpthazama/mw/npc/rangers/contact7.wav",
	"cpthazama/mw/npc/rangers/contact8.wav",
	"cpthazama/mw/npc/rangers/contact9.wav",
}
ENT.SoundTbl_GrenadeAttack = {
	"cpthazama/mw/npc/rangers/throwgrenade1.wav",
	"cpthazama/mw/npc/rangers/throwgrenade2.wav",
	"cpthazama/mw/npc/rangers/throwgrenade3.wav",
	"cpthazama/mw/npc/rangers/throwgrenade4.wav",
	"cpthazama/mw/npc/rangers/throwgrenade5.wav",
	"cpthazama/mw/npc/rangers/throwgrenade6.wav",
}
ENT.SoundTbl_DamageByPlayer = {
	"cpthazama/mw/npc/rangers/friendlyfire1.wav",
	"cpthazama/mw/npc/rangers/friendlyfire2.wav",
	"cpthazama/mw/npc/rangers/friendlyfire3.wav",
	"cpthazama/mw/npc/rangers/friendlyfire4.wav",
	"cpthazama/mw/npc/rangers/friendlyfire5.wav",
	"cpthazama/mw/npc/rangers/friendlyfire6.wav",
}
ENT.SoundTbl_Pain = {
	"cpthazama/mw/npc/rangers/pain1.wav",
	"cpthazama/mw/npc/rangers/pain2.wav",
	"cpthazama/mw/npc/rangers/pain3.wav",
	"cpthazama/mw/npc/rangers/pain4.wav",
	"cpthazama/mw/npc/rangers/pain5.wav",
	"cpthazama/mw/npc/rangers/pain6.wav",
}
ENT.SoundTbl_OnKilledEnemy = {
	"cpthazama/mw/npc/rangers/kill1.wav",
	"cpthazama/mw/npc/rangers/kill10.wav",
	"cpthazama/mw/npc/rangers/kill2.wav",
	"cpthazama/mw/npc/rangers/kill3.wav",
	"cpthazama/mw/npc/rangers/kill4.wav",
	"cpthazama/mw/npc/rangers/kill5.wav",
	"cpthazama/mw/npc/rangers/kill6.wav",
	"cpthazama/mw/npc/rangers/kill7.wav",
	"cpthazama/mw/npc/rangers/kill8.wav",
	"cpthazama/mw/npc/rangers/kill9.wav",
}
ENT.SoundTbl_CombatIdle = {
	"cpthazama/mw/npc/rangers/attack1.wav",
	"cpthazama/mw/npc/rangers/attack2.wav",
	"cpthazama/mw/npc/rangers/attack3.wav",
	"cpthazama/mw/npc/rangers/attack4.wav",
	"cpthazama/mw/npc/rangers/attack5.wav",
	"cpthazama/mw/npc/rangers/attack6.wav",
	"cpthazama/mw/npc/rangers/attack7.wav",
	"cpthazama/mw/npc/rangers/attack8.wav",
	"cpthazama/mw/npc/rangers/attack9.wav",
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end