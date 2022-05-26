/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2021 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local Name = "Modern Warfare"
local PublicAddonName = Name .. " SNPCs"
local AddonName = Name
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_mw_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')

	local function AddWeapon(wep,class)
		VJ.AddNPCWeapon("VJ_MW_" .. wep,class)
	end

	VJ_MW_LOADOUT_ASSAULT = 1
	VJ_MW_LOADOUT_LMG = 2
	VJ_MW_LOADOUT_SHOTGUN = 3
	VJ_MW_LOADOUT_SMG = 4
	VJ_MW_LOADOUT_SNIPER = 5

	local vCat = Name
	VJ.AddCategoryInfo(vCat,{Icon = "vj_icons/mw.png"})

	-- VJ.AddNPC_HUMAN("Modern Warfare Base","npc_vj_mw_base",{},vCat)
	VJ.AddNPC_HUMAN("Delta-Force","npc_vj_mw_deltaforce",{},vCat)
	VJ.AddNPC_HUMAN("GIGN","npc_vj_mw_gign",{},vCat)
	VJ.AddNPC_HUMAN("Juggernaut (Spetsnaz)","npc_vj_mw_juggernaut",{},vCat)
	VJ.AddNPC_HUMAN("Juggernaut (Ally)","npc_vj_mw_juggernaut_ally",{},vCat)
	VJ.AddNPC_HUMAN("Juggernaut (PMC)","npc_vj_mw_juggernaut_pmc",{},vCat)
	VJ.AddNPC_HUMAN("African Militia","npc_vj_mw_militia",{},vCat)
	VJ.AddNPC_HUMAN("PMC","npc_vj_mw_pmc",{},vCat)
	VJ.AddNPC_HUMAN("SAS","npc_vj_mw_sas",{},vCat)
	VJ.AddNPC_HUMAN("Spetsnaz","npc_vj_mw_spetsnaz",{},vCat)

	AddWeapon("44. Magnum","weapon_vj_mw_44_magnum")
	AddWeapon("AA-12","weapon_vj_mw_aa12")
	AddWeapon("ACR","weapon_vj_mw_acr")
	AddWeapon("AK-47","weapon_vj_mw_ak47")
	AddWeapon("AK-74u","weapon_vj_mw_ak74u")
	AddWeapon("AS-50","weapon_vj_mw_as50")
	AddWeapon("CM901","weapon_vj_mw_cm901")
	AddWeapon("Desert Eagle","weapon_vj_mw_desert_eagle")
	AddWeapon("Dragunov","weapon_vj_mw_dragunov")
	AddWeapon("FAD","weapon_vj_mw_fad")
	AddWeapon("FiveSeven","weapon_vj_mw_fiveseven")
	AddWeapon("FMG9","weapon_vj_mw_fmg9")
	AddWeapon("G18","weapon_vj_mw_g18")
	AddWeapon("G36","weapon_vj_mw_g36")
	AddWeapon("Knife","weapon_vj_mw_knife")
	AddWeapon("KSG","weapon_vj_mw_ksg")
	AddWeapon("L96A1","weapon_vj_mw_l96a1")
	AddWeapon("M4A1","weapon_vj_mw_m4a1")
	AddWeapon("M16","weapon_vj_mw_m16")
	AddWeapon("M60E4","weapon_vj_mw_m60e4")
	AddWeapon("M82","weapon_vj_mw_m82")
	AddWeapon("M320","weapon_vj_mw_m320")
	AddWeapon("MG36","weapon_vj_mw_mg36")
	AddWeapon("MK-14","weapon_vj_mw_mk14")
	AddWeapon("MK-46","weapon_vj_mw_mk46")
	AddWeapon("Model 1887","weapon_vj_mw_m1887")
	AddWeapon("MP5","weapon_vj_mw_mp5")
	AddWeapon("MP7","weapon_vj_mw_mp7")
	AddWeapon("MP9","weapon_vj_mw_mp9")
	AddWeapon("MP-412","weapon_vj_mw_mp412")
	AddWeapon("MSR","weapon_vj_mw_msr")
	AddWeapon("P90","weapon_vj_mw_p90")
	AddWeapon("P99","weapon_vj_mw_p99")
	AddWeapon("PKP Pecheneg","weapon_vj_mw_pecheneg")
	AddWeapon("PM9","weapon_vj_mw_pm9")
	AddWeapon("PP90M1","weapon_vj_mw_pp90m1")
	AddWeapon("RPG-7","weapon_vj_mw_rpg")
	AddWeapon("RSASS","weapon_vj_mw_rsass")
	AddWeapon("L86 LSW","weapon_vj_mw_sa80")
	AddWeapon("SCAR-H","weapon_vj_mw_scar")
	AddWeapon("Skorpion","weapon_vj_mw_skorpion")
	AddWeapon("SMAW","weapon_vj_mw_smaw")
	AddWeapon("Spas-12","weapon_vj_mw_spas12")
	AddWeapon("Striker","weapon_vj_mw_striker")
	AddWeapon("Type-95","weapon_vj_mw_type95")
	AddWeapon("UMP-45","weapon_vj_mw_ump45")
	AddWeapon("USAS-12","weapon_vj_mw_usas12")
	AddWeapon("USP-45","weapon_vj_mw_usp45")
	AddWeapon("XM-25","weapon_vj_mw_xm25")

	VJ.AddParticle("particles/muzzleflashes_test.pcf",{
		"muzzleflash_pistol", -- Low Calibar
		"muzzleflash_1", -- Medium/Large Calibar
		"muzzleflash_4", -- Medium Calibar
		"muzzleflash_g3", -- High Calibar
		"muzzleflash_6", -- Snipers
		"muzzleflash_5", -- Minigun
		"muzzleflash_shotgun" -- Shotgun
	})

-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((scrY()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end
				
				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end