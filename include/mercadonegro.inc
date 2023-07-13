#include <a_samp>


#define          MNCONSUMIBLES          4201
#define          MNARMAS                4202

new actorBanda;
new actorConsumible;
new actorArma;

new mapeoMN;

stock cargarMapeosMN()
{
	mapeoMN = CreateDynamicObject(8613, -2181.100585, 613.407592, 35.404010, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, -1, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(mapeoMN, 1, 3980, "cityhall_lan", "man_cellarfloor128", 0x00000000);
	mapeoMN = CreateDynamicObject(8572, -2187.678710, 622.146972, 39.824169, 0.000000, 0.000000, 450.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 6282, "beafron2_law2", "fire_esc_fence", 0xFFFFFFFF);
	SetDynamicObjectMaterial(mapeoMN, 1, 3980, "cityhall_lan", "man_cellarfloor128", 0x00000000);
	mapeoMN = CreateDynamicObject(983, -2185.312744, 617.555419, 39.420623, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 5, 5114, "beach_las2", "Bow_meshfence", 0x00000000);
	mapeoMN = CreateDynamicObject(983, -2198.175537, 617.555419, 41.730617, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 5, 5114, "beach_las2", "Bow_meshfence", 0x00000000);
	mapeoMN = CreateDynamicObject(983, -2204.579589, 617.555419, 41.730617, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 5, 5114, "beach_las2", "Bow_meshfence", 0x00000000);
	mapeoMN = CreateDynamicObject(983, -2191.772216, 617.555419, 41.730617, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 5, 5114, "beach_las2", "Bow_meshfence", 0x00000000);
	mapeoMN = CreateDynamicObject(983, -2182.099609, 617.555419, 39.420623, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 5, 5114, "beach_las2", "Bow_meshfence", 0x00000000);
	mapeoMN = CreateDynamicObject(2395, -2179.505371, 621.248901, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2179.505371, 618.518615, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2179.505371, 617.637939, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2183.218505, 617.637939, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2183.228759, 621.248901, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2183.217529, 618.518615, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2186.947753, 618.518615, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2186.949707, 617.637939, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2186.958740, 621.248901, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2187.939697, 621.248901, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2187.858642, 618.518615, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2187.870605, 617.637939, 38.804229, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2191.971679, 617.637939, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2195.692138, 617.637939, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2199.422119, 617.637939, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2203.133056, 617.637939, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2206.864257, 617.637939, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2206.864257, 620.378112, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2203.141845, 620.378112, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2199.411621, 620.378112, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2195.691650, 620.378112, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2191.962158, 620.378112, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2191.962158, 623.108154, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2195.682617, 623.108154, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2199.413330, 623.108154, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2203.134277, 623.108154, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(2395, -2206.864501, 623.108154, 41.024269, -90.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 3980, "cityhall_lan", "man_cellarfloor128", 0xFFFFFFFF);
	mapeoMN = CreateDynamicObject(3861, -2200.854736, 616.040283, 35.324089, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 4892, "kbgarage_las", "canvas22sjm", 0x00000000);
	mapeoMN = CreateDynamicObject(2463, -2204.443603, 615.911926, 34.164062, 0.000000, 0.000000, 88.800018, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	mapeoMN = CreateDynamicObject(1579, -2204.270263, 616.082275, 36.334064, 0.000000, 0.000000, 75.399993, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 1279, "craigpackage", "drugs", 0x00000000);
	mapeoMN = CreateDynamicObject(3861, -2177.512695, 606.190002, 35.324089, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 11391, "hubprops2_sfse", "blackbag", 0x00000000);
	mapeoMN = CreateDynamicObject(637, -2201.714111, 621.241088, 41.860618, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 10837, "airroadsigns_sfse", "CJ_LAMPPOST1", 0x00000000);
	SetDynamicObjectMaterial(mapeoMN, 1, 10837, "airroadsigns_sfse", "CJ_LAMPPOST1", 0x00000000);
	mapeoMN = CreateDynamicObject(1271, -2201.712646, 621.268859, 41.320629, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 10837, "airroadsigns_sfse", "CJ_LAMPPOST1", 0x00000000);
	mapeoMN = CreateDynamicObject(1271, -2201.702880, 620.518188, 41.330604, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 10837, "airroadsigns_sfse", "CJ_LAMPPOST1", 0x00000000);
	mapeoMN = CreateDynamicObject(1271, -2201.721679, 622.018859, 41.310646, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(mapeoMN, 0, 10837, "airroadsigns_sfse", "CJ_LAMPPOST1", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	mapeoMN = CreateDynamicObject(2971, -2177.646484, 616.354431, 34.170619, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(2971, -2182.600585, 616.136230, 34.170619, 0.000000, 0.000000, 53.199989, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(939, -2194.412597, 616.243713, 36.634086, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1575, -2204.254882, 615.764221, 35.654064, 0.000000, 0.000000, 66.699996, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1580, -2204.272705, 616.474182, 34.944080, 0.000000, 0.000000, 82.099998, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1577, -2204.249755, 616.449340, 36.014076, 0.000000, 0.000000, -90.100013, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1579, -2204.270263, 616.082275, 34.274059, 0.000000, 0.000000, 75.399993, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1431, -2176.622558, 603.550048, 34.714073, 0.000000, 0.000000, 87.299995, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(2991, -2175.592285, 610.475280, 36.164112, -90.000000, 0.000000, 91.099960, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(356, -2176.285400, 611.547180, 36.644046, 0.000000, 0.000000, -84.699989, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(356, -2178.124267, 606.919677, 34.999320, -77.399925, 16.599998, -104.399894, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(3014, -2178.067871, 605.066833, 35.154117, 0.000000, 0.000000, 122.500000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(358, -2176.260986, 609.758911, 36.664047, 0.000000, 0.000000, -81.700065, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(359, -2176.279052, 610.424438, 35.653034, 0.000000, 0.000000, -90.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1372, -2204.212402, 609.392517, 34.284053, 0.000000, 0.000000, 87.099983, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(13591, -2189.014404, 616.746337, 34.509288, -0.399999, 0.000000, -90.100006, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(2840, -2192.010253, 612.321350, 34.224052, 0.000000, 0.000000, 22.200000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(14863, -2195.075439, 604.169677, 34.764102, 0.000000, 0.000000, -125.899986, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1712, -2182.300292, 602.860900, 34.164062, 0.000000, 0.000000, 161.399993, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1440, -2189.303710, 602.281494, 34.664058, 0.000000, 0.000000, -21.399995, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1369, -2196.922119, 602.979919, 34.754043, 0.000000, 0.000000, 150.699966, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(14863, -2191.186523, 611.967163, 34.764102, 0.000000, 0.000000, 5.100021, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(14863, -2179.311767, 621.707519, 39.344097, 0.000000, 0.000000, 38.500015, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1347, -2185.817871, 605.299194, 34.674209, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(18693, -2185.878662, 605.326477, 33.514060, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(918, -2204.109863, 611.817443, 34.594062, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(918, -2204.241210, 610.936706, 34.594062, 0.000000, 0.000000, 71.599998, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1343, -2178.189453, 623.628112, 39.549037, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(956, -2179.821044, 623.654418, 39.134212, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1440, -2185.132812, 623.084533, 39.254074, 0.000000, 0.000000, -141.299987, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(14863, -2182.271728, 604.306274, 34.764102, 0.000000, 0.000000, -130.899993, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(2971, -2189.916015, 618.952514, 40.970615, 0.000000, 0.000000, 7.299995, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(14520, -2201.016601, 620.734130, 41.290615, 0.000000, 0.000000, 96.199996, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(955, -2196.735107, 623.641113, 41.350601, 0.000000, 0.000000, 1.399979, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1810, -2202.992431, 622.124572, 41.050613, 0.000000, 0.000000, 47.100009, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1421, -2202.492431, 618.218994, 41.720623, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	mapeoMN = CreateDynamicObject(1415, -2192.951660, 623.597290, 41.080615, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 

}

/*
stock mapIconMN()
{
    CreateDynamicMapIcon(-2199.4600, 621.3027, 42.0806, 23, 0, 0, 0, -1, 500.0);
}
*/

stock removeBuildingMN(playerid)
{
    RemoveBuildingForPlayer(playerid, 1342, -2193.770, 605.187, 35.210, 0.250);
	RemoveBuildingForPlayer(playerid, 1342, -2197.590, 613.406, 35.210, 0.250);
	RemoveBuildingForPlayer(playerid, 1342, -2194.020, 613.406, 35.210, 0.250);
	RemoveBuildingForPlayer(playerid, 1342, -2187.149, 614.546, 35.210, 0.250);
	RemoveBuildingForPlayer(playerid, 1342, -2181.479, 613.703, 35.210, 0.250);
}

stock labelsMN()
{
	CreateDynamic3DTextLabel("{FF1111}Mercado negro\n{FFFFFF}Acá vendemos armas poco comunes, usa 'Y' para comprar",0xFFFFFF00, -2179.2439, 606.1400, 35.1641, 25.0);
    CreateDynamic3DTextLabel("{FF1111}Mercado negro\n{FFFFFF}Acá todo tipo de drogas, usa 'Y' para comprar",0x0079C9FF, -2200.6653,614.3036,35.1641, 10.0);
    CreateDynamic3DTextLabel("{FF1111}Mercado negro\n{FFFFFF}Buscas crear tu propia familia? usa 'Y' para seguir",0x0079C9FF, -2200.9929, 621.2141, 42.0806, 20.0);
   
    //CreateDynamic3DTextLabel("{FFFFFF} Armas\nPresiona 'Y' para comprar",0x0079C9FF, -2179.2439,606.1400,35.1641, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID,0,-1,-1,-1,100.0);
	//CreateDynamic3DTextLabel("{FF1111}Mercado negro\n{FFFFFF}Si deseas comprar un blindaje usa {FF1111}/comprar chaleco{FFFFFF}.",0xFFFFFF00,2111.4026,-1873.5719,13.5469, 25.0);
   	//CreateDynamic3DTextLabel("{FF1111}Mercado negro\n{FFFFFF}Venta de boombas para comprar usa {FF1111}/comprar c4{FFFFFF}.",0xFFFFFF00,2115.8987,-1873.6434,13.5469, 25.0);
	//CreateDynamic3DTextLabel("{FFFFFF}¿Quieres comprar algún arma blanca?\nEscribe {009AFF}/comprar arma-blanca",COLOR_WHITE,2113.8057,-1873.5533,13.5469,8.0);
		
}

stock pickupsMN()
{
    CreateDynamicPickup(1279, 1, -2200.6653,614.3036,35.1641, -1, -1,-1,30.0);
    CreateDynamicPickup(1254, 1, -2200.9929, 621.2141, 42.0806, -1, -1,-1,30.0);
    CreateDynamicPickup(2061, 1, -2179.2439,606.1400,35.1641, -1, -1,-1,30.0);

}

stock createActorsMN()
{
    actorBanda = CreateActor(106, -2202.4219, 621.2105, 42.0806, 272.3839);
    actorArma = CreateActor(73, -2177.1345, 606.1690, 35.1641, 82.3977);
    actorConsumible = CreateActor(144, -2200.8196, 616.4311, 35.1641, 180.4719);

}

stock destroyActorsMN()
{
    DestroyActor(actorBanda);
    DestroyActor(actorArma);
    DestroyActor(actorConsumible);

}

stock dialogsMN(playerid, i)
{
    if(i == 1)
    {
        ShowPlayerDialog(playerid, MNCONSUMIBLES, DIALOG_STYLE_TABLIST_HEADERS, "Consumibles", 
        "Consumible \t Precio \t Cantidad \n \
        Crack \t $1000 \t 10 \n \
        Heroina \t $3000 \t 10 \n \
        Cocaina \t $3000 \t 10 \n \
        Marihuana \t $3500 \t 10 \n \
        ", 
        "Aceptar", "Cancelar");
    }
    else if (i == 2)
    {
        ShowPlayerDialog(playerid, MNARMAS, DIALOG_STYLE_TABLIST_HEADERS, "Armas", 
        "Arma \t Precio \n \
        Granada \t $100000 \n \
        Molotov \t $75000 \n \
        Sniper \t $35000 \n \
        Ak-47 \t $15000 \n \
        ", 
        "Aceptar", "Cancelar");
    }
}
