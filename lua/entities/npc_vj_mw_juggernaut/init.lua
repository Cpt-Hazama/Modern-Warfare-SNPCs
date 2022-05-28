AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/juggernaut_c.mdl",
	"models/tfusion/playermodels/mw3/juggernaut_novisor_b.mdl",
}
ENT.StartHealth = 350

ENT.VJ_NPC_Class = {"CLASS_RUSSIAN"}

ENT.MeleeAttackDamage = 20

ENT.MoveOrHideOnDamageByEnemy = false
ENT.HasWeaponBackAway = false
-- ENT.MoveRandomlyWhenShooting = false
ENT.WaitForEnemyToComeOut = false
ENT.HasGrenadeAttack = false

ENT.FlinchChance = 15

ENT.WeaponInventory_AntiArmor = true
ENT.WeaponInventory_AntiArmorList = {"weapon_vj_mw_m320"}

ENT.Loadouts = {
	[VJ_MW_LOADOUT_LMG] = {
		Primary = {
			"weapon_vj_mw_pecheneg"
		},
		-- Secondary = {
		-- 	"weapon_vj_mw_ak47",
		-- 	"weapon_vj_mw_striker",
		-- 	"weapon_vj_mw_mp412",
		-- 	"weapon_vj_mw_44_magnum"
		-- },
	}
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:GiveWeapons(VJ_MW_LOADOUT_LMG)

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
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSetupWeaponHoldTypeAnims(hType)
	local wep = self:GetActiveWeapon()
	if wep.MW_JuggernautOverride then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_CROSSBOW
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_CROSSBOW
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		return true
	end

	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnThink(ent,dist)
	if IsValid(self.VJ_TheController) then return end
	if IsValid(ent) && self.LastEnemyVisible then
		if dist > (self.Weapon_FiringDistanceFar *0.135) && CurTime() > (self.PauseChargeT or 0) then
			-- self.MoveRandomlyWhenShooting = false
			self:SetLastPosition(ent:GetPos())
			self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH",function(x) x:EngTask("TASK_FACE_ENEMY", 0) x.CanShootWhenMoving = true x.ConstantlyFaceEnemy = true end)
		else
			if self:IsMoving() && CurTime() > (self.NextStopMovementT or 0) then
				self:StopMoving()
				-- self.MoveRandomlyWhenShooting = true
				self.NextStopMovementT = CurTime() +math.Rand(1,3)
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMoveRandomlyWhenShooting()
	local dist = self.NearestPointToEnemyDistance
	if dist <= (self.Weapon_FiringDistanceFar *0.135) then
		local t = CurTime() +math.Rand(3,5)
		self.PauseChargeT = t
		self.NextStopMovementT = t
		return true
	end
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo, hitgroup)
	dmginfo:ScaleDamage(0.5)
end