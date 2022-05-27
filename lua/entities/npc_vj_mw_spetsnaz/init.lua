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
local gasMasks = {
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_d.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_d.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_d.mdl"
}
local string_find = string.find
--
function ENT:OnInit()
	local mdl = self:GetModel()
	if string_find(mdl,"urban") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_urban_sniper.mdl"
	elseif string_find(mdl,"woodland") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_woodland_sniper.mdl"
	elseif string_find(mdl,"airborne") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_air_sniper.mdl"
	elseif string_find(mdl,"arctic") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_arctic_sniper.mdl"
	end
	if VJ_HasValue(gasMasks,mdl) then
		self.SoundTbl_OnGrenadeSight = {
			"cpthazama/mw/npc/spetsnaz/mask/grenade1.wav",
			"cpthazama/mw/npc/spetsnaz/mask/grenade2.wav",
			"cpthazama/mw/npc/spetsnaz/mask/grenade3.wav",
			"cpthazama/mw/npc/spetsnaz/mask/grenade4.wav",
			"cpthazama/mw/npc/spetsnaz/mask/grenade5.wav",
			"cpthazama/mw/npc/spetsnaz/mask/grenade6.wav",
			"cpthazama/mw/npc/spetsnaz/mask/grenade7.wav",
			"cpthazama/mw/npc/spetsnaz/mask/grenade8.wav",
		}
		self.SoundTbl_Suppressing = {
			"cpthazama/mw/npc/spetsnaz/mask/suppressing1.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing10.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing11.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing12.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing2.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing3.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing4.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing5.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing6.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing7.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing8.wav",
			"cpthazama/mw/npc/spetsnaz/mask/suppressing9.wav",
		}
		self.SoundTbl_Alert = {
			"cpthazama/mw/npc/spetsnaz/mask/alert1.wav",
			"cpthazama/mw/npc/spetsnaz/mask/alert2.wav",
			"cpthazama/mw/npc/spetsnaz/mask/alert3.wav",
			"cpthazama/mw/npc/spetsnaz/mask/alert4.wav",
			"cpthazama/mw/npc/spetsnaz/mask/alert5.wav",
			"cpthazama/mw/npc/spetsnaz/mask/alert6.wav",
		}
	else
		self.SoundTbl_OnGrenadeSight = {
			"cpthazama/mw/npc/spetsnaz/grenade1.wav",
			"cpthazama/mw/npc/spetsnaz/grenade10.wav",
			"cpthazama/mw/npc/spetsnaz/grenade11.wav",
			"cpthazama/mw/npc/spetsnaz/grenade12.wav",
			"cpthazama/mw/npc/spetsnaz/grenade13.wav",
			"cpthazama/mw/npc/spetsnaz/grenade14.wav",
			"cpthazama/mw/npc/spetsnaz/grenade15.wav",
			"cpthazama/mw/npc/spetsnaz/grenade16.wav",
			"cpthazama/mw/npc/spetsnaz/grenade17.wav",
			"cpthazama/mw/npc/spetsnaz/grenade18.wav",
			"cpthazama/mw/npc/spetsnaz/grenade19.wav",
			"cpthazama/mw/npc/spetsnaz/grenade2.wav",
			"cpthazama/mw/npc/spetsnaz/grenade20.wav",
			"cpthazama/mw/npc/spetsnaz/grenade3.wav",
			"cpthazama/mw/npc/spetsnaz/grenade4.wav",
			"cpthazama/mw/npc/spetsnaz/grenade5.wav",
			"cpthazama/mw/npc/spetsnaz/grenade6.wav",
			"cpthazama/mw/npc/spetsnaz/grenade7.wav",
			"cpthazama/mw/npc/spetsnaz/grenade8.wav",
			"cpthazama/mw/npc/spetsnaz/grenade9.wav",
		}
		self.SoundTbl_Death = {
			"cpthazama/mw/npc/spetsnaz/death1.wav",
			"cpthazama/mw/npc/spetsnaz/death10.wav",
			"cpthazama/mw/npc/spetsnaz/death11.wav",
			"cpthazama/mw/npc/spetsnaz/death12.wav",
			"cpthazama/mw/npc/spetsnaz/death13.wav",
			"cpthazama/mw/npc/spetsnaz/death14.wav",
			"cpthazama/mw/npc/spetsnaz/death2.wav",
			"cpthazama/mw/npc/spetsnaz/death3.wav",
			"cpthazama/mw/npc/spetsnaz/death4.wav",
			"cpthazama/mw/npc/spetsnaz/death5.wav",
			"cpthazama/mw/npc/spetsnaz/death6.wav",
			"cpthazama/mw/npc/spetsnaz/death7.wav",
			"cpthazama/mw/npc/spetsnaz/death8.wav",
			"cpthazama/mw/npc/spetsnaz/death9.wav",
		}
		self.SoundTbl_Suppressing = {
			"cpthazama/mw/npc/spetsnaz/suppressing1.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing10.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing11.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing12.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing13.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing14.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing15.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing16.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing17.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing18.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing19.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing2.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing20.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing3.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing4.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing5.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing6.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing7.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing8.wav",
			"cpthazama/mw/npc/spetsnaz/suppressing9.wav",
		}
		self.SoundTbl_Alert = {
			"cpthazama/mw/npc/spetsnaz/alert1.wav",
			"cpthazama/mw/npc/spetsnaz/alert10.wav",
			"cpthazama/mw/npc/spetsnaz/alert11.wav",
			"cpthazama/mw/npc/spetsnaz/alert2.wav",
			"cpthazama/mw/npc/spetsnaz/alert3.wav",
			"cpthazama/mw/npc/spetsnaz/alert4.wav",
			"cpthazama/mw/npc/spetsnaz/alert5.wav",
			"cpthazama/mw/npc/spetsnaz/alert6.wav",
			"cpthazama/mw/npc/spetsnaz/alert7.wav",
			"cpthazama/mw/npc/spetsnaz/alert8.wav",
			"cpthazama/mw/npc/spetsnaz/alert9.wav",
		}
		self.SoundTbl_Pain = {
			"cpthazama/mw/npc/spetsnaz/pain1.wav",
			"cpthazama/mw/npc/spetsnaz/pain10.wav",
			"cpthazama/mw/npc/spetsnaz/pain11.wav",
			"cpthazama/mw/npc/spetsnaz/pain2.wav",
			"cpthazama/mw/npc/spetsnaz/pain3.wav",
			"cpthazama/mw/npc/spetsnaz/pain4.wav",
			"cpthazama/mw/npc/spetsnaz/pain5.wav",
			"cpthazama/mw/npc/spetsnaz/pain6.wav",
			"cpthazama/mw/npc/spetsnaz/pain7.wav",
			"cpthazama/mw/npc/spetsnaz/pain8.wav",
			"cpthazama/mw/npc/spetsnaz/pain9.wav",
		}
		self.SoundTbl_OnKilledEnemy = {
			"cpthazama/mw/npc/spetsnaz/kill1.wav",
			"cpthazama/mw/npc/spetsnaz/kill10.wav",
			"cpthazama/mw/npc/spetsnaz/kill2.wav",
			"cpthazama/mw/npc/spetsnaz/kill3.wav",
			"cpthazama/mw/npc/spetsnaz/kill4.wav",
			"cpthazama/mw/npc/spetsnaz/kill5.wav",
			"cpthazama/mw/npc/spetsnaz/kill6.wav",
			"cpthazama/mw/npc/spetsnaz/kill7.wav",
			"cpthazama/mw/npc/spetsnaz/kill8.wav",
			"cpthazama/mw/npc/spetsnaz/kill9.wav",
		}
		self.SoundTbl_CombatIdle = {
			"cpthazama/mw/npc/spetsnaz/attack1.wav",
			"cpthazama/mw/npc/spetsnaz/attack2.wav",
			"cpthazama/mw/npc/spetsnaz/attack3.wav",
			"cpthazama/mw/npc/spetsnaz/attack4.wav",
			"cpthazama/mw/npc/spetsnaz/attack5.wav",
			"cpthazama/mw/npc/spetsnaz/attack6.wav",
			"cpthazama/mw/npc/spetsnaz/attack7.wav",
			"cpthazama/mw/npc/spetsnaz/attack8.wav",
		}
	end
	self:SetLoadout(math.random(1,5))
end