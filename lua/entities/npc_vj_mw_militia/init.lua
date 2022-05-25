AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_africa_militia_a.mdl",
	"models/tfusion/playermodels/mw3/mp_africa_militia_b.mdl",
	"models/tfusion/playermodels/mw3/mp_africa_militia_c.mdl",
	"models/tfusion/playermodels/mw3/mp_africa_militia_d.mdl",
}
ENT.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_ghillie_africa_militia_sniper.mdl"

ENT.VJ_NPC_Class = {"CLASS_AFRICA"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	self:SetLoadout(math.random(1,5))
end