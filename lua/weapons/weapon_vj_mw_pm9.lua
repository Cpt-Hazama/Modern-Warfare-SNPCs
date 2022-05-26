if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_mw_base"
SWEP.PrintName					= "PM9"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/ma85_mw3/pm9/worldmodel.mdl"
SWEP.HoldType 					= "smg"

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(0,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-15,-1,4)

SWEP.NPC_NextPrimaryFire = 0.055
SWEP.NPC_CustomSpread = 2.15

SWEP.Primary.Damage				= 3
SWEP.Primary.Force				= 2
SWEP.Primary.ClipSize			= 25
SWEP.Primary.Sound				= {"cpthazama/mw/weapons/weapons/pm9/fire.wav"}
SWEP.Primary.DistantSound		= {"cpthazama/mw/weapons/dist1.wav","cpthazama/mw/weapons/dist2.wav","cpthazama/mw/weapons/dist3.wav","cpthazama/mw/weapons/dist4.wav"}