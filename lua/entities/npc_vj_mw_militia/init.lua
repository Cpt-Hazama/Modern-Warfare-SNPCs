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

ENT.SoundTbl_Death = {
	"cpthazama/mw/npc/militia/death1.wav",
	"cpthazama/mw/npc/militia/death10.wav",
	"cpthazama/mw/npc/militia/death11.wav",
	"cpthazama/mw/npc/militia/death12.wav",
	"cpthazama/mw/npc/militia/death13.wav",
	"cpthazama/mw/npc/militia/death14.wav",
	"cpthazama/mw/npc/militia/death2.wav",
	"cpthazama/mw/npc/militia/death3.wav",
	"cpthazama/mw/npc/militia/death4.wav",
	"cpthazama/mw/npc/militia/death5.wav",
	"cpthazama/mw/npc/militia/death6.wav",
	"cpthazama/mw/npc/militia/death7.wav",
	"cpthazama/mw/npc/militia/death8.wav",
	"cpthazama/mw/npc/militia/death9.wav",
}
ENT.SoundTbl_Suppressing = {
	"cpthazama/mw/npc/militia/suppressing1.wav",
	"cpthazama/mw/npc/militia/suppressing10.wav",
	"cpthazama/mw/npc/militia/suppressing11.wav",
	"cpthazama/mw/npc/militia/suppressing12.wav",
	"cpthazama/mw/npc/militia/suppressing13.wav",
	"cpthazama/mw/npc/militia/suppressing14.wav",
	"cpthazama/mw/npc/militia/suppressing15.wav",
	"cpthazama/mw/npc/militia/suppressing16.wav",
	"cpthazama/mw/npc/militia/suppressing17.wav",
	"cpthazama/mw/npc/militia/suppressing18.wav",
	"cpthazama/mw/npc/militia/suppressing19.wav",
	"cpthazama/mw/npc/militia/suppressing2.wav",
	"cpthazama/mw/npc/militia/suppressing20.wav",
	"cpthazama/mw/npc/militia/suppressing3.wav",
	"cpthazama/mw/npc/militia/suppressing4.wav",
	"cpthazama/mw/npc/militia/suppressing5.wav",
	"cpthazama/mw/npc/militia/suppressing6.wav",
	"cpthazama/mw/npc/militia/suppressing7.wav",
	"cpthazama/mw/npc/militia/suppressing8.wav",
	"cpthazama/mw/npc/militia/suppressing9.wav",
}
ENT.SoundTbl_Alert = {
	"cpthazama/mw/npc/militia/alert1.wav",
	"cpthazama/mw/npc/militia/alert10.wav",
	"cpthazama/mw/npc/militia/alert11.wav",
	"cpthazama/mw/npc/militia/alert2.wav",
	"cpthazama/mw/npc/militia/alert3.wav",
	"cpthazama/mw/npc/militia/alert4.wav",
	"cpthazama/mw/npc/militia/alert5.wav",
	"cpthazama/mw/npc/militia/alert6.wav",
	"cpthazama/mw/npc/militia/alert7.wav",
	"cpthazama/mw/npc/militia/alert8.wav",
	"cpthazama/mw/npc/militia/alert9.wav",
}
ENT.SoundTbl_Pain = {
	"cpthazama/mw/npc/militia/pain1.wav",
	"cpthazama/mw/npc/militia/pain10.wav",
	"cpthazama/mw/npc/militia/pain11.wav",
	"cpthazama/mw/npc/militia/pain2.wav",
	"cpthazama/mw/npc/militia/pain3.wav",
	"cpthazama/mw/npc/militia/pain4.wav",
	"cpthazama/mw/npc/militia/pain5.wav",
	"cpthazama/mw/npc/militia/pain6.wav",
	"cpthazama/mw/npc/militia/pain7.wav",
	"cpthazama/mw/npc/militia/pain8.wav",
	"cpthazama/mw/npc/militia/pain9.wav",
}
ENT.SoundTbl_CombatIdle = {
	"cpthazama/mw/npc/militia/attack1.wav",
	"cpthazama/mw/npc/militia/attack2.wav",
	"cpthazama/mw/npc/militia/attack3.wav",
	"cpthazama/mw/npc/militia/attack4.wav",
	"cpthazama/mw/npc/militia/attack5.wav",
	"cpthazama/mw/npc/militia/attack6.wav",
	"cpthazama/mw/npc/militia/attack7.wav",
	"cpthazama/mw/npc/militia/attack8.wav",
}
ENT.SoundTbl_BeforeMeleeAttack = {
	"cpthazama/mw/npc/militia/melee(1).wav",
	"cpthazama/mw/npc/militia/melee(2).wav",
	"cpthazama/mw/npc/militia/melee(3).wav",
	"cpthazama/mw/npc/militia/melee(4).wav",
	"cpthazama/mw/npc/militia/melee(5).wav",
	"cpthazama/mw/npc/militia/melee(6).wav",
	"cpthazama/mw/npc/militia/melee(7).wav"
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end