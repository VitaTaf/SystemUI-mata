.class public final Lcom/android/systemui/Dependency_MembersInjector;
.super Ljava/lang/Object;
.source "Dependency_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/android/systemui/Dependency;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;)V"
        }
    .end annotation

    .line 939
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1038
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    .line 844
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    return-void
.end method

.method public static injectMActivityStarterDelegate(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;)V"
        }
    .end annotation

    .line 849
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mActivityStarterDelegate:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;)V"
        }
    .end annotation

    .line 1133
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;)V"
        }
    .end annotation

    .line 952
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;)V"
        }
    .end annotation

    .line 854
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;)V"
        }
    .end annotation

    .line 1259
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)V"
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBatteryController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 1273
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBgHandler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 1269
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;)V"
        }
    .end annotation

    .line 859
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;)V"
        }
    .end annotation

    .line 1239
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBubbleController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;)V"
        }
    .end annotation

    .line 889
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMChannelEditorDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;)V"
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mChannelEditorDialogController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;)V"
        }
    .end annotation

    .line 1289
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)V"
        }
    .end annotation

    .line 989
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 984
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;)V"
        }
    .end annotation

    .line 934
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1299
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;)V"
        }
    .end annotation

    .line 944
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/util/DisplayMetrics;",
            ">;)V"
        }
    .end annotation

    .line 1102
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;)V"
        }
    .end annotation

    .line 1318
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDumpController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/DumpController;",
            ">;)V"
        }
    .end annotation

    .line 1314
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDumpController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;)V"
        }
    .end annotation

    .line 1087
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    return-void
.end method

.method public static injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;)V"
        }
    .end annotation

    .line 1014
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMFalsingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;)V"
        }
    .end annotation

    .line 1333
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mFalsingManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;)V"
        }
    .end annotation

    .line 894
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;)V"
        }
    .end annotation

    .line 1053
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;)V"
        }
    .end annotation

    .line 1265
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mForegroundServiceNotificationListener:Ldagger/Lazy;

    return-void
.end method

.method public static injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;)V"
        }
    .end annotation

    .line 1009
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;)V"
        }
    .end annotation

    .line 970
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    return-void
.end method

.method public static injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;)V"
        }
    .end annotation

    .line 884
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/app/INotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 1328
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;)V"
        }
    .end annotation

    .line 1097
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/view/IWindowManager;",
            ">;)V"
        }
    .end annotation

    .line 1072
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMInitController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/InitController;",
            ">;)V"
        }
    .end annotation

    .line 1128
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mInitController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;)V"
        }
    .end annotation

    .line 1223
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;",
            ">;)V"
        }
    .end annotation

    .line 1112
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardEnvironment:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ">;)V"
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;)V"
        }
    .end annotation

    .line 961
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1285
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;)V"
        }
    .end annotation

    .line 965
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;)V"
        }
    .end annotation

    .line 1067
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;)V"
        }
    .end annotation

    .line 1024
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;)V"
        }
    .end annotation

    .line 864
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;)V"
        }
    .end annotation

    .line 1107
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    return-void
.end method

.method public static injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 1277
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;)V"
        }
    .end annotation

    .line 924
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;)V"
        }
    .end annotation

    .line 1033
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;)V"
        }
    .end annotation

    .line 1082
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;)V"
        }
    .end annotation

    .line 1138
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;)V"
        }
    .end annotation

    .line 874
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;)V"
        }
    .end annotation

    .line 929
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;)V"
        }
    .end annotation

    .line 919
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationAlertingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
            ">;)V"
        }
    .end annotation

    .line 1249
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationAlertingManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;)V"
        }
    .end annotation

    .line 1181
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationBlockingHelperManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;)V"
        }
    .end annotation

    .line 1244
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationEntryManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;)V"
        }
    .end annotation

    .line 1212
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationFilter:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;)V"
        }
    .end annotation

    .line 1155
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationGroupAlertTransferHelper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;)V"
        }
    .end annotation

    .line 1160
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationGroupManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;)V"
        }
    .end annotation

    .line 1170
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationInterruptionStateProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;)V"
        }
    .end annotation

    .line 1218
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationInterruptionStateProvider:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;)V"
        }
    .end annotation

    .line 1196
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;)V"
        }
    .end annotation

    .line 1149
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;)V"
        }
    .end annotation

    .line 1201
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;)V"
        }
    .end annotation

    .line 1175
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;)V"
        }
    .end annotation

    .line 1186
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;)V"
        }
    .end annotation

    .line 1123
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;)V"
        }
    .end annotation

    .line 1207
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationViewHierarchyManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;)V"
        }
    .end annotation

    .line 1077
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1304
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;)V"
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    return-void
.end method

.method public static injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;)V"
        }
    .end annotation

    .line 948
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;)V"
        }
    .end annotation

    .line 1234
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;)V"
        }
    .end annotation

    .line 869
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 999
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;)V"
        }
    .end annotation

    .line 957
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;)V"
        }
    .end annotation

    .line 1309
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;)V"
        }
    .end annotation

    .line 1254
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;)V"
        }
    .end annotation

    .line 1117
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;)V"
        }
    .end annotation

    .line 1191
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;)V"
        }
    .end annotation

    .line 1228
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;)V"
        }
    .end annotation

    .line 994
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 1143
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;)V"
        }
    .end annotation

    .line 979
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mStatusBarWindowController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;)V"
        }
    .end annotation

    .line 1043
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    return-void
.end method

.method public static injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;)V"
        }
    .end annotation

    .line 1048
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)V"
        }
    .end annotation

    .line 974
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;)V"
        }
    .end annotation

    .line 1058
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    return-void
.end method

.method public static injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;)V"
        }
    .end annotation

    .line 904
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;)V"
        }
    .end annotation

    .line 899
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;)V"
        }
    .end annotation

    .line 1092
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;)V"
        }
    .end annotation

    .line 1165
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mVisualStabilityManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;)V"
        }
    .end annotation

    .line 1029
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 1004
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    return-void
.end method

.method public static injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;)V"
        }
    .end annotation

    .line 1062
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    return-void
.end method

.method public static injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;)V"
        }
    .end annotation

    .line 879
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    return-void
.end method
