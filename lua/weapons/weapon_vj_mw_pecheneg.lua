if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "Pecheneg"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/pecheneg/worldmodel.mdl"
SWEP.HoldType 					= "ar2"
SWEP.MW_JuggernautOverride      = true

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(-10,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-14,-1,3.2)
SWEP.WorldModel_CustomPositionAngle_Juggernaut = Vector(0,100,180)
SWEP.WorldModel_CustomPositionOrigin_Juggernaut = Vector(-14,-2,4)

SWEP.NPC_NextPrimaryFire = 0.08
SWEP.NPC_CustomSpread = 2.25

SWEP.Primary.Damage				= 7
SWEP.Primary.Force				= 2
SWEP.Primary.ClipSize			= 200
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/weapons/pecheneg/fire.wav"}
SWEP.Primary.DistantSound		= {"cpthazama/mw/weapons/dist1.wav","cpthazama/mw/weapons/dist2.wav","cpthazama/mw/weapons/dist3.wav","cpthazama/mw/weapons/dist4.wav"}

SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_5"}