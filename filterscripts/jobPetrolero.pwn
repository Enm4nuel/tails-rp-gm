#include <a_samp>

#define         CAMIOND         500;

new camionCargado[MAX_PLAYERS];
new CargandoC[MAX_PLAYERS];
new Float:PuntoCX[MAX_PLAYERS], Float:PuntoCY[MAX_PLAYERS], Float:PuntoCZ[MAX_PLAYERS];

CamionPetrolero(carid)
{
    if(GetVehicleModel(carid) == 524) return 1;
	return 0;
}

MarcadoPetroleroGPS(playerid,Float:x,Float:y,Float:z, Float:range = 7.0)
{
    SetPlayerCheckpoint(playerid,x,y,z,range);
	PuntoCX[playerid] = x;
	PuntoCY[playerid] = y;
	PuntoCZ[playerid] = z;
	return 1;
}



public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_CROUCH) // H con vehículo
	{
        if(IsPlayerInRangeOfPoint(playerid, 2, -2801.7600,1476.8754,8.3967) || IsPlayerInRangeOfPoint(playerid, 2, -2801.4250,1484.7245,8.3967) || IsPlayerInRangeOfPoint(playerid, 2, -2801.8406,1492.3409,8.3967) || IsPlayerInRangeOfPoint(playerid, 2, -2802.1541,1500.1993,8.3967))
		{
            new autoid = GetPlayerVehicleID(playerid);
            if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "Necesitas estar en un camión de petroleo.");
            if(CamionPetrolero(autoid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
            {
                new string[350];
                CargandoC[playerid] = 1;
                TogglePlayerControllable(playerid, 0);
                SetPVarInt(playerid, "IsFrozen", 0);
                DisablePlayerCheckpoint(playerid);
                /*switch(PlayerInfo[playerid][pNivelCamionero])
                {
                    case 1:	format(string, sizeof(string), "{00FF00}Productos 24/7 {FFFFFF}(Ganancias {00FF00}$1250{FFFFFF}) \n{00FF00}Ropa {FFFFFF}(Ganancias {00FF00}$1250{FFFFFF})\n{FF3300}Drogas {FFFFFF}(Ganancias {00FF00}$1250{FFFFFF} + {00FF00}4{FFFFFF} medicamentos + {FF3300}2g de Crack)\n{FF3300}Armas {FFFFFF}(Ganancias {00FF00}$1250{FFFFFF} + {FF3300}2 piezas de armas{FFFFFF})");
                    case 2:	format(string, sizeof(string), "{00FF00}Productos 24/7 {FFFFFF}(Ganancias {00FF00}$3500{FFFFFF}) \n{00FF00}Ropa {FFFFFF}(Ganancias {00FF00}$1500{FFFFFF})\n{FF3300}Drogas {FFFFFF}(Ganancias {00FF00}$1500{FFFFFF} + {00FF00}6{FFFFFF} medicamentos + {FF3300}3g de Crack)\n{FF3300}Armas {FFFFFF}(Ganancias {00FF00}$1500{FFFFFF} + {FF3300}5 piezas de armas{FFFFFF})");
                    case 3: format(string, sizeof(string), "{00FF00}Productos 24/7 {FFFFFF}(Ganancias {00FF00}$4500{FFFFFF}) \n{00FF00}Ropa {FFFFFF}(Ganancias {00FF00}$1750{FFFFFF})\n{FF3300}Drogas {FFFFFF}(Ganancias {00FF00}$1750{FFFFFF} + {00FF00}8{FFFFFF} medicamentos + {FF3300}4g de Crack)\n{FF3300}Armas {FFFFFF}(Ganancias {00FF00}$1750{FFFFFF} + {FF3300}7 piezas de armas{FFFFFF})");
                    case 4: format(string, sizeof(string), "{00FF00}Productos 24/7 {FFFFFF}(Ganancias {00FF00}$5500{FFFFFF}) \n{00FF00}Ropa {FFFFFF}(Ganancias {00FF00}$2000{FFFFFF})\n{FF3300}Drogas {FFFFFF}(Ganancias {00FF00}$2000{FFFFFF} + {00FF00}10{FFFFFF} medicamentos + {FF3300}5g de Crack)\n{FF3300}Armas {FFFFFF}(Ganancias {00FF00}$2000{FFFFFF} + {FF3300}7 piezas de armas{FFFFFF})");
                    case 5: format(string, sizeof(string), "{00FF00}Productos 24/7 {FFFFFF}(Ganancias {00FF00}$6500{FFFFFF}) \n{00FF00}Ropa {FFFFFF}(Ganancias {00FF00}$2250{FFFFFF})\n{FF3300}Drogas {FFFFFF}(Ganancias {00FF00}$2250{FFFFFF} + {00FF00}12{FFFFFF} medicamentos + {FF3300}6g de Crack)\n{FF3300}Armas {FFFFFF}(Ganancias {00FF00}$2500{FFFFFF} + {FF3300}7 piezas de armas{FFFFFF})");
                    case 6: format(string, sizeof(string), "{00FF00}Productos 24/7 {FFFFFF}(Ganancias {00FF00}$7500{FFFFFF}) \n{00FF00}Ropa {FFFFFF}(Ganancias {00FF00}$2500{FFFFFF})\n{FF3300}Drogas {FFFFFF}(Ganancias {00FF00}$2500{FFFFFF} + {00FF00}12{FFFFFF} medicamentos + {FF3300}6g de Crack)\n{FF3300}Armas {FFFFFF}(Ganancias {00FF00}$2500{FFFFFF} + {FF3300}7 piezas de armas{FFFFFF})");
                    default: format(string, sizeof(string), "{00FF00}Productos 24/7 {FFFFFF}(Ganancias {00FF00}$7500{FFFFFF}) \n{00FF00}Ropa {FFFFFF}(Ganancias {00FF00}$2500{FFFFFF})\n{FF3300}Drogas {FFFFFF}(Ganancias {00FF00}$2500{FFFFFF} + {00FF00}12{FFFFFF} medicamentos + {FF3300}6g de Crack)\n{FF3300}Armas {FFFFFF}(Ganancias {00FF00}$2500{FFFFFF} + {FF3300}7 piezas de armas{FFFFFF})");
                }*/
                ShowPlayerDialog(playerid, CAMIOND ,DIALOG_STYLE_LIST, "¿Qué deseas transportar?", "sdddds", "Cargar","Salir");
                SendClientMessage(playerid, -1, "Seleccionas lo que deseas cargar.");
                return 1;
            }
            else return SendClientMessage(playerid, -1, "Necesitas estar en un camión de petroleo.");
        }
	}

}

