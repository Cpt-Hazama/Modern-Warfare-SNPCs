if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "P99"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/p99/worldmodel.mdl"
SWEP.HoldType 					= "pistol"

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(0,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-14,-1,2.8)

SWEP.NPC_NextPrimaryFire = 0.25
SWEP.NPC_CustomSpread = 1.75

SWEP.Primary.Damage				= 4
SWEP.Primary.Force				= 2
SWEP.Primary.ClipSize			= 15
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/weapons/p99/fire.wav"}
SWEP.Primary.DistantSound		= {"cpthazama/mw/weapons/dist1.wav","cpthazama/mw/weapons/dist2.wav","cpthazama/mw/weapons/dist3.wav","cpthazama/mw/weapons/dist4.wav"}

SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_1"}