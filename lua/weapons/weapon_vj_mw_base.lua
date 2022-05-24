if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_base"
SWEP.PrintName					= "MW Base"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false
SWEP.MadeForNPCsOnly 			= true

SWEP.WorldModel_UseCustomPosition = false
SWEP.WorldModel_CustomPositionAngle = Vector(-10,90,180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-15,-1,4)

SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_NextPrimaryFire = 0.1
SWEP.NPC_TimeUntilFireExtraTimers = {}
SWEP.NPC_CustomSpread = 1
SWEP.NPC_FiringDistanceScale = 1
SWEP.NPC_StandingOnly = false
SWEP.NPC_BulletSpawnAttachment = ""

SWEP.NPC_BeforeFireSound = {}
SWEP.NPC_ExtraFireSound = {}
SWEP.NPC_ExtraFireSoundTime = 0.4
SWEP.NPC_ReloadSound = {}
SWEP.NPC_SecondaryFireSound = {}

SWEP.NPC_HasSecondaryFire = false
SWEP.NPC_SecondaryFireEnt = "obj_vj_grenade_rifle"
SWEP.NPC_SecondaryFireChance = 3
SWEP.NPC_SecondaryFireDistance = 1000

SWEP.Primary.Damage				= 1
SWEP.Primary.Force				= 1
SWEP.Primary.ClipSize			= 1
SWEP.Primary.Ammo				= "SMG1"

SWEP.PrimaryEffects_MuzzleFlash = true
SWEP.PrimaryEffects_MuzzleAttachment = 1
SWEP.PrimaryEffects_MuzzleParticles = {"muzzleflash_pistol"}

SWEP.PrimaryEffects_SpawnShells = true
SWEP.PrimaryEffects_ShellAttachment = 2
SWEP.PrimaryEffects_ShellType = "VJ_Weapon_RifleShell1"