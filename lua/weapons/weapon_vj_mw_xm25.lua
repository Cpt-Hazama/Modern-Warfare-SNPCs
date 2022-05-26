if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "XM25"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/xm25/worldmodel.mdl"
SWEP.HoldType 					= "ar2"

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(-10,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-14.2,-1,3.2)

SWEP.NPC_NextPrimaryFire = 4
SWEP.NPC_CustomSpread = 1.36
SWEP.NPC_FiringDistanceScale = 0.75

SWEP.Primary.DisableBulletCode  = true
SWEP.Primary.Damage				= 0
SWEP.Primary.Force				= 0
SWEP.Primary.ClipSize			= 5
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/underbarrel/xm25/fire.wav"}
SWEP.Primary.DistantSound		= {"cpthazama/mw/weapons/underbarrel/m320/fire.wav"}

SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_4"}
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnPrimaryAttack_AfterShoot()
    local owner = self:GetOwner()
	local pos = self:GetNW2Vector("VJ_CurBulletPos")
	local proj = ents.Create(self.NPC_SecondaryFireEnt)
	proj:SetPos(pos)
	proj:SetAngles(owner:GetAngles())
	proj:SetOwner(owner)
	proj:Spawn()
	proj:Activate()
	local phys = proj:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
		phys:SetVelocity(owner:CalculateProjectile("Line", pos, owner.LastEnemyVisiblePos +VectorRand(-25,25) *self.NPC_CustomSpread, 5000))
	end
end