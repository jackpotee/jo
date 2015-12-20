#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",500],
			["exxpensive_2cv_base",700],
			["cl3_lada_white", 800],
			["cl3_lada_red", 800],
			["LandRover_TK_CIV_EP1",1500],	
			["cl3_golf_mk2_blue", 2400],
			["cl3_golf_mk2_black", 2400],
			["cl3_golf_mk2_yellow", 2400],
			["cl3_golf_mk2_white", 2400],
			["cl3_golf_mk2_red", 2400],
			["cl3_civic_vti_red", 2750],
			["cl3_civic_vti_black", 2750],
			["cl3_civic_vti_white", 2750],
			["exxpensive_m5_e34_base",3600],
			["exxpensive_BMWM3E46_base",4000],
			["SAL_AudiCivRed", 4400],
			["SAL_AudiCivSilver", 4400],
			["SAL_AudiCivBlack", 4400],
			["cl3_insignia_white", 5091],
			["cl3_insignia_black", 5091],
			["cl3_insignia_silver", 5091],
			["cl3_range_rover_black", 6400],
			["cl3_range_rover_white", 6400],
			["cl3_taurus_black", 5440],
			["cl3_taurus_yellow", 5440],
			["cl3_taurus_orange", 5440],
			["cl3_taurus_white", 5440]
		];
	};
	
	case "civ_lux":
	{
		_return = 
		[
			["exxpensive_chrysler_300c_base",10000],
			["exxpensive_Audi_q7_base",11560],
			["cl3_e63_amg_black", 30000],
			["cl3_dbs_volante_yellow", 44000],
			["exxpensive_porsche_panamera_base",56000],
			["exxpensive_mercedes_sls_base",60000],
			["exxpensive_jaguar_base",62000],
			["cl3_carrera_gt_babyblue", 76000],
			["cl3_458_flame", 96000],			
			// ["cl3_r8_spyder_2tone2", 450000],			
			["cl3_murcielago_black", 120000],
			["cl3_reventon_white", 142000],
			["exxpensive_bugatti_base",200000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_transport_F",3000],
			["C_Van_01_box_F",5000],
			["I_Truck_02_transport_F",6000],
			["I_Truck_02_covered_F",7000],
			["B_Truck_01_transport_F",15000],
			["O_Truck_03_transport_F",9000],
			["O_Truck_03_covered_F",20000],
			["O_Truck_03_device_F",10000],
			["B_Truck_01_box_F",27000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["O_MRAP_02_hmg_F",1750000],
			["O_MRAP_02_gmg_F",3500000],
			["I_MRAP_03_F",210000],
			["I_MRAP_03_hmg_F",2250000],
			["I_MRAP_03_gmg_F",4500000],
			["DAR_4X4",750000],
			["DAR_MK23",750000],
			["DAR_LHS_16",750000],
			["DAR_LHS_8",750000],
			["DAR_MK23ADT",750000],
			["B_Heli_Light_01_F",325000],
			["I_Heli_Transport_02_F",1000000],
			["I_Heli_light_03_unarmed_F",600000],
			["I_Heli_light_03_F",2125000],
			["B_G_Offroad_01_armed_F",750000]
		];
		
		if(license_civ_rebel) then
		{
			
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_SUV_01_F",20000];
		_return pushBack
		["cl3_murcielago_police",15000];
		_return pushBack
		["DAR_ExplorerPolice",67500];
		_return pushBack
		["cl3_reventon_clpd",67500];
		_return pushBack
		["Exxpensive_dodge_charger_police",67500];
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",30000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["I_Heli_Transport_02_F",1750000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
