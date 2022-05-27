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

ENT.SoundTbl_Idle = {
	"cpthazama/mw/npc/delta/idle1.wav",
	"cpthazama/mw/npc/delta/idle2.wav",
	"cpthazama/mw/npc/delta/idle3.wav",
	"cpthazama/mw/npc/delta/idle4.wav",
	"cpthazama/mw/npc/delta/idle5.wav",
	"cpthazama/mw/npc/delta/idle6.wav",
}
ENT.SoundTbl_IdleDialogue = {}
ENT.SoundTbl_Death = {
	"cpthazama/mw/npc/delta/death1.wav",
	"cpthazama/mw/npc/delta/death10.wav",
	"cpthazama/mw/npc/delta/death11.wav",
	"cpthazama/mw/npc/delta/death12.wav",
	"cpthazama/mw/npc/delta/death13.wav",
	"cpthazama/mw/npc/delta/death2.wav",
	"cpthazama/mw/npc/delta/death3.wav",
	"cpthazama/mw/npc/delta/death4.wav",
	"cpthazama/mw/npc/delta/death5.wav",
	"cpthazama/mw/npc/delta/death6.wav",
	"cpthazama/mw/npc/delta/death7.wav",
	"cpthazama/mw/npc/delta/death8.wav",
	"cpthazama/mw/npc/delta/death9.wav",
}
ENT.SoundTbl_OnPlayerSight = {}
ENT.SoundTbl_CombatIdle = {
	"cpthazama/mw/npc/delta/attack1.wav",
	"cpthazama/mw/npc/delta/attack10.wav",
	"cpthazama/mw/npc/delta/attack11.wav",
	"cpthazama/mw/npc/delta/attack12.wav",
	"cpthazama/mw/npc/delta/attack13.wav",
	"cpthazama/mw/npc/delta/attack14.wav",
	"cpthazama/mw/npc/delta/attack15.wav",
	"cpthazama/mw/npc/delta/attack2.wav",
	"cpthazama/mw/npc/delta/attack3.wav",
	"cpthazama/mw/npc/delta/attack4.wav",
	"cpthazama/mw/npc/delta/attack5.wav",
	"cpthazama/mw/npc/delta/attack6.wav",
	"cpthazama/mw/npc/delta/attack7.wav",
	"cpthazama/mw/npc/delta/attack8.wav",
	"cpthazama/mw/npc/delta/attack9.wav",
}
ENT.SoundTbl_IdleDialogueAnswer = {}
ENT.SoundTbl_OnGrenadeSight = {
	"cpthazama/mw/npc/delta/grenade1.wav",
	"cpthazama/mw/npc/delta/grenade10.wav",
	"cpthazama/mw/npc/delta/grenade11.wav",
	"cpthazama/mw/npc/delta/grenade12.wav",
	"cpthazama/mw/npc/delta/grenade13.wav",
	"cpthazama/mw/npc/delta/grenade14.wav",
	"cpthazama/mw/npc/delta/grenade15.wav",
	"cpthazama/mw/npc/delta/grenade16.wav",
	"cpthazama/mw/npc/delta/grenade17.wav",
	"cpthazama/mw/npc/delta/grenade18.wav",
	"cpthazama/mw/npc/delta/grenade19.wav",
	"cpthazama/mw/npc/delta/grenade2.wav",
	"cpthazama/mw/npc/delta/grenade3.wav",
	"cpthazama/mw/npc/delta/grenade4.wav",
	"cpthazama/mw/npc/delta/grenade5.wav",
	"cpthazama/mw/npc/delta/grenade6.wav",
	"cpthazama/mw/npc/delta/grenade7.wav",
	"cpthazama/mw/npc/delta/grenade8.wav",
	"cpthazama/mw/npc/delta/grenade9.wav",
}
ENT.SoundTbl_GrenadeAttack = {
	"cpthazama/mw/npc/delta/throwgrenade1.wav",
	"cpthazama/mw/npc/delta/throwgrenade10.wav",
	"cpthazama/mw/npc/delta/throwgrenade11.wav",
	"cpthazama/mw/npc/delta/throwgrenade12.wav",
	"cpthazama/mw/npc/delta/throwgrenade13.wav",
	"cpthazama/mw/npc/delta/throwgrenade14.wav",
	"cpthazama/mw/npc/delta/throwgrenade2.wav",
	"cpthazama/mw/npc/delta/throwgrenade3.wav",
	"cpthazama/mw/npc/delta/throwgrenade4.wav",
	"cpthazama/mw/npc/delta/throwgrenade5.wav",
	"cpthazama/mw/npc/delta/throwgrenade6.wav",
	"cpthazama/mw/npc/delta/throwgrenade7.wav",
	"cpthazama/mw/npc/delta/throwgrenade8.wav",
	"cpthazama/mw/npc/delta/throwgrenade9.wav",
}
ENT.SoundTbl_Suppressing = {
	"cpthazama/mw/npc/delta/suppressing1.wav",
	"cpthazama/mw/npc/delta/suppressing10.wav",
	"cpthazama/mw/npc/delta/suppressing11.wav",
	"cpthazama/mw/npc/delta/suppressing12.wav",
	"cpthazama/mw/npc/delta/suppressing13.wav",
	"cpthazama/mw/npc/delta/suppressing14.wav",
	"cpthazama/mw/npc/delta/suppressing15.wav",
	"cpthazama/mw/npc/delta/suppressing16.wav",
	"cpthazama/mw/npc/delta/suppressing17.wav",
	"cpthazama/mw/npc/delta/suppressing18.wav",
	"cpthazama/mw/npc/delta/suppressing19.wav",
	"cpthazama/mw/npc/delta/suppressing2.wav",
	"cpthazama/mw/npc/delta/suppressing3.wav",
	"cpthazama/mw/npc/delta/suppressing4.wav",
	"cpthazama/mw/npc/delta/suppressing5.wav",
	"cpthazama/mw/npc/delta/suppressing6.wav",
	"cpthazama/mw/npc/delta/suppressing7.wav",
	"cpthazama/mw/npc/delta/suppressing8.wav",
	"cpthazama/mw/npc/delta/suppressing9.wav",
}
ENT.SoundTbl_Alert = {
	"cpthazama/mw/npc/delta/alert1.wav",
	"cpthazama/mw/npc/delta/alert10.wav",
	"cpthazama/mw/npc/delta/alert2.wav",
	"cpthazama/mw/npc/delta/alert3.wav",
	"cpthazama/mw/npc/delta/alert4.wav",
	"cpthazama/mw/npc/delta/alert5.wav",
	"cpthazama/mw/npc/delta/alert6.wav",
	"cpthazama/mw/npc/delta/alert7.wav",
	"cpthazama/mw/npc/delta/alert8.wav",
	"cpthazama/mw/npc/delta/alert9.wav",
}
ENT.SoundTbl_DamageByPlayer = {
	"cpthazama/mw/npc/delta/friendlyfire1.wav",
	"cpthazama/mw/npc/delta/friendlyfire10.wav",
	"cpthazama/mw/npc/delta/friendlyfire11.wav",
	"cpthazama/mw/npc/delta/friendlyfire12.wav",
	"cpthazama/mw/npc/delta/friendlyfire2.wav",
	"cpthazama/mw/npc/delta/friendlyfire3.wav",
	"cpthazama/mw/npc/delta/friendlyfire4.wav",
	"cpthazama/mw/npc/delta/friendlyfire5.wav",
	"cpthazama/mw/npc/delta/friendlyfire6.wav",
	"cpthazama/mw/npc/delta/friendlyfire7.wav",
	"cpthazama/mw/npc/delta/friendlyfire8.wav",
	"cpthazama/mw/npc/delta/friendlyfire9.wav",
}
ENT.SoundTbl_Pain = {
	"cpthazama/mw/npc/delta/pain1.wav",
	"cpthazama/mw/npc/delta/pain2.wav",
	"cpthazama/mw/npc/delta/pain3.wav",
	"cpthazama/mw/npc/delta/pain4.wav",
	"cpthazama/mw/npc/delta/pain5.wav",
}
ENT.SoundTbl_OnKilledEnemy = {
	"cpthazama/mw/npc/delta/kill1.wav",
	"cpthazama/mw/npc/delta/kill10.wav",
	"cpthazama/mw/npc/delta/kill2.wav",
	"cpthazama/mw/npc/delta/kill3.wav",
	"cpthazama/mw/npc/delta/kill4.wav",
	"cpthazama/mw/npc/delta/kill5.wav",
	"cpthazama/mw/npc/delta/kill6.wav",
	"cpthazama/mw/npc/delta/kill7.wav",
	"cpthazama/mw/npc/delta/kill8.wav",
	"cpthazama/mw/npc/delta/kill9.wav",
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end