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

ENT.SoundTbl_OnGrenadeSight = {
	"cpthazama/mw/npc/sas/grenade1.wav",
	"cpthazama/mw/npc/sas/grenade2.wav",
	"cpthazama/mw/npc/sas/grenade3.wav",
	"cpthazama/mw/npc/sas/grenade4.wav",
	"cpthazama/mw/npc/sas/grenade5.wav",
}
ENT.SoundTbl_Death = {
	"cpthazama/mw/npc/sas/death1.wav",
	"cpthazama/mw/npc/sas/death2.wav",
	"cpthazama/mw/npc/sas/death3.wav",
	"cpthazama/mw/npc/sas/death4.wav",
	"cpthazama/mw/npc/sas/death5.wav",
	"cpthazama/mw/npc/sas/death6.wav",
}
ENT.SoundTbl_Suppressing = {
	"cpthazama/mw/npc/sas/suppressing1.wav",
	"cpthazama/mw/npc/sas/suppressing10.wav",
	"cpthazama/mw/npc/sas/suppressing11.wav",
	"cpthazama/mw/npc/sas/suppressing12.wav",
	"cpthazama/mw/npc/sas/suppressing2.wav",
	"cpthazama/mw/npc/sas/suppressing3.wav",
	"cpthazama/mw/npc/sas/suppressing4.wav",
	"cpthazama/mw/npc/sas/suppressing5.wav",
	"cpthazama/mw/npc/sas/suppressing6.wav",
	"cpthazama/mw/npc/sas/suppressing7.wav",
	"cpthazama/mw/npc/sas/suppressing8.wav",
	"cpthazama/mw/npc/sas/suppressing9.wav",
}
ENT.SoundTbl_Alert = {
	"cpthazama/mw/npc/sas/alert1.wav",
	"cpthazama/mw/npc/sas/alert2.wav",
	"cpthazama/mw/npc/sas/alert3.wav",
	"cpthazama/mw/npc/sas/alert4.wav",
	"cpthazama/mw/npc/sas/alert5.wav",
	"cpthazama/mw/npc/sas/alert6.wav",
}
ENT.SoundTbl_DamageByPlayer = {
	"cpthazama/mw/npc/sas/friendlyfire1.wav",
	"cpthazama/mw/npc/sas/friendlyfire2.wav",
	"cpthazama/mw/npc/sas/friendlyfire3.wav",
	"cpthazama/mw/npc/sas/friendlyfire4.wav",
}
ENT.SoundTbl_Pain = {
	"cpthazama/mw/npc/sas/pain1.wav",
	"cpthazama/mw/npc/sas/pain2.wav",
	"cpthazama/mw/npc/sas/pain3.wav",
	"cpthazama/mw/npc/sas/pain4.wav",
}
ENT.SoundTbl_CombatIdle = {
	"cpthazama/mw/npc/sas/attack1.wav",
	"cpthazama/mw/npc/sas/attack2.wav",
	"cpthazama/mw/npc/sas/attack3.wav",
	"cpthazama/mw/npc/sas/attack4.wav",
	"cpthazama/mw/npc/sas/attack5.wav",
	"cpthazama/mw/npc/sas/attack6.wav",
	"cpthazama/mw/npc/sas/attack7.wav",
	"cpthazama/mw/npc/sas/attack8.wav",
	"cpthazama/mw/npc/sas/attack9.wav",
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end