#include <a_samp>

enum ENUM_FIRE_INFO
{
    bool:fire_VALID,
    bool:fire_MIRROR,
    Float:fire_OFFSET_X,
    Float:fire_OFFSET_Y,
    Float:fire_OFFSET_Z,
    Float:fire_ROT_X,
    Float:fire_ROT_Y,
    Float:fire_ROT_Z
};
new FIRE_INFO[][ENUM_FIRE_INFO] =
{
    {true, false, 0.356599, -2.323499, -2.282700, 0.000000, 0.000000, 180.000000}, //400
    {true, false, 0.438600, -2.509499, -2.088700, 0.000000, 0.000000, 180.000000}, //401
    {true, true, 0.502600, -2.623499, -2.136700, 0.000000, 0.000000, 180.000000}, //402
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //403
    {true, false, 0.452600, -2.679299, -2.057499, 0.000000, 0.000000, 180.000000}, //404
    {true, false, 0.484899, -2.694099, -2.203500, 0.000000, 0.000000, 180.000000}, //405
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //406
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //407
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //408
    {true, false, 0.613099, -3.776700, -2.107199, 0.000000, 0.000000, 180.000000}, //409
    {true, false, 0.393799, -2.313999, -2.057199, 0.000000, 0.000000, 180.000000}, //410
    {true, true, 0.307799, -2.537999, -2.083199, 0.000000, 0.000000, 180.000000}, //411
    {true, false, 0.427300, -3.339999, -2.165199, 0.000000, 0.000000, 180.000000}, //412
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //413
    {true, false, 0.516099, -3.160899, -2.317199, 0.000000, 0.000000, 180.000000}, //414
    {true, true, 0.378100, -2.368799, -2.103199, 0.000000, 0.000000, 180.000000}, //415
    {true, false, 0.504199, -3.720499, -2.407199, 0.000000, 0.000000, 180.000000}, //416
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //417
    {true, false, 0.574599, -2.647899, -2.439199, 0.000000, 0.000000, 180.000000}, //418
    {true, false, 0.558099, -2.929099, -2.161200, 0.000000, 0.000000, 180.000000}, //419
    {true, false, 0.574100, -2.639099, -2.137199, 0.000000, 0.000000, 180.000000}, //420
    {true, false, 0.450100, -2.983999, -2.191200, 0.000000, 0.000000, 180.000000}, //421
    {true, false, 0.411700, -2.547899, -2.334000, 0.000000, 0.000000, 180.000000}, //422
    {true, false, -0.369800, -2.315999, -2.404000, 0.000000, 0.000000, 180.000000}, //423
    {true, true, 0.512099, -1.669300, -1.856099, 0.000000, 0.000000, 180.000000}, //424
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //425
    {true, false, 0.578000, -2.621899, -2.136100, 0.000000, 0.000000, 180.000000}, //426
    {true, false, 0.601499, -3.878599, -2.324200, 0.000000, 0.000000, 180.000000}, //427
    {true, false, 0.588999, -2.971599, -2.462199, 0.000000, 0.000000, 180.000000}, //428
    {true, true, 0.503000, -2.523599, -1.965199, 0.000000, 0.000000, 180.000000}, //429
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //430
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //431
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //432
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //433
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //434
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //435
    {true, false, 0.486999, -2.497599, -2.099299, 0.000000, 0.000000, 180.000000}, //436
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //437
    {true, false, 0.490399, -2.705899, -2.371700, 0.000000, 0.000000, 180.000000}, //438
    {true, true, 0.352400, -2.581899, -2.064399, 0.000000, 0.000000, 180.000000}, //439
    {true, false, 0.420700, -2.677599, -2.570899, 0.000000, 0.000000, 180.000000}, //440
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //441
    {true, false, 0.593100, -2.798699, -2.205100, 0.000000, 0.000000, 180.000000}, //442
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //443
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //444
    {true, false, 0.480199, -2.714699, -2.147099, 0.000000, 0.000000, 180.000000}, //445
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //446
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //447
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //448
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //449
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //450
    {true, false, 0.005400, -2.552699, -1.987100, 0.000000, 0.000000, 180.000000}, //451
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //452
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //453
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //454
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //455
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //456
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //457
    {true, false, 0.519200, -2.790499, -2.229899, 0.000000, 0.000000, 180.000000}, //458
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //459
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //460
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //461
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //462
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //463
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //464
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //465
    {true, false, 0.435200, -2.877399, -2.125900, 0.000000, 0.000000, 180.000000}, //466
    {true, false, 0.481200, -2.917399, -2.097899, 0.000000, 0.000000, 180.000000}, //467
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //468
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //469
    {true, false, -1.250200, -2.029500, -0.472800, 0.000000, 0.000000, 180.000000}, //470
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //471
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //472
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //473
    {true, true, 0.584999, -2.822599, -2.209800, 0.000000, 0.000000, 180.000000}, //474
    {true, false, 0.481000, -2.595699, -2.113800, 0.000000, 0.000000, 180.000000}, //475
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //476
    {true, false, 0.587000, -2.805699, -2.071799, 0.000000, 0.000000, 180.000000}, //477
    {true, false, 0.416700, -2.568699, -2.196799, 0.000000, 0.000000, 180.000000}, //478
    {true, false, 0.460799, -2.865999, -2.082799, 0.000000, 0.000000, 180.000000}, //479
    {true, false, 0.483300, -2.409999, -2.163700, 0.000000, 0.000000, 180.000000}, //480
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //481
    {true, false, 0.445899, -2.641699, -2.439800, 0.000000, 0.000000, 180.000000}, //482
    {true, false, -0.340600, -2.846899, -2.512400, 0.000000, 0.000000, 180.000000}, //483
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //484
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //485
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //486
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //487
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //488
    {true, false, 0.446500, -2.771499, -2.240900, 0.000000, 0.000000, 180.000000}, //489
    {true, false, 0.439999, -3.227299, -2.240900, 0.000000, 0.000000, 180.000000}, //490
    {true, false, 0.572200, -2.925899, -2.166899, 0.000000, 0.000000, 180.000000}, //491
    {true, false, 0.579599, -2.606400, -2.116899, 0.000000, 0.000000, 180.000000}, //492
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //493
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //494
    {true, false, 0.596599, -2.335199, -2.332799, 0.000000, 0.000000, 180.000000}, //495
    {true, false, 0.545400, -2.173599, -2.111700, 0.000000, 0.000000, 180.000000}, //496
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //497
    {true, false, -0.473800, -3.108199, -2.361400, 0.000000, 0.000000, 180.000000}, //498
    {true, false, 0.516200, -3.340600, -2.287400, 0.000000, 0.000000, 180.000000}, //499
    {true, false, 0.446900, -1.940299, -2.245399, 0.000000, 0.000000, 180.000000}, //500
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //501
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //502
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //503
    {true, false, 0.430299, -2.876699, -2.117300, 0.000000, 0.000000, 180.000000}, //504
    {true, false, 0.446299, -2.772699, -2.236900, 0.000000, 0.000000, 180.000000}, //505
    {true, true, 0.560599, -2.476300, -2.120100, 0.000000, 0.000000, 180.000000}, //506
    {true, false, 0.485199, -2.971699, -2.262000, 0.000000, 0.000000, 180.000000}, //507
    {true, false, 0.467400, -3.586999, -2.686900, 0.000000, 0.000000, 180.000000}, //508
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //509
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //510
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //511
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //512
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //513
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //514
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //515
    {true, false, 0.447800, -2.946699, -2.141499, 0.000000, 0.000000, 180.000000}, //516
    {true, false, 0.501800, -2.858699, -2.119499, 0.000000, 0.000000, 180.000000}, //517
    {true, false, -0.423400, -2.882499, -2.091500, 0.000000, 0.000000, 180.000000}, //518
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //519
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //520
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //521
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //522
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //523
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //524
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //525
    {true, false, 0.481799, -2.314099, -2.129499, 0.000000, 0.000000, 180.000000}, //526
    {true, false, 0.471799, -2.298099, -1.999199, 0.000000, 0.000000, 180.000000}, //527
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //528
    {true, false, -0.424699, -2.729899, -2.011199, 0.000000, 0.000000, 180.000000}, //529
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //530
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //531
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //532
    {true, true, 0.515100, -2.452399, -2.037100, 0.000000, 0.000000, 180.000000}, //533
    {true, true, 0.483099, -2.958400, -2.167099, 0.000000, 0.000000, 180.000000}, //534
    {true, true, 0.350600, -2.693499, -2.189100, 0.000000, 0.000000, 180.000000}, //535
    {true, true, 0.500000, -2.971299, -2.161099, 0.000000, 0.000000, 180.000000}, //536
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //537
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //538
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //539
    {true, false, -0.410600, -2.748699, -2.265599, 0.000000, 0.000000, 180.000000}, //540
    {true, true, 0.624000, -2.205999, -1.875100, 0.000000, 0.000000, 180.000000}, //541
    {true, false, 0.587400, -2.829499, -1.996899, 0.000000, 0.000000, 180.000000}, //542
    {true, false, -0.411000, -2.764599, -2.099200, 0.000000, 0.000000, 180.000000}, //543
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //544
    {true, true, 0.314900, -2.263700, -2.260600, 0.000000, 0.000000, 180.000000}, //545
    {true, false, 0.581200, -2.833499, -2.020299, 0.000000, 0.000000, 180.000000}, //546
    {true, false, 0.629199, -2.589499, -2.074300, 0.000000, 0.000000, 180.000000}, //547
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //548
    {true, false, 0.441300, -2.511600, -2.030299, 0.000000, 0.000000, 180.000000}, //549
    {true, false, -0.628300, -2.899799, -2.267199, 0.000000, 0.000000, 180.000000}, //550
    {true, false, 0.590799, -3.145499, -2.092799, 0.000000, 0.000000, 180.000000}, //551
    {true, false, 0.446900, -3.063399, -1.924800, 0.000000, 0.000000, 180.000000}, //552
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //553
    {true, false, 0.559300, -2.751999, -2.208499, 0.000000, 0.000000, 180.000000}, //554
    {true, true, 0.136000, -2.282899, -2.003200, 0.000000, 0.000000, 180.000000}, //555
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //556
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //557
    {true, true, 0.465799, -2.558699, -1.977200, 0.000000, 0.000000, 180.000000}, //558
    {true, true, 0.633099, -2.394599, -1.977200, 0.000000, 0.000000, 180.000000}, //559
    {true, true, 0.479999, -2.474699, -1.991199, 0.000000, 0.000000, 180.000000}, //560
    {true, true, 0.446200, -2.739599, -2.166300, 0.000000, 0.000000, 180.000000}, //561
    {true, true, 0.483300, -2.380199, -2.037100, 0.000000, 0.000000, 180.000000}, //562
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //563
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //564
    {true, false, 0.479299, -2.134199, -1.999099, 0.000000, 0.000000, 180.000000}, //565
    {true, false, 0.564700, -2.946699, -2.063100, 0.000000, 0.000000, 180.000000}, //566
    {true, false, 0.628700, -2.776700, -2.252900, 0.000000, 0.000000, 180.000000}, //567
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //568
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //569
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //570
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //571
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //572
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //573
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //574
    {true, false, 0.453399, -2.709800, -1.975300, 0.000000, 0.000000, 180.000000}, //575
    {true, false, 0.658100, -3.092499, -2.043299, 0.000000, 0.000000, 180.000000}, //576
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //577
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //578
    {true, false, -0.424600, -2.890699, -2.102699, 0.000000, 0.000000, 180.000000}, //579
    {true, false, -0.408600, -2.872699, -2.092700, 0.000000, 0.000000, 180.000000}, //580
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //581
    {true, false, 0.444999, -3.395499, -2.334199, 0.000000, 0.000000, 180.000000}, //582
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //583
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //584
    {true, false, -0.428999, -3.143299, -1.889299, 0.000000, 0.000000, 180.000000}, //585
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //586
    {true, true, 0.698000, -2.692600, -2.056400, 0.000000, 0.000000, 180.000000}, //587
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //588
    {true, false, 0.583999, -2.358599, -1.965899, 0.000000, 0.000000, 180.000000}, //589
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //590
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //591
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //592
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //593
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //594
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //595
    {true, false, 0.577000, -2.622299, -2.138499, 0.000000, 0.000000, 180.000000}, //596
    {true, false, 0.577000, -2.622299, -2.138499, 0.000000, 0.000000, 180.000000}, //597
    {true, false, 0.595000, -2.678299, -2.002500, 0.000000, 0.000000, 180.000000}, //598
    {true, false, 0.440600, -2.773699, -2.239099, 0.000000, 0.000000, 180.000000}, //599
    {true, false, 0.442600, -2.763700, -2.054199, 0.000000, 0.000000, 180.000000}, //600
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //601
    {true, true, 0.560999, -2.523999, -2.200700, 0.000000, 0.000000, 180.000000}, //602
    {true, true, 0.587000, -2.661999, -2.192699, 0.000000, 0.000000, 180.000000}, //603
    {true, false, 0.425700, -2.877099, -2.124700, 0.000000, 0.000000, 180.000000}, //604
    {true, false, -0.411900, -2.767699, -2.098700, 0.000000, 0.000000, 180.000000}, //605
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //606
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //607
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //608
    {true, false, -0.477699, -3.106199, -2.359499, 0.000000, 0.000000, 180.000000}, //609
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000}, //610
    {false, false, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000} //611
};

