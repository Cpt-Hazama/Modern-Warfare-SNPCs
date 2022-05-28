AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/player/kleiner.mdl"}
ENT.SniperModel = false
ENT.StartHealth = 100
ENT.UsePlayerModelMovement = true

-- ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY"}
-- ENT.FriendsWithAllPlayerAllies = true

ENT.HasMeleeAttack = true
ENT.AnimTbl_MeleeAttack = {"vjseq_seq_meleeattack01"}

-- ENT.WeaponInventory_AntiArmor = true
-- ENT.WeaponInventory_AntiArmorList = {"weapon_vj_rpg"}
ENT.WeaponInventory_Melee = false
ENT.WeaponInventory_MeleeList = {"weapon_vj_mw_knife"}

ENT.HasGrenadeAttack = true
ENT.GrenadeAttackModel = {"models/weapons/w_eq_fraggrenade.mdl"}
ENT.AnimTbl_GrenadeAttack = {"vjges_gesture_item_throw"}

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
ENT.AnimTbl_Death = {"vjseq_death_02","vjseq_death_03","vjseq_death_04"}
ENT.DeathAnimationChance = 2

ENT.FootStepTimeRun = 0.3
ENT.FootStepTimeWalk = 0.5

ENT.SoundTbl_FootStep = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
	return self:GetAttachment(self:LookupAttachment("eyes")).Ang:Forward()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if self.OnInit then
		self:OnInit()
	end

	self.NextWeaponSwitchT = CurTime() +math.Rand(2,4)
	-- self.ForceFireWeapon = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetLoadout(loadID)
	if self.Loadouts[loadID] then
		local isSniper = false
		if loadID == 5 && self.SniperModel then
			isSniper = true
			local cBounds = select(2,self:GetCollisionBounds())
			self:SetModel(VJ_PICK(self.SniperModel))
			self:SetCollisionBounds(Vector(cBounds.x,cBounds.y,cBounds.z),Vector(-cBounds.x,-cBounds.y,0))
		end
		self:GiveWeapons(loadID)
		if !isSniper then
			local usableBG = {}
			for _,v in pairs(self:GetBodyGroups()[2]) do
				if istable(v) then
					for i,a in pairs(v) do
						if string.find(a,VJ_MW_LOADOUT_TRANS[loadID]) then
							table.insert(usableBG,i)
							-- print("Added (1," .. i .. ") - " .. a)
						end
					end
				end
			end
			self:SetBodygroup(1,VJ_PICK(usableBG) or 0)
		end
		self:SetSkin(math.random(1,2))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GiveWeapons(loadID)
	local varWep = GetConVar("gmod_npcweapon"):GetString()
	if varWep != "" then
		self.Primary = self:Give(varWep)
		return
	end
	local loadout = self.Loadouts[loadID]
	local secondary = VJ_PICK(loadout.Secondary)
	self.Secondary = secondary != false && self:Give(secondary) or nil
	self.Primary = self:Give(VJ_PICK(loadout.Primary))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink_AIEnabled()
	local ent = self:GetEnemy()
	local dist = self.NearestPointToEnemyDistance
	if IsValid(ent) then
		if !IsValid(self.Primary) or !IsValid(self.Secondary) then return end
		local wep = self:GetActiveWeapon()
		if self.WeaponInventoryStatus == VJ_WEP_INVENTORY_MELEE then return end
		local selectType = false
		if dist <= 325 then
			selectType = 2
		else
			selectType = 1
		end

		if selectType != false && !self:IsBusy() && CurTime() > self.NextWeaponSwitchT && math.random(1,wep:Clip1() > 0 && (wep:Clip1() <= wep:GetMaxClip1() *0.25) && 1 or (selectType == 1 && 20 or 500)) == 1 then
			self:DoChangeWeapon(selectType == 1 && self.Primary or self.Secondary,true)
			wep = self:GetActiveWeapon()
			self.NextWeaponSwitchT = CurTime() + math.Rand(6,math.Round(math.Clamp(wep:Clip1() *0.5,1,wep:Clip1())))
		end
	end
	if self.OnThink then
		self:OnThink(ent,dist)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnGrenadeAttack_OnThrow(grEnt)
	if grEnt:GetClass() == "obj_vj_grenade" then
		util.SpriteTrail(grEnt,0,Color(255,255,255),false,5,0,1.5,1 /(10 +1) *0.5,"vj_mw/sprites/smoke.vmt")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo, hitgroup)
	self.DeathAnimationDecreaseLengthAmount = math.Rand(0,0.325)
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.FootSteps = {
	[MAT_ANTLION] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_BLOODYFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_CONCRETE] = {
		"player/footsteps/concrete1.wav",
		"player/footsteps/concrete2.wav",
		"player/footsteps/concrete3.wav",
		"player/footsteps/concrete4.wav",
	},
	[MAT_DIRT] = {
		"player/footsteps/dirt1.wav",
		"player/footsteps/dirt2.wav",
		"player/footsteps/dirt3.wav",
		"player/footsteps/dirt4.wav",
	},
	[MAT_FLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_GRATE] = {
		"player/footsteps/metalgrate1.wav",
		"player/footsteps/metalgrate2.wav",
		"player/footsteps/metalgrate3.wav",
		"player/footsteps/metalgrate4.wav",
	},
	[MAT_ALIENFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[74] = { -- Snow
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_PLASTIC] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_METAL] = {
		"player/footsteps/metal1.wav",
		"player/footsteps/metal2.wav",
		"player/footsteps/metal3.wav",
		"player/footsteps/metal4.wav",
	},
	[MAT_SAND] = {
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_FOLIAGE] = {
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_COMPUTER] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_SLOSH] = {
		"player/footsteps/slosh1.wav",
		"player/footsteps/slosh2.wav",
		"player/footsteps/slosh3.wav",
		"player/footsteps/slosh4.wav",
	},
	[MAT_TILE] = {
		"player/footsteps/tile1.wav",
		"player/footsteps/tile2.wav",
		"player/footsteps/tile3.wav",
		"player/footsteps/tile4.wav",
	},
	[85] = { -- Grass
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_VENT] = {
		"player/footsteps/duct1.wav",
		"player/footsteps/duct2.wav",
		"player/footsteps/duct3.wav",
		"player/footsteps/duct4.wav",
	},
	[MAT_WOOD] = {
		"player/footsteps/wood1.wav",
		"player/footsteps/wood2.wav",
		"player/footsteps/wood3.wav",
		"player/footsteps/wood4.wav",
		"player/footsteps/woodpanel1.wav",
		"player/footsteps/woodpanel2.wav",
		"player/footsteps/woodpanel3.wav",
		"player/footsteps/woodpanel4.wav",
	},
	[MAT_GLASS] = {
		"physics/glass/glass_sheet_step1.wav",
		"physics/glass/glass_sheet_step2.wav",
		"physics/glass/glass_sheet_step3.wav",
		"physics/glass/glass_sheet_step4.wav",
	}
}
--
function ENT:CustomOnFootStepSound()
	if !self:IsOnGround() then return end
	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() +Vector(0,0,-150),
		filter = {self}
	})
	if tr.Hit && self.FootSteps[tr.MatType] then
		VJ_EmitSound(self,VJ_PICK(self.FootSteps[tr.MatType]),self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch1,self.FootStepPitch2))
	end
	if self:WaterLevel() > 0 && self:WaterLevel() < 3 then
		VJ_EmitSound(self,"player/footsteps/wade" .. math.random(1,8) .. ".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch1,self.FootStepPitch2))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:FootStepSoundCode(CustomTbl)
	if self.HasSounds == false or self.HasFootStepSound == false or self.MovementType == VJ_MOVETYPE_STATIONARY then return end
	if self:IsOnGround() && self:GetGroundEntity() != NULL then
		if self.DisableFootStepSoundTimer == true then
			self:CustomOnFootStepSound()
			if self.HasWorldShakeOnMove == true then util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius) end
			return
		elseif self:IsMoving() && CurTime() > self.FootStepT && self:GetInternalVariable("m_flMoveWaitFinished") <= 0 then
			self:CustomOnFootStepSound()
			local curSched = self.CurrentSchedule
			if self.DisableFootStepOnRun == false && ((VJ_HasValue(self.AnimTbl_Run,self:GetMovementActivity())) or (curSched != nil  && curSched.MoveType == 1)) /*(VJ_HasValue(VJ_RunActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomRunActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Run()
				if self.HasWorldShakeOnMove == true then util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius) end
				self.FootStepT = CurTime() + self.FootStepTimeRun
				return
			elseif self.DisableFootStepOnWalk == false && (VJ_HasValue(self.AnimTbl_Walk,self:GetMovementActivity()) or (curSched != nil  && curSched.MoveType == 0)) /*(VJ_HasValue(VJ_WalkActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomWalkActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Walk()
				if self.HasWorldShakeOnMove == true then util.ScreenShake(self:GetPos(), self.WorldShakeOnMoveAmplitude, self.WorldShakeOnMoveFrequency, self.WorldShakeOnMoveDuration, self.WorldShakeOnMoveRadius) end
				self.FootStepT = CurTime() + self.FootStepTimeWalk
				return
			end
		end
	end
end