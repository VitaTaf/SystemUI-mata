.class public Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;
    }
.end annotation


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field private final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field protected mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDozing:Z

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

.field protected mFirstUpdate:Z

.field private mGesturalNav:Z

.field private mGoingToSleepVisibleNotOccluded:Z

.field private mIsDocked:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mLastBiometricMode:I

.field private mLastBouncerDismissible:Z

.field private mLastBouncerShowing:Z

.field private mLastDozing:Z

.field private mLastGesturalNav:Z

.field private mLastIsDocked:Z

.field private mLastLockVisible:Z

.field protected mLastOccluded:Z

.field private mLastPulsing:Z

.field protected mLastRemoteInputActive:Z

.field protected mLastShowing:Z

.field private mLockIconContainer:Landroid/view/ViewGroup;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mNotificationContainer:Landroid/view/View;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mOccluded:Z

.field private mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

.field private mPulsing:Z

.field protected mRemoteInputActive:Z

.field protected mShowing:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    .line 168
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 169
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 170
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 171
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 172
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 173
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 751
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 194
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 196
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 197
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 198
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 199
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 200
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    .line 199
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 201
    const-class p1, Lcom/android/systemui/dock/DockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dock/DockManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz p1, :cond_0

    .line 203
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 204
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p1}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    :cond_0
    const/4 v0, 0x0

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getNavBarShowDelay()J
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    return-wide v0

    .line 743
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x140

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private hideBouncer(Z)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    return-void
.end method

.method private isWakeAndUnlocking()Z
    .locals 2

    .line 374
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private needsBypassFading()Z
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 625
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 626
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setDozing(Z)V
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eq v0, p1, :cond_2

    .line 436
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    if-nez p1, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    :cond_2
    return-void
.end method

.method private updateLockIcon()V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 270
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 271
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 272
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 274
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastLockVisible:Z

    if-eq v0, v1, :cond_6

    .line 275
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastLockVisible:Z

    if-eqz v1, :cond_4

    .line 277
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    const-wide/16 v0, 0xdc

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    goto :goto_3

    .line 282
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x43

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x6e

    .line 287
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private wakeAndUnlockDejank()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 662
    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$WtAkg4w14mbTRLi3kx_TWboxp-s;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$WtAkg4w14mbTRLi3kx_TWboxp-s;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCollapsePanels(F)V
    .locals 2

    .line 889
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public bouncerIsOrWillBeShowing()Z
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inTransit()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bouncerNeedsScrimming()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->willDismissWithAction()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 940
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFullScreenUserSwitcherState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 941
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public cancelPendingWakeupAction()V
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    .line 932
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_0

    .line 933
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 934
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public dismissAndCollapse()V
    .locals 6

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 364
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 366
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 367
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 370
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "StatusBarKeyguardViewManager:"

    .line 946
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOccluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRemoteInputActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGoingToSleepVisibleNotOccluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneRunnables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingWakeupAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz p0, :cond_0

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method protected getLastNavBarVisible()Z
    .locals 5

    .line 843
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 844
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 845
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastIsDocked:Z

    if-nez v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-nez v0, :cond_5

    if-eqz v3, :cond_7

    .line 847
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-nez v0, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-nez p0, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    return v1
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    return-object p0
.end method