new
    bool:Player_Fire_Enabled[MAX_PLAYERS],
    Player_Key_Sprint_Time[MAX_PLAYERS];

public OnPlayerDisconnect(playerid, reason)
{
    Player_Fire_Enabled[playerid] = false;
    Player_Key_Sprint_Time[playerid] = 0;
    return 1;
}

CMD:fuego(playerid, params[])
{
    if(Player_Fire_Enabled[playerid])
    {
        Player_Fire_Enabled[playerid] = false;
        SendClientMessage(playerid, -1, "Fuego desactivado.");
    }
    else
    {
        Player_Fire_Enabled[playerid] = true;
        SendClientMessage(playerid, -1, "Fuego activado.");
    }
    return 1;
}

#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define RELEASED(%0) (((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(Player_Fire_Enabled[playerid])
    {
        if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
        {
            new vehicleid = GetPlayerVehicleID(playerid);
            if(vehicleid)
            {
                new vehicle_modelid = GetVehicleModel(vehicleid);
                if(FIRE_INFO[vehicle_modelid - 400][fire_VALID])
                {
                    if(PRESSED(KEY_SPRINT))
                    {
                        Player_Key_Sprint_Time[playerid] = gettime();
                    }
                    else if(RELEASED(KEY_SPRINT))
                    {
                        if(gettime() - Player_Key_Sprint_Time[playerid] > 2)
                        {
                            PlayerPlaySound(playerid, 1131, 0.0, 0.0, 0.0);

                            new effect_object = CreateObject(18695, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), effect_object2 = -1;
                            AttachObjectToVehicle
                            (
                                effect_object, vehicleid,
                                FIRE_INFO[vehicle_modelid - 400][fire_OFFSET_X], FIRE_INFO[vehicle_modelid - 400][fire_OFFSET_Y], FIRE_INFO[vehicle_modelid - 400][fire_OFFSET_Z],
                                FIRE_INFO[vehicle_modelid - 400][fire_ROT_X], FIRE_INFO[vehicle_modelid - 400][fire_ROT_Y], FIRE_INFO[vehicle_modelid - 400][fire_ROT_Z]
                            );

                            if(FIRE_INFO[vehicle_modelid - 400][fire_MIRROR])
                            {
                                effect_object2 = CreateObject(18695, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
                                AttachObjectToVehicle
                                (
                                    effect_object2, vehicleid,
                                    -FIRE_INFO[vehicle_modelid - 400][fire_OFFSET_X], FIRE_INFO[vehicle_modelid - 400][fire_OFFSET_Y], FIRE_INFO[vehicle_modelid - 400][fire_OFFSET_Z],
                                    FIRE_INFO[vehicle_modelid - 400][fire_ROT_X], -FIRE_INFO[vehicle_modelid - 400][fire_ROT_Y], -FIRE_INFO[vehicle_modelid - 400][fire_ROT_Z]
                                );
                            }

                            SetTimerEx("DestroyEffectObject", 100, false, "ii", effect_object, effect_object2);
                        }
                    }
                }
            }
        }
    }
    return 1;
}

forward DestroyEffectObject(objectid, objectid2);
public DestroyEffectObject(objectid, objectid2)
{
    DestroyObject(objectid);
    if(objectid2 != -1) DestroyObject(objectid2);
    return 1;
}