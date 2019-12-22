.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBarHeight:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardDisplayMode:Landroid/view/Display$Mode;

.field private final mKeyguardScreenRotation:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

.field private final mLockScreenDisplayTimeout:J

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mScreenBrightnessDoze:F

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarView:Landroid/view/ViewGroup;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    .line 94
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    .line 96
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 718
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 116
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mActivityManager:Landroid/app/IActivityManager;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->shouldEnableKeyguardScreenRotation()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardScreenRotation:Z

    .line 118
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 119
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    .line 120
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 121
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$integer;->config_lockScreenDisplayTimeout:I

    .line 123
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLockScreenDisplayTimeout:J

    .line 124
    check-cast p5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 p3, 0x1

    .line 125
    invoke-interface {p5, p2, p3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 127
    invoke-interface {p6, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p2

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p3

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$integer;->config_keyguardRefreshRate:I

    .line 135
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 137
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;

    invoke-direct {p4, p1, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;-><init>(ILandroid/view/Display$Mode;)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display$Mode;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 9

    .line 103
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/WindowManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 104
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 103
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarState(I)V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 254
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 255
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardScreenRotation:Z

    if-eqz p1, :cond_2

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 258
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 2

    .line 355
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 357
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 365
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 369
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUi:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    if-eq p1, v0, :cond_1

    .line 374
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatusBarWindowController"

    const-string v1, "Failed to call setHasTopUi"

    .line 376
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUi:Z

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->notifyStateChangedCallbacks()V

    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 413
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceDozeBrightness:Z

    if-eqz p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 416
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 315
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 318
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 3

    .line 266
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 267
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardNeedsInput:Z

    if-nez v1, :cond_3

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubbleExpanded:Z

    if-eqz v1, :cond_4

    .line 270
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 271
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 272
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    .line 276
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 277
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 273
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 274
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 280
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-void
.end method

.method private applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 284
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 395
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceStatusBarVisible:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 396
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 421
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceHasTopUi:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    .line 294
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

    if-eqz p1, :cond_0

    .line 296
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 2

    .line 334
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceUserActivity:Z

    if-nez p1, :cond_0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_0
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 5

    .line 218
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 224
    :goto_0
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 226
    :goto_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 227
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 228
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_4

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 234
    :goto_4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x80000

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_5

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x80001

    and-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 240
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    if-ne v0, v2, :cond_6

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardGoingAway:Z

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    .line 244
    :goto_6
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-nez p1, :cond_8

    if-eqz v2, :cond_7

    goto :goto_7

    .line 247
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    goto :goto_8

    .line 245
    :cond_8
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 249
    :goto_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    int-to-long p0, p0

    const-string v0, "display_mode_id"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_9
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 405
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    if-eqz p1, :cond_0

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 425
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->notTouchable:Z

    if-eqz p1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 346
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 2

    .line 323
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x2710

    goto :goto_0

    .line 327
    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLockScreenDisplayTimeout:J

    :goto_0
    iput-wide p0, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_1

    .line 329
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_1
    return-void
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z
    .locals 0

    .line 308
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceCollapsed:Z

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelVisible:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    if-nez p0, :cond_0

    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$0(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .locals 1

    .line 138
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    if-ne v0, p0, :cond_0

    .line 139
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 140
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setKeyguardDark(Z)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    and-int/lit16 p1, p1, -0x2001

    .line 214
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    .line 503
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 2

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lockscreen.rot_override"

    .line 159
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/systemui/R$bool;->config_enableLockScreenRotation:I

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public add(Landroid/view/ViewGroup;I)V
    .locals 7

    .line 174
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x10

    .line 186
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "StatusBar"

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    .line 191
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->onThemeChanged()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "StatusBarWindowController:"

    .line 617
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardDisplayMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getBubblesShowing()Z
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    return p0
.end method

.method public getForceHasTopUi()Z
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceHasTopUi:Z

    return p0
.end method

.method public getForcePluginOpen()Z
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    return p0
.end method

.method public getPanelExpanded()Z
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    return p0
.end method

.method public getStatusBarView()Landroid/view/ViewGroup;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isShowingWallpaper()Z
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyStateChangedCallbacks()V
    .locals 5

    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    if-eqz v1, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    .line 529
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    .line 634
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardDark(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    .line 465
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    .line 547
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 548
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    .line 460
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBubbleExpanded(Z)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubbleExpanded:Z

    .line 591
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBubblesShowing(Z)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    .line 576
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 202
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    .line 543
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceDozeBrightness:Z

    .line 538
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceHasTopUi(Z)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceHasTopUi:Z

    .line 651
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForcePluginOpen(Z)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    .line 553
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 554
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;

    if-eqz p0, :cond_0

    .line 555
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public setForcePluginOpenListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;

    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceStatusBarVisible:Z

    .line 508
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceCollapsed:Z

    .line 518
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    .line 490
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    .line 470
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardGoingAway:Z

    .line 642
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardNeedsInput:Z

    .line 444
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    .line 439
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    .line 434
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->notTouchable:Z

    .line 568
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    .line 523
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelVisible:Z

    .line 449
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    .line 450
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    .line 475
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setScrimsVisibility(I)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    .line 485
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    .line 455
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->wallpaperSupportsAmbientMode:Z

    .line 495
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method
