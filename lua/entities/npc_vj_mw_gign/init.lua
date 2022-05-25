AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_gign_a.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_b.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_c.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_d.mdl",
	"models/tfusion/playermodels/mw3/mp_gign_e.mdl"
}

ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY","CLASS_FRENCH"}
ENT.FriendsWithAllPlayerAllies = true
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end