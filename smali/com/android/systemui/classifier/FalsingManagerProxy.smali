.class public Lcom/android/systemui/classifier/FalsingManagerProxy;
.super Ljava/lang/Object;
.source "FalsingManagerProxy.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# instance fields
.field private mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mProximitySensor:Lcom/android/systemui/util/ProximitySensor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;Lcom/android/systemui/util/ProximitySensor;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mMainHandler:Landroid/os/Handler;

    .line 63
    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/ProximitySensor;

    .line 64
    iget-object p3, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/ProximitySensor;

    const-string p4, "FalsingManager"

    invoke-virtual {p3, p4}, Lcom/android/systemui/util/ProximitySensor;->setTag(Ljava/lang/String;)V

    .line 65
    new-instance p3, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$qZ6lxH8vX6Mj0Cv4-e94eYSfUGA;

    invoke-direct {p3, p0}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$qZ6lxH8vX6Mj0Cv4-e94eYSfUGA;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;)V

    new-instance p4, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;

    invoke-direct {p4, p0, p1}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    const-string v0, "systemui"

    invoke-static {v0, p3, p4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    .line 69
    new-instance p3, Lcom/android/systemui/classifier/FalsingManagerProxy$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy$1;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    .line 83
    const-class p0, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-interface {p2, p3, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/FalsingManagerProxy;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/FalsingManagerProxy;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p1
.end method

.method private onDeviceConfigPropertiesChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "systemui"

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method getInternalFalsingManager()Lcom/android/systemui/plugins/FalsingManager;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method public isClassiferEnabled()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isClassiferEnabled()Z

    move-result p0

    return p0
.end method

.method public isFalseTouch()Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$FalsingManagerProxy(Ljava/lang/Runnable;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$new$1$FalsingManagerProxy(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 67
    invoke-virtual {p2}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy;->onDeviceConfigPropertiesChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingAborted()V

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingStarted(Z)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerShown()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraHintStarted()V

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraOn()V

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onExpansionFromPulseStopped()V

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceOn()V

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDismissed()V

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDismissing()V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStopDismissing()V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onQsDown()V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onQsDown()V

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOff()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOnFromTouch()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenTurningOn()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onStartExpandingFromPulse()V

    return-void
.end method

.method public onSucccessfulUnlock()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSucccessfulUnlock()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStarted(Z)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStopped()V

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onUnlockHintStarted()V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->setNotificationExpanded()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setQsExpanded(Z)V

    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setShowingAod(Z)V

    return-void
.end method

.method public setupFalsingManager(Landroid/content/Context;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "systemui"

    const-string v1, "brightline_falsing_manager_enabled"

    const/4 v2, 0x0

    .line 99
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    :cond_0
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/FalsingManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    new-instance v1, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;-><init>(Landroid/util/DisplayMetrics;)V

    .line 110
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/ProximitySensor;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    :goto_0
    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p0

    return p0
.end method
