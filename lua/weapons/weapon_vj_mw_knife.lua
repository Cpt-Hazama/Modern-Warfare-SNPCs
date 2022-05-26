if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Knife"
SWEP.Author = "Cpt. Hazama"
SWEP.Contact = "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose = "This weapon is made for Players and NPCs"
SWEP.Instructions = "Controls are like a regular weapon."
SWEP.Category = "VJ Base"

SWEP.MadeForNPCsOnly = true -- Is this weapon meant to be for NPCs only?
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire = 0.75 -- Next time it can use primary fire
SWEP.NPC_TimeUntilFire = 0.15 -- How much time until the bullet/projectile is fired?
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel = "models/ma85_mw3/atts/knife.mdl"
SWEP.HoldType = "knife"
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage = 10 -- Damage
SWEP.IsMeleeWeapon = true -- Should this weapon be a melee weapon?

SWEP.WorldModel_UseCustomPosition = true
SWEP.WorldModel_CustomPositionAngle = Vector(10,90,270)
SWEP.WorldModel_CustomPositionOrigin = Vector(0,-1,-2.5)