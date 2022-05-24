AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/player/kleiner.mdl"}
ENT.StartHealth = 100
ENT.UsePlayerModelMovement = true

-- ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY"}
-- ENT.FriendsWithAllPlayerAllies = true

ENT.HasMeleeAttack = true
ENT.AnimTbl_MeleeAttack = {"vjseq_seq_meleeattack01"}

-- ENT.WeaponInventory_AntiArmor = true
-- ENT.WeaponInventory_AntiArmorList = {"weapon_vj_rpg"}
-- ENT.WeaponInventory_Melee = true
-- ENT.WeaponInventory_MeleeList = {"weapon_vj_crowbar"}

ENT.HasGrenadeAttack = true
ENT.AnimTbl_RangeAttack = {"vjges_gesture_item_throw"}

ENT.AnimTbl_Medic_GiveHealth = {"vjges_gesture_item_drop"}

ENT.BloodColor = "Red"

ENT.AnimTbl_CallForHelp = {"vjges_gesture_signal_group","vjges_gesture_signal_forward"}
ENT.CallForBackUpOnDamageAnimation = {"vjges_gesture_signal_halt"}

ENT.CanFlinch = 1
ENT.FlinchChance = 1
ENT.NextFlinchTime = 0.6
ENT.AnimTbl_Flinch = {"vjges_flinch_01","vjges_flinch_02"}
ENT.HitGroupFlinching_Values = {
	{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_01","vjges_flinch_head_02"}},
	{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_phys_01","vjges_flinch_phys_02","vjges_flinch_back_01"}},
	{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_stomach_01","vjges_flinch_stomach_02"}},
	{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_shoulder_l"}},
	{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_shoulder_r"}}
}

ENT.HasDeathAnimation = true
ENT.AnimTbl_Death = {"death_02","death_03","death_04"}
ENT.DeathAnimationChance = 2

ENT.FootStepTimeRun = 0.3
ENT.FootStepTimeWalk = 0.5

ENT.SoundTbl_FootStep = {"npc/footsteps/hardboot_generic1.wav","npc/footsteps/hardboot_generic2.wav","npc/footsteps/hardboot_generic3.wav","npc/footsteps/hardboot_generic4.wav","npc/footsteps/hardboot_generic5.wav","npc/footsteps/hardboot_generic6.wav","npc/footsteps/hardboot_generic8.wav"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_ASSAULT] = {
		Primary = {
			"weapon_vj_mw_acr"
		},
		Secondary = {
			"weapon_vj_mw_p99"
		},
	},
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_mg36"
		},
		Secondary = {
			"weapon_vj_mw_p99"
		},
	},
	[VJ_MW_LOADOUT_SHOTGUN] = {
		Primary = {
			"weapon_vj_mw_aa12"
		},
		Secondary = {
			"weapon_vj_mw_p99"
		},
	},
	[VJ_MW_LOADOUT_SMG] = {
		Primary = {
			"weapon_vj_mw_mp9"
		},
		Secondary = {
			"weapon_vj_mw_p99"
		},
	},
	[VJ_MW_LOADOUT_SNIPER] = {
		Primary = {
			"weapon_vj_mw_mk14"
		},
		Secondary = {
			"weapon_vj_mw_p99"
		},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if self.OnInit then
		self:OnInit()
	end

	-- self.ForceFireWeapon = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetLoadout(loadID)
	if self.Loadouts[loadID] then
		local loadout = self.Loadouts[loadID]
		self.Secondary = self:Give(VJ_PICK(loadout.Secondary))
		self.Primary = self:Give(VJ_PICK(loadout.Primary))

		self:SetBodygroup(1,loadID -1)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	-- local wep = self:GetActiveWeapon()
	-- if self.ForceFireWeapon && IsValid(wep) then
	-- 	self:SetEnemy(self)
	-- 	wep:PrimaryAttack()
	-- end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo, hitgroup)
	-- local wep = self:GetActiveWeapon()
	-- if IsValid(wep)/* && IsValid(self:GetEnemy())*/ && math.random(1,1) == 1 then
	-- 	self.ForceFireWeapon = true
	-- end
end