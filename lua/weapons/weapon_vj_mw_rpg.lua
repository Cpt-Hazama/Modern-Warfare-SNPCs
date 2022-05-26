if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "RPG-7"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/rpg/worldmodel.mdl"
SWEP.HoldType 					= "rpg"

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(-10,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-14.5,-1,3)

SWEP.NPC_NextPrimaryFire = 5
SWEP.NPC_CustomSpread = 1
SWEP.NPC_FiringDistanceScale = 2.5
SWEP.NPC_StandingOnly = true

SWEP.Primary.DisableBulletCode  = true
SWEP.Primary.Damage				= 0
SWEP.Primary.Force				= 0
SWEP.Primary.ClipSize			= 1
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/weapons/rpg/fire.wav"}
SWEP.Primary.DistantSound		= {"vj_weapons/rpg/rpg_fire_far.wav"}

SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_4"}
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnPrimaryAttack_AfterShoot()
    local owner = self:GetOwner()
	local pos = self:GetNW2Vector("VJ_CurBulletPos")
	local proj = ents.Create("obj_vj_tank_shell")
	proj:SetPos(pos)
	proj:SetAngles(owner:GetAngles())
	proj:SetOwner(owner)
	proj:Spawn()
	proj:Activate()
	local phys = proj:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
		phys:SetVelocity(owner:CalculateProjectile("Line", pos, owner.LastEnemyVisiblePos +VectorRand(-25,25) *self.NPC_CustomSpread, 2500))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnPrimaryAttackEffects()
	ParticleEffectAttach("smoke_exhaust_01a", PATTACH_POINT_FOLLOW, self, 1)
	timer.Simple(3, function() if IsValid(self) then self:StopParticles() end end)
	return true
end