.method public hide(JJ)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 531
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 532
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 533
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v5

    .line 532
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    .line 536
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x7d0

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p3

    .line 539
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x30

    add-long v6, p1, v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    .line 540
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 542
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_1

    .line 543
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move v4, v15

    goto/16 :goto_7

    .line 561
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 562
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 563
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    move/from16 v16, v15

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    .line 564
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result v17

    if-eqz v17, :cond_3

    const-wide/16 v2, 0x43

    :goto_2
    move-wide v11, v4

    goto :goto_3

    :cond_3
    if-eqz v16, :cond_4

    const-wide/16 v2, 0xf0

    goto :goto_2

    :cond_4
    move-wide v11, v6

    .line 572
    :goto_3
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-wide/from16 v9, p1

    move-wide v13, v2

    move v4, v15

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardFadingAway(JJJZ)V

    .line 573
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startKeyguardFadingAway()V

    .line 574
    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    if-eqz v16, :cond_6

    if-eqz v17, :cond_5

    .line 577
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$aIusP5sgaSr59XXK3nFh48FBNI4;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$aIusP5sgaSr59XXK3nFh48FBNI4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_4

    .line 585
    :cond_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardWhilePulsing()V

    .line 587
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wakeAndUnlockDejank()V

    goto :goto_6

    .line 589
    :cond_6
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v5

    if-nez v5, :cond_8

    .line 591
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardFadingAway(Z)V

    if-eqz v17, :cond_7

    .line 593
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$EJI38cHcIk60L5eHmdpMvFRistw;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$EJI38cHcIk60L5eHmdpMvFRistw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_5

    .line 600
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 606
    :goto_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wakeAndUnlockDejank()V

    goto :goto_6

    .line 609
    :cond_8
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 610
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    .line 611
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->finishKeyguardFadingAway()V

    .line 614
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 616
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardShowing(Z)V

    .line 617
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    :goto_7
    const/16 v0, 0x3e

    .line 619
    invoke-static {v0, v4}, Landroid/util/StatsLog;->write(II)I

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 856
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isBouncerShowing()Z
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isGoingToNotificationShade()Z
    .locals 0

    .line 876
    const-class p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 877
    invoke-interface {p0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p0

    return p0
.end method

.method public isGoingToSleepVisibleNotOccluded()Z
    .locals 0

    .line 404
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    return p0
.end method

.method protected isNavBarVisible()Z
    .locals 5

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    .line 831
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 832
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 833
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    if-nez v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-nez v1, :cond_5

    if-eqz v0, :cond_7

    .line 835
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-nez p0, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :cond_7
    :goto_3
    return v2
.end method

.method public isOccluded()Z
    .locals 0

    .line 506
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return p0
.end method

.method public isSecure()Z
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 698
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return p0
.end method

.method public isUnlockWithWallpaper()Z
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isShowingWallpaper()Z

    move-result p0

    return p0
.end method

.method public keyguardGoingAway()V
    .locals 0

    .line 885
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->keyguardGoingAway()V

    return-void
.end method

.method public synthetic lambda$hide$0$StatusBarKeyguardViewManager()V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    return-void
.end method

.method public synthetic lambda$hide$1$StatusBarKeyguardViewManager()V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    return-void
.end method

.method public synthetic lambda$onKeyguardFadedAway$2$StatusBarKeyguardViewManager()V
    .locals 1

    .line 650
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardFadingAway(Z)V

    return-void
.end method

.method public synthetic lambda$wakeAndUnlockDejank$3$StatusBarKeyguardViewManager()V
    .locals 1

    .line 664
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public launchPendingWakeupAction()V
    .locals 4

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    .line 919
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_1

    .line 921
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->afterKeyguardGone:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->message:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz p0, :cond_1

    .line 925
    invoke-interface {p0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticated(Z)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->endAffordanceLaunch()V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 632
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 968
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setDozing(Z)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    .line 413
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    return-void
.end method

.method public onKeyguardFadedAway()V
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$nb9yQRGKq0kAyQz17NqvixIA7LU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$nb9yQRGKq0kAyQz17NqvixIA7LU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    .line 654
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->finishKeyguardFadingAway()V

    .line 655
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 637
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 638
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eq p1, v0, :cond_0

    .line 639
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method public onPanelExpansionChanged(FZ)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isUnlockHintRunning()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    goto :goto_0

    .line 243
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    :cond_2
    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 247
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 248
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 249
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result p1

    if-nez p1, :cond_4

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    goto :goto_0

    .line 252
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz p2, :cond_4

    cmpl-float p1, p1, v2

    if-nez p1, :cond_4

    .line 255
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const-string p2, "BOUNCER_VISIBLE"

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onQsExpansionChanged(F)V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 963
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 645
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 646
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 0

    .line 860
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 11

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    .line 215
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object v6, p2

    .line 216
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v2, p6

    .line 217
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    .line 218
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastLockVisible:Z

    :cond_1
    move-object v2, p4

    .line 221
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 222
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    move-object v6, p2

    move-object/from16 v7, p5

    move-object/from16 v9, p9

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/SystemUIFactory;->createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 225
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 226
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    move-object/from16 v1, p8

    .line 227
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v1, p7

    .line 228
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    return-void
.end method

.method public reset(Z)V
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_3

    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    if-nez p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    .line 393
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    .line 398
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardReset()V

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_3
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardNeedsInput(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setOccluded(Z)V

    const/16 v0, 0x3e

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 468
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 469
    invoke-static {v0, v2}, Landroid/util/StatsLog;->write(II)I

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 473
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p2, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 483
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 484
    invoke-static {v0, v2}, Landroid/util/StatsLog;->write(II)I

    .line 487
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 488
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 489
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v3, :cond_4

    .line 490
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 492
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardOccluded(Z)V

    .line 495
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v1, :cond_5

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :cond_5
    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    .line 500
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 501
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateKeyguardUnoccluding()V

    :cond_6
    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eq v0, p1, :cond_0

    .line 453
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method protected shouldDestroyViewOnReset()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p0

    return p0
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 0

    .line 852
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->shouldDismissOnMenuPressed()Z

    move-result p0

    return p0
.end method

.method public shouldSubtleWindowAnimationsForUnlock()Z
    .locals 0

    .line 872
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result p0

    return p0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 4

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardShowing(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 302
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v3

    .line 301
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    const/16 p0, 0x3e

    const/4 p1, 0x2

    .line 304
    invoke-static {p0, p1}, Landroid/util/StatsLog;->write(II)I

    return-void
.end method

.method public showBouncer(Z)V
    .locals 2

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected showBouncerOrKeyguard(Z)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_0

    .line 315
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 316
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDestroyViewOnReset()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 321
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    .line 324
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 519
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onBouncerPreHideAnimation()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 521
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 523
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->blockExpansionForCurrentTouch()V

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method protected updateNavigationBarVisibility(Z)V
    .locals 4

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 812
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 814
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 816
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 820
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 821
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateStates()V
    .locals 10

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    .line 760
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 761
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 762
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v3

    .line 763
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 764
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    const/4 v7, 0x0

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v5

    .line 766
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move v9, v7

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v5

    :goto_3
    if-ne v8, v9, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_7

    :cond_4
    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 772
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v9, 0x400000

    or-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_5

    .line 770
    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v9, -0x400001

    and-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 776
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v0

    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result v8

    if-ne v0, v8, :cond_8

    .line 778
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_9

    .line 779
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateNavigationBarVisibility(Z)V

    .line 782
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v3, v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_b

    .line 783
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBouncerShowing(Z)V

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBouncerShowing(Z)V

    .line 787
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    move v8, v5

    goto :goto_6

    :cond_c
    move v8, v7

    .line 788
    :goto_6
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_d

    move v9, v5

    goto :goto_7

    :cond_d
    move v9, v7

    :goto_7
    if-ne v8, v9, :cond_e

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_10

    :cond_e
    if-eqz v1, :cond_f

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    move v5, v7

    .line 789
    :goto_8
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardVisibilityChanged(Z)V

    .line 791
    :cond_10
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v3, v5, :cond_11

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v5, :cond_12

    .line 792
    :cond_11
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    .line 795
    :cond_12
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 796
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 797
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 798
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 799
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 800
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    .line 801
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    .line 802
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    .line 804
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    .line 805
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastIsDocked:Z

    .line 806
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onKeyguardViewManagerStatesUpdated()V

    return-void
.end method
