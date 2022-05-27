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
		Secondary = {
			"weapon_vj_mw_ak47",
			"weapon_vj_mw_striker",
			"weapon_vj_mw_mp412",
			"weapon_vj_mw_44_magnum"
		},
	}
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:GiveWeapons(VJ_MW_LOADOUT_LMG)
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
function ENT:CustomOnThink_AIEnabled()
	if IsValid(self.VJ_TheController) then return end
	local ent = self:GetEnemy()
	if IsValid(ent) && self.LastEnemyVisible then
		local dist = self.NearestPointToEnemyDistance
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