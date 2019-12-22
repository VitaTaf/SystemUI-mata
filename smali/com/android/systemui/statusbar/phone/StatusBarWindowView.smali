.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    }
.end annotation


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mDoubleTapEnabled:Z

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mExpandAnimationPending:Z

.field private mExpandAnimationRunning:Z

.field private mExpandingBelowNotch:Z

.field private mFakeWindow:Landroid/view/Window;

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mLeftInset:I

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mRightInset:I

.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSingleTapEnabled:Z

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mSuppressingWakeUpGesture:Z

.field private mTouchActive:Z

.field private mTouchCancelled:Z

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;

.field private final mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 95
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 96
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$pvQm7Ibp9l08TX9BBh0oKl-Se-E;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$pvQm7Ibp9l08TX9BBh0oKl-Se-E;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 656
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    .line 156
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 159
    const-class p2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 160
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 161
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 162
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string p2, "doze_pulse_on_double_tap"

    const-string v0, "doze_tap_gesture"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSingleTapEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSuppressingWakeUpGesture:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/view/ActionMode;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method private applyMargins()V
    .locals 6

    .line 216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 218
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    .line 221
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->ignoreRightInset:Z

    if-nez v4, :cond_1

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v4, v5, :cond_1

    .line 223
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 224
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 225
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 590
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 593
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 595
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 596
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 598
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    .line 565
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 566
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 568
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 569
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 582
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 583
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 584
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 604
    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode$Callback;)V

    .line 605
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public cancelCurrentTouch()V
    .locals 9

    .line 478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    if-eqz v0, :cond_0

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 480
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 484
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    :cond_0
    return-void
.end method

.method public cancelExpandHelper()V
    .locals 0

    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 312
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 315
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 316
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x52

    if-eq v3, v4, :cond_4

    const/16 v0, 0x18

    if-eq v3, v0, :cond_3

    const/16 v0, 0x19

    if-eq v3, v0, :cond_3

    goto :goto_1

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return v1

    :cond_4
    if-nez v0, :cond_5

    .line 324
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result p0

    return p0

    :cond_5
    if-nez v0, :cond_6

    .line 328
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v2

    :cond_7
    if-nez v0, :cond_8

    .line 319
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_8
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 354
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 355
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 359
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandingBelowNotch:Z

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 361
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandingBelowNotch:Z

    :cond_4
    if-nez v4, :cond_5

    .line 364
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldIgnoreTouch()Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    if-eqz v0, :cond_6

    .line 367
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandLatencyTracking()V

    :cond_6
    if-eqz v0, :cond_7

    .line 371
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setTouchActive(Z)V

    .line 372
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    goto :goto_3

    .line 373
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v1, :cond_8

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 375
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setTouchActive(Z)V

    .line 377
    :cond_9
    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    if-eqz v3, :cond_a

    goto :goto_5

    .line 380
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 381
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 382
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    return v2

    :cond_b
    if-eqz v0, :cond_c

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 393
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    :cond_d
    if-eqz v0, :cond_e

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Landroid/widget/FrameLayout;->mBottom:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_e

    .line 401
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandingBelowNotch:Z

    goto :goto_4

    :cond_e
    move v1, v6

    :goto_4
    if-eqz v1, :cond_f

    .line 405
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 408
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_10
    :goto_5
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  mExpandAnimationPending="

    .line 498
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mExpandAnimationRunning="

    .line 499
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchCancelled="

    .line 500
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchActive="

    .line 501
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 170
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    .line 178
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    move v3, v0

    .line 181
    :goto_1
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 182
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 185
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v3, v4, :cond_4

    .line 186
    :cond_3
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 187
    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    :cond_4
    if-eqz v1, :cond_5

    .line 192
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 194
    :cond_5
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 195
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 196
    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 198
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eqz v0, :cond_8

    .line 199
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 200
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    .line 203
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_a

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_a

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    if-nez v0, :cond_a

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    .line 208
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 210
    :cond_b
    iput v2, p1, Landroid/graphics/Rect;->top:I

    :goto_3
    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 243
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 238
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method public synthetic lambda$new$0$StatusBarWindowView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 137
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x18e932e4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x3ff919a6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "doze_tap_gesture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, -0x2

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSingleTapEnabled:Z

    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapEnabled:Z

    :goto_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 303
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public onBiometricAuthModeChanged(ZZ)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->onBiometricAuthModeChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 460
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 249
    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 250
    sget v0, Lcom/android/systemui/R$id;->notification_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 251
    sget v0, Lcom/android/systemui/R$id;->brightness_mirror:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 252
    sget v0, Lcom/android/systemui/R$id;->lock_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 420
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 421
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 422
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    .line 426
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    if-eqz v1, :cond_3

    .line 429
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v2, 0x3

    .line 430
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 431
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 432
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    return v1
.end method

.method public onScrimVisibilityChanged(I)V
    .locals 0

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->onScrimVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Z)V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_0

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->onShowingLaunchAffordanceChanged(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 444
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    .line 449
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 451
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez v0, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    .line 453
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_6
    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 257
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->brightness_mirror:I

    if-ne v0, v1, :cond_0

    .line 259
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setBouncerShowingScrimmed(Z)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBouncerShowingScrimmed(Z)V

    :cond_0
    return-void
.end method

.method public setBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-void
.end method

.method public setExpandAnimationPending(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 0

    .line 490
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    return-void
.end method

.method public setPulsing(Z)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPulsing(Z)V

    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 6

    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandHelperCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v3

    .line 291
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDragDownCallback()Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    move-result-object v4

    .line 292
    new-instance p1, Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;Lcom/android/systemui/plugins/FalsingManager;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    return-void
.end method

.method public setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-void
.end method

.method public setTouchActive(Z)V
    .locals 0

    .line 344
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 554
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 556
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method suppressWakeUpGesture(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSuppressingWakeUpGesture:Z

    return-void
.end method
