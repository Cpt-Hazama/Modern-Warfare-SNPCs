if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "AA-12"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/aa12/worldmodel.mdl"
SWEP.HoldType 					= "ar2"

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(-10,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-15,-1,4)

SWEP.NPC_NextPrimaryFire = 0.15
SWEP.NPC_CustomSpread = 2

SWEP.Primary.Damage				= 4
SWEP.Primary.NumberOfShots		= 7
SWEP.Primary.Force				= 2
SWEP.Primary.ClipSize			= 16
SWEP.Primary.Cone               = 12
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/weapons/aa12/fire.wav"}
SWEP.Primary.DistantSound		= {"cpthazama/mw/weapons/silencer/ar.wav"}

SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_4"}