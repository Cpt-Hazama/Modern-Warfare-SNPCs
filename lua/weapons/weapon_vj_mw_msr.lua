if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "MSR"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/MSR/worldmodel.mdl"
SWEP.HoldType 					= "ar2"

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(-10,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-14.5,-1,3.6)

SWEP.NPC_ExtraFireSound = {"cpthazama/mw/weapons/weapons/MSR/close.wav"}
SWEP.NPC_NextPrimaryFire = 1.65
SWEP.NPC_CustomSpread = 0.5
SWEP.NPC_FiringDistanceScale = 2
SWEP.NPC_StandingOnly = true

SWEP.Primary.Damage				= 28
SWEP.Primary.Force				= 6
SWEP.Primary.ClipSize			= 5
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/weapons/MSR/fire.wav"}
SWEP.Primary.DistantSound		= {"cpthazama/mw/weapons/dist1.wav","cpthazama/mw/weapons/dist2.wav","cpthazama/mw/weapons/dist3.wav","cpthazama/mw/weapons/dist4.wav"}

SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_4"}