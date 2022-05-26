if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "SPAS-12"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/spas12/worldmodel.mdl"
SWEP.HoldType 					= "shotgun"

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(-10,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-15,-1,3.8)

SWEP.NPC_ExtraFireSound = {"cpthazama/mw/weapons/weapons/spas12/close.wav"}
SWEP.NPC_NextPrimaryFire = 1
SWEP.NPC_CustomSpread = 2
SWEP.NPC_FiringDistanceScale = 0.3

SWEP.Primary.Damage				= 4
SWEP.Primary.NumberOfShots		= 7
SWEP.Primary.Force				= 2
SWEP.Primary.ClipSize			= 8
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/weapons/spas12/fire.wav"}
SWEP.Primary.DistantSound		= {"cpthazama/mw/weapons/dist1.wav","cpthazama/mw/weapons/dist2.wav","cpthazama/mw/weapons/dist3.wav","cpthazama/mw/weapons/dist4.wav"}

SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_shotgun"}