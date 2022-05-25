AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_a.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_b.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_c.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_airborne_d.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_a.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_b.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_c.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_urban_d.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_a.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_b.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_c.mdl",
	"models/tfusion/playermodels/mw3/mp_russian_military_woodland_d.mdl"
}

ENT.VJ_NPC_Class = {"CLASS_RUSSIAN"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnInit()
	local mdl = self:GetModel()
	if string.find(mdl,"urban") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_urban_sniper.mdl"
	elseif string.find(mdl,"woodland") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_woodland_sniper.mdl"
	elseif string.find(mdl,"airborne") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_air_sniper.mdl"
	elseif string.find(mdl,"arctic") then
		self.SniperModel = "models/tfusion/playermodels/mw3/mp_opforce_russian_arctic_sniper.mdl"
	end
	self:SetLoadout(math.random(1,5))
end