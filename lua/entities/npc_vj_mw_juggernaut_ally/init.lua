AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPreInitialize()
	self.Model = {"models/tfusion/playermodels/mw3/mp_fullbody_ally_juggernaut.mdl"}
	self.VJ_NPC_Class = {"CLASS_PLAYER_ALLY","CLASS_UNITED_STATES"}
	self.FriendsWithAllPlayerAllies = true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self.Loadouts = {
		[VJ_MW_LOADOUT_LMG] = {
			Primary = {
				"weapon_vj_mw_m60e4"
			},
			Secondary = {
				"weapon_vj_mw_p99"
			},
		}
	}
	self:GiveWeapons(VJ_MW_LOADOUT_LMG)
end