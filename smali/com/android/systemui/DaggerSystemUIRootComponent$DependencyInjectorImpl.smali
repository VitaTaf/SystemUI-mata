.class final Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1293
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1292
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1290
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1296
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1294
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarterDelegate(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1298
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1297
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1302
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1301
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1299
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1306
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1305
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1303
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1310
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1309
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1307
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1314
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1313
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1311
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1318
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1317
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1315
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1322
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1321
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1319
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1325
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1323
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1329
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1328
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1326
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1332
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1330
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1336
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1335
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1333
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1340
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1339
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1337
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1344
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1343
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1341
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1347
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1345
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1351
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1350
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1348
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1355
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1354
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1352
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1358
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1356
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1361
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1359
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1362
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1365
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1364
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1362
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1368
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1366
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1370
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1369
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1374
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1373
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1371
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1376
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1375
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1378
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1377
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1379
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1380
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1379
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1383
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1381
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1386
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1384
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1390
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1387
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1394
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1393
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1391
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1398
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1397
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1395
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1400
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1399
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1403
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1401
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1405
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1404
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1409
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1408
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1406
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1411
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1410
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1415
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1414
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1412
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1419
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1418
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1416
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1422
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1420
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1425
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1423
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1427
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1426
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1430
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1428
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1433
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1431
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1435
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1434
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1439
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1438
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1436
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1441
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1440
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1444
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1442
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1447
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1445
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1450
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1448
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1454
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1453
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1451
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1456
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1455
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1459
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1457
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1462
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1460
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1465
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1463
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1469
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1468
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1466
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1472
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1470
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1476
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1475
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1473
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1478
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1477
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMInitController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1479
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1482
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1481
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1479
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1486
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1485
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1483
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1490
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1489
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1487
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1495
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1493
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1491
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1499
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1498
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1496
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1502
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1500
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1505
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1503
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1508
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1506
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1511
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1509
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1515
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1514
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1512
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1519
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1518
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1516
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1521
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1520
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1524
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1522
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1526
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1525
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1530
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1529
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1527
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1532
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1531
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1535
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1533
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationInterruptionStateProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1537
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1536
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1540
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1538
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1544
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1543
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1541
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1546
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1545
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1549
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1547
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1552
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1550
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationAlertingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1553
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1555
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1553
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1558
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1556
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1562
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1561
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1559
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1563
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1564
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1563
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1565
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1566
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1565
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1568
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1567
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1569
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1570
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1569
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1573
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1571
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1574
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1575
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1574
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1578
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1576
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1582
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1581
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1579
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1583
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1585
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1583
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1589
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1588
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1586
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1590
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1591
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1590
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1594
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1592
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1597
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1595
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMChannelEditorDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1600
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1598
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1601
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1604
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1603
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 1601
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFalsingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
