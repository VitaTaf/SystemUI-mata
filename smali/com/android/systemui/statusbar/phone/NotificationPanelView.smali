.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/qs/QS$HeightListener;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final mDummyDirtyRect:Landroid/graphics/Rect;

.field private static final mEmptyRect:Landroid/graphics/Rect;


# instance fields
.field private final PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private final PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAffordanceHasPreview:Z

.field protected mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAffordanceLaunchListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowExpandForSmallExpansion:Z

.field private final mAlphaPaint:Landroid/graphics/Paint;

.field private mAmbientIndicationBottomPadding:I

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextPositionUpdate:Z

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field protected mBarState:I

.field protected mBigClockContainer:Landroid/view/ViewGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBlockTouches:Z

.field private mBlockingExpansionForCurrentTouch:Z

.field private mBottomAreaShadeAlpha:F

.field private final mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConflictingQsExpansionGesture:Z

.field private mCurrentPanelAlpha:I

.field private mDarkIconSize:I

.field private mDelayShowingKeyguardStatusBar:Z

.field private mDisplayId:I

.field private mDownX:F

.field private mDownY:F

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyDragAmount:F

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

.field private mExpandOffset:F

.field private mExpandingFromHeadsUp:Z

.field private mExpectingSynthesizedDown:Z

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFirstBypassAttempt:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpInset:I

.field private mHeadsUpPinnedMode:Z

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private mHideIconsDuringNotificationLaunch:Z

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private mIntercepting:Z

.field private mInterpolatedDarkAmount:F

.field private mIsExpanding:Z

.field private mIsExpansionFromHeadsUp:Z

.field private mIsFullWidth:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardHeadsUpShowingAmount:F

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardShowing:Z

.field protected mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardStatusBarAnimateAlpha:F

.field protected mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardStatusViewAnimating:Z

.field final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastEventSynthesizedDown:Z

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private mLinearDarkAmount:F

.field private mListenForHeadsUp:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mMaxFadeoutHeight:I

.field private mNavigationBarBottomHeight:I

.field private mNoVisibleNotifications:Z

.field protected mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field protected mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private mOnReinflationListener:Ljava/lang/Runnable;

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelAlpha:I

.field private mPanelAlphaEndAction:Ljava/lang/Runnable;

.field private mPanelExpanded:Z

.field private mPositionMinSideMargin:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mPulsing:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsAnimatorExpand:Z

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field protected mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field protected mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field protected mQsFrame:Landroid/widget/FrameLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mQsFullyExpanded:Z

.field protected mQsMaxExpansionHeight:I

.field protected mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsNotificationTopPadding:I

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShelfHeight:I

.field private mShowEmptyShadeView:Z

.field private mShowIconsWhenExpanded:Z

.field private mShowingKeyguardHeadsUp:Z

.field private mStackScrollerMeasuringPass:I

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field private mThemeResId:I

.field private mTrackingHeadsUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockMoveDistance:I

.field protected mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserSetupComplete:Z

.field private mVerticalTranslationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyRect:Landroid/graphics/Rect;

    .line 159
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 161
    sget-object v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$8G22_EmtDJSBkKVCqvCP10-xXeA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$8G22_EmtDJSBkKVCqvCP10-xXeA;

    sget-object v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;

    sget v6, Lcom/android/systemui/R$id;->keyguard_hun_animator_tag:I

    sget v7, Lcom/android/systemui/R$id;->keyguard_hun_animator_end_tag:I

    sget v8, Lcom/android/systemui/R$id;->keyguard_hun_animator_start_tag:I

    const-string v3, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    .line 162
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 7

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 200
    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    const/4 p2, 0x1

    .line 271
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 281
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 283
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 306
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 311
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    const/4 v0, -0x1

    .line 321
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    const-string v0, "lockscreen_affordance"

    .line 327
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 361
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 362
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    .line 366
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 379
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 387
    sget-object v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;

    sget-object v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;

    sget v4, Lcom/android/systemui/R$id;->panel_alpha_animator_tag:I

    sget v5, Lcom/android/systemui/R$id;->panel_alpha_animator_start_tag:I

    sget v6, Lcom/android/systemui/R$id;->panel_alpha_animator_end_tag:I

    const-string v1, "panelAlpha"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 394
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x96

    .line 395
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 396
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 397
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0xc8

    .line 398
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 399
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationFinishListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 400
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 401
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 402
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 405
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 406
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 407
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 408
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x0

    .line 425
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardHeadsUpShowingAmount:F

    .line 1626
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1634
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 1642
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1649
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1683
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1702
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 3205
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 450
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 451
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 452
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 453
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    .line 454
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 455
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 457
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 p2, 0xff

    const/4 p3, 0x0

    .line 458
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlpha(IZ)Z

    .line 459
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplayId:I

    .line 461
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 462
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$_yBzfez4yNorLL4Wz7TE5dCgf3o;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$_yBzfez4yNorLL4Wz7TE5dCgf3o;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p5, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setPulseExpandAbortListener(Ljava/lang/Runnable;)V

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeResId:I

    .line 468
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 469
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 470
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    .line 471
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {p6, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 474
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 475
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$NSwb4zrunwx8nVzrQ3gQl4T8b5M;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$NSwb4zrunwx8nVzrQ3gQl4T8b5M;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xa0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 480
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDelayShowingKeyguardStatusBar:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDelayShowingKeyguardStatusBar:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method static synthetic access$1900()Landroid/graphics/Rect;
    .locals 1

    .line 115
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;J)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarForHeadsUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQSPulseExpansion()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p1
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 2

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1695
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1696
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1697
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1698
    sget-object p0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1699
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1659
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1661
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1661
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1666
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1667
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getShortenedFadingAwayDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x168

    .line 1671
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1673
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1674
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1680
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateGestureExclusionRect()Landroid/graphics/Rect;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 763
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyRect:Landroid/graphics/Rect;

    :goto_1
    return-object p0
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 4

    .line 2165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2166
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2167
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v1, :cond_0

    .line 2174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2176
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2178
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    .line 2179
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2183
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 2184
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2187
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2188
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 2186
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2189
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v0

    add-float/2addr v2, v0

    .line 2190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 2191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2192
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 2193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    float-to-int p0, v2

    return p0
.end method

.method private calculatePanelHeightShade()I
    .locals 3

    .line 2150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 2151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 2152
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2154
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 2156
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 2158
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private calculateQsTopPadding()F
    .locals 4

    .line 1859
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 1867
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardNotificationStaticPadding()I

    move-result v0

    .line 1868
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 1869
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1870
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1872
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p0

    .line 1872
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    return p0

    .line 1874
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 1875
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1876
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardNotificationStaticPadding()I

    move-result p0

    .line 1875
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 1877
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 1880
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardNotificationStaticPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1882
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result p0

    .line 1880
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    .line 1884
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private cancelQsAnimation()V
    .locals 0

    .line 1949
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 1950
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private determineAccessibilityPaneTitle()Ljava/lang/String;
    .locals 2

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings_edit:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1847
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 1850
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1851
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1852
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_lock_screen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1854
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_notification_shade:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private flingExpandsQs(F)Z
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFalseTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 1181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 2

    .line 1158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v0

    .line 1159
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->logQsSwipeDown(F)V

    :cond_0
    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1163
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    return-void
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    .line 1941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 1944
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1945
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private getFadeoutAlpha()F
    .locals 4

    .line 2213
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 2216
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 2217
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2218
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1494
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 4

    .line 2272
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 2278
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    goto :goto_0

    .line 2283
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    div-float/2addr v0, p0

    .line 2285
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2286
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getKeyguardHeadsUpShowingAmount()F
    .locals 0

    .line 2952
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardHeadsUpShowingAmount:F

    return p0
.end method

.method private getKeyguardNotificationStaticPadding()I
    .locals 2

    .line 1893
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1897
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return p0

    .line 1899
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpInset:I

    .line 1900
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1903
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1904
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1905
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result p0

    .line 1904
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxPanelHeightBypass()I
    .locals 3

    .line 2082
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 2083
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2084
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 2085
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShelfHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkIconSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method private getMaxPanelHeightNonBypass()I
    .locals 3

    .line 2064
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 2065
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2066
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2067
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2068
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2071
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2075
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result p0

    goto :goto_1

    .line 2073
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result p0

    .line 2077
    :goto_1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getQsExpansionFraction()F
    .locals 3

    .line 1198
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getUnlockedStackScrollerPadding()I
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v0, p0

    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onQsDown()V

    const/4 v0, 0x1

    .line 1352
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1354
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_0

    .line 1286
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1287
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1289
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1293
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1294
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1296
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v2, :cond_2

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1298
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 1303
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    :cond_4
    if-nez v0, :cond_5

    .line 1305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_5

    .line 1307
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1309
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    .line 1311
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "panel_open_qs"

    invoke-static {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1312
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1313
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1318
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    :cond_6
    return v3
.end method

.method private initBottomArea()V
    .locals 3

    .line 686
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUserSetupComplete:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1136
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 1137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    .line 1139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownX:F

    .line 1140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownY:F

    .line 1141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    .line 1142
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    .line 1143
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAllowExpandForSmallExpansion:Z

    .line 1144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_1

    .line 1146
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1149
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1153
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    :goto_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 1934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1937
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isFalseTouch()Z
    .locals 1

    .line 1188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->needsAntiFalsing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0

    .line 1194
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3

    .line 3185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 3186
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 3187
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method private isInQsArea(FF)Z
    .locals 2

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 1325
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1326
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result p1

    cmpg-float p1, p2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1327
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOnKeyguard()Z
    .locals 1

    .line 3089
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    if-ne p0, v1, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-nez v0, :cond_2

    const/16 v4, 0x20

    .line 1338
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x40

    .line 1339
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v0, :cond_4

    .line 1342
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 1343
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    if-nez p0, :cond_6

    if-nez v4, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_3
    return v2
.end method

.method public static synthetic lambda$3eG2mRDkKhbGo7rATE21NiEDXnI(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardHeadsUpShowingAmount()F

    move-result p0

    return p0
.end method

.method public static synthetic lambda$8G22_EmtDJSBkKVCqvCP10-xXeA(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardHeadsUpShowingAmount(F)V

    return-void
.end method

.method private logQsSwipeDown(F)V
    .locals 4

    .line 1167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v0

    .line 1168
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc2

    .line 1171
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1172
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 1171
    invoke-virtual {v2, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    return-void
.end method

.method private maybeAnimateBottomAreaAlpha()V
    .locals 2

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1619
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1620
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1622
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlpha:F

    :goto_0
    return-void
.end method

.method private notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    const/4 v0, 0x0

    .line 2391
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 2393
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 2394
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 1535
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1049
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1052
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    move v0, v1

    .line 1054
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1055
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1057
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/4 v5, 0x3

    if-eq v3, v4, :cond_5

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_5

    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    goto/16 :goto_1

    .line 1076
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1077
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v2, v0, :cond_a

    .line 1079
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    move v4, v1

    .line 1080
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1081
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1082
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto/16 :goto_1

    .line 1087
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v3, v0, v3

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1089
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v5, :cond_4

    .line 1094
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1096
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    return v4

    .line 1099
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_a

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1100
    invoke-direct {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1101
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1104
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1105
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1106
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1107
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1108
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    return v4

    .line 1115
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1116
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v2, :cond_7

    .line 1118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_6

    goto :goto_0

    :cond_6
    move v4, v1

    .line 1117
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1119
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1121
    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto :goto_1

    .line 1059
    :cond_8
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1060
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1061
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1062
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1063
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1064
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1065
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1067
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1069
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1070
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1071
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1072
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_a
    :goto_1
    return v1
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1432
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1435
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    move v0, v1

    .line 1437
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1438
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1439
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 1441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    const/4 v0, 0x3

    if-eq v4, v5, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_1

    goto/16 :goto_1

    .line 1453
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1454
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v2, v0, :cond_a

    .line 1456
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    .line 1457
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1458
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1459
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1460
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1461
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1462
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_1

    .line 1467
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1468
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    .line 1469
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1471
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1476
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    const/4 v3, -0x1

    .line 1477
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1478
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    .line 1480
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_8

    .line 1482
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_7

    move v1, v5

    .line 1481
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1484
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_a

    .line 1485
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1486
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 1443
    :cond_9
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1444
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1445
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1447
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1449
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private positionClockAndNotifications()V
    .locals 19

    move-object/from16 v0, p0

    .line 802
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 803
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 805
    :goto_1
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v5, v3, :cond_2

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getUnlockedStackScrollerPadding()I

    move-result v4

    goto/16 :goto_3

    .line 808
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    .line 809
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientIndicationBottomPadding:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 810
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/KeyguardStatusView;->getClockPreferredY(I)I

    move-result v12

    .line 811
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 812
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 813
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v6

    if-eqz v6, :cond_3

    move v14, v3

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 814
    :goto_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6, v14}, Lcom/android/keyguard/KeyguardStatusView;->setHasVisibleNotifications(Z)V

    .line 815
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    sub-int v8, v10, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 818
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result v9

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v11

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 821
    invoke-virtual {v5}, Landroid/widget/GridLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShelfHeight:I

    int-to-float v13, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v13, v15

    sub-float/2addr v5, v13

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkIconSize:I

    int-to-float v13, v13

    div-float/2addr v13, v15

    sub-float/2addr v5, v13

    float-to-int v13, v5

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasCustomClock()Z

    move-result v15

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getUnlockedStackScrollerPadding()I

    move-result v18

    move/from16 v16, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v16, v2

    .line 815
    invoke-virtual/range {v5 .. v18}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIIFIIIZZFFZI)V

    .line 830
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 831
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v2, v5, v6, v7, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 833
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v2, v5, v6, v7, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock()V

    .line 837
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    .line 839
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 840
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAntiBurnInOffsetX(I)V

    .line 842
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    .line 843
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    const/4 v1, 0x0

    .line 844
    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    .line 845
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method private reInflateViews()V
    .locals 5

    .line 641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 646
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 647
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->keyguard_status_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 651
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 655
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 656
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setBigClockContainer(Landroid/view/ViewGroup;)V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 661
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 662
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 663
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$layout;->keyguard_bottom_area:I

    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 667
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initFrom(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 668
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initBottomArea()V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 672
    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getInterpolatedDozeAmount()F

    move-result v1

    .line 671
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onDozeAmountChanged(FF)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 678
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    invoke-direct {p0, v0, v3, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 679
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 680
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnReinflationListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 681
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private resetHorizontalPanelPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 3042
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 0

    .line 3014
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    .line 3015
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method private setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    .line 3191
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method private setIsFullWidth(Z)V
    .locals 0

    .line 767
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    .line 768
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 2

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    .line 1712
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 1713
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1714
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1715
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getShortenedFadingAwayDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1716
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1717
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1718
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 1724
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1721
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1722
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private setKeyguardHeadsUpShowingAmount(F)V
    .locals 0

    .line 2947
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardHeadsUpShowingAmount:F

    .line 2948
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 7

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1731
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    .line 1732
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-ne v5, v4, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 1734
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1735
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1736
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1737
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    .line 1738
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1739
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 1740
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_6

    .line 1742
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1743
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1744
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getShortenedFadingAwayDuration()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1745
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1747
    :cond_2
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne p3, v5, :cond_3

    if-ne p1, v4, :cond_3

    .line 1749
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1750
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1751
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v3}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 1752
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1753
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1754
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x140

    .line 1755
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1756
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1757
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_5

    if-eqz p2, :cond_4

    .line 1760
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1761
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1762
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1763
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const p3, 0x3d4ccccd    # 0.05f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 1764
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d

    .line 1765
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1766
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1767
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1768
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1770
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1771
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v6}, Landroid/widget/GridLayout;->setAlpha(F)V

    goto :goto_0

    .line 1774
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1775
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v6}, Landroid/widget/GridLayout;->setAlpha(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1

    .line 3145
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 3146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setLaunchingAffordance(Z)V

    .line 3149
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 3150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setListening(Z)V
    .locals 1

    .line 2399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 2400
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 2401
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 0

    .line 1529
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1530
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 1531
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 1

    .line 1556
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1558
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1559
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setQsExpanded(Z)V

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 1563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setQsExpanded(Z)V

    .line 1565
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setQSExpanded(Z)V

    :cond_1
    return-void
.end method

.method private setQsExpansion(F)V
    .locals 10

    .line 1797
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1798
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 1799
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_1

    .line 1801
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    goto :goto_1

    .line 1802
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_2

    .line 1803
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 1805
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 1807
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 1809
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_4

    .line 1811
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 1812
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateBigClockAlpha()V

    .line 1814
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz p1, :cond_5

    .line 1816
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1819
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 1823
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 1824
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1825
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1828
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_9

    .line 1829
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eqz v0, :cond_8

    .line 1830
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 1829
    :goto_3
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onQsExpansionChanged(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 492
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 5

    .line 2029
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2030
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2033
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 2034
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 2035
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    .line 2036
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 2037
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_5

    .line 2038
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 776
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 777
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 778
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 779
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 788
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 794
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1929
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 1930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    return-void
.end method

.method private updateBigClockAlpha()V
    .locals 4

    .line 2334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2335
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2334
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2337
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updateClock()V
    .locals 1

    .line 910
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, p0}, Landroid/widget/GridLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .locals 2

    .line 2779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 2780
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x168

    .line 2781
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    :cond_0
    return-void
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .line 2797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    return-void
.end method

.method private updateGestureExclusionRect()V
    .locals 2

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 751
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 749
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private updateHeader()V
    .locals 2

    .line 2236
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 2239
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 5

    .line 2291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 2294
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 2295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v0, v2

    .line 2297
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardHeadsUpShowingAmount:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 2298
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2299
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDelayShowingKeyguardStatusBar:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2301
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez p0, :cond_4

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    return-void
.end method

.method private updateHeadsUpVisibility()V
    .locals 2

    .line 2962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpPinnedMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setHeadsUpVisible(Z)V

    return-void
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 4

    .line 2312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2314
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2312
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2315
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2316
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlpha:F

    mul-float/2addr v0, v2

    .line 2317
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    .line 2318
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2321
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2323
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateKeyguardStatusBarForHeadsUp()V
    .locals 4

    .line 2932
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2933
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2934
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingKeyguardHeadsUp:Z

    if-eq v2, v0, :cond_3

    .line 2935
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingKeyguardHeadsUp:Z

    .line 2936
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2937
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2938
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2937
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_1

    .line 2941
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p0, v0, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->applyImmediately(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 2

    .line 2518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 3

    .line 2200
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2201
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2204
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2205
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2206
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    mul-float/2addr v0, v1

    .line 2208
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updatePanelExpanded()V
    .locals 2

    .line 2141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2142
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eq v1, v0, :cond_2

    .line 2143
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 2144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 2145
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    :cond_2
    return-void
.end method

.method private updateQSPulseExpansion()V
    .locals 2

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    .line 1921
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1922
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1923
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1921
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setShowCollapsedOnKeyguard(Z)V

    :cond_1
    return-void
.end method

.method private updateQsState()V
    .locals 4

    .line 1780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpanded(Z)V

    .line 1781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 1784
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 1785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 1786
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    .line 1785
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_3

    .line 1790
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    .line 1792
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_4

    return-void

    .line 1793
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method

.method private updateShowEmptyShadeView()V
    .locals 2

    .line 3413
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 3415
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3416
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showEmptyShadeView(Z)V

    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 3

    .line 3077
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3078
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOpeningHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 3079
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3082
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_3

    .line 3083
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    .line 3084
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 3354
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3362
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCloseQs(Z)V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 973
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    return-void

    .line 976
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 977
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 978
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 980
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 917
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 918
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3339
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandOffset:F

    .line 3340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0xe

    const-wide/16 v3, 0x64

    .line 3342
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result p1

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3344
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    if-eq p1, v1, :cond_2

    .line 3345
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    if-nez p1, :cond_2

    .line 3347
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_2
    return-void
.end method

.method public blockExpansionForCurrentTouch()V
    .locals 1

    .line 3388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockingExpansionForCurrentTouch:Z

    return-void
.end method

.method public canCameraGestureBeLaunched(Z)Z
    .locals 2

    .line 3167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3172
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3173
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 3175
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 3176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 3097
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    return-void
.end method

.method public closeQs()V
    .locals 1

    .line 961
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 962
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method public closeQsDetail()V
    .locals 0

    .line 2753
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    return-void
.end method

.method public collapse(ZF)V
    .locals 2

    .line 949
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 953
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 954
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 955
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 957
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    return-void
.end method

.method public computeMaxKeyguardNotifications(I)I
    .locals 12

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result v0

    .line 862
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 864
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v3

    .line 865
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    move v3, v5

    goto :goto_0

    .line 866
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 867
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientIndicationBottomPadding:I

    .line 868
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 869
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getLogoutButtonHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    const/4 v0, 0x0

    move v6, v0

    move v7, v4

    move v4, v6

    .line 871
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 872
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 873
    instance-of v9, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v9, :cond_1

    goto :goto_3

    .line 876
    :cond_1
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 877
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v10, :cond_2

    .line 878
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move v10, v0

    :goto_2
    if-eqz v10, :cond_3

    goto :goto_3

    .line 882
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_3

    .line 885
    :cond_4
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    .line 888
    :cond_5
    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v8, v7, v5

    if-ltz v8, :cond_6

    if-ge v6, p1, :cond_6

    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    neg-float p1, v3

    cmpl-float p1, v7, p1

    if-lez p1, :cond_9

    add-int/2addr v4, v2

    .line 894
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v4, p1, :cond_8

    .line 895
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_7

    return v6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v6, v2

    :cond_9
    return v6
.end method

.method public createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 0

    .line 3420
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p0

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2854
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2855
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2856
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 3311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    .line 3312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    .line 3313
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3314
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 3393
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    gestureExclusionRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 3396
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3398
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    if-eqz p0, :cond_1

    .line 3399
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardStatusView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public expand(Z)V
    .locals 0

    .line 2406
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    const/4 p1, 0x1

    .line 2407
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .line 984
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 985
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 991
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    :goto_0
    return-void
.end method

.method public expandWithoutQs()V
    .locals 2

    .line 996
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 997
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    goto :goto_0

    .line 999
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    :goto_0
    return-void
.end method

.method public fling(FZ)V
    .locals 4

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const-string v2, "open"

    goto :goto_0

    :cond_0
    const-string v2, "closed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 0

    .line 1408
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result p1

    .line 1411
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public flingSettings(FI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1958
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected flingSettings(FILjava/lang/Runnable;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    move v2, v0

    goto :goto_1

    .line 1977
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 1974
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v2, v2

    .line 1983
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_2

    .line 1985
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    cmpl-float v4, p1, v0

    if-lez v4, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    cmpg-float v4, p1, v0

    if-gez v4, :cond_7

    if-eqz p2, :cond_7

    :cond_6
    move p1, v0

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 1997
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    aput v5, v4, v3

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p4, :cond_8

    .line 1999
    sget-object p1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x170

    .line 2000
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_4

    .line 2002
    :cond_8
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {p4, v1, v3, v2, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :goto_4
    if-eqz v0, :cond_9

    const-wide/16 v2, 0x15e

    .line 2005
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2007
    :cond_9
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$GBIvrcRMfk5MdTVeindE6SW10Nw;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$GBIvrcRMfk5MdTVeindE6SW10Nw;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2010
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2020
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2021
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2022
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    return-void
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    if-nez p2, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 1017
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    return-void
.end method

.method public flingTopOverscroll(FZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1513
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    const/4 v1, 0x0

    .line 1514
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1515
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1516
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1517
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1516
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .line 2725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2726
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 3440
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public getAffordanceFalsingFactor()F
    .locals 0

    .line 2700
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method protected getClearAllHeight()I
    .locals 0

    .line 2736
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFooterViewHeight()I

    move-result p0

    return p0
.end method

.method public getCurrentPanelAlpha()F
    .locals 0

    .line 2861
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    int-to-float p0, p0

    return p0
.end method

.method protected getHeaderTranslation()F
    .locals 4

    .line 2243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v0

    .line 2247
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    neg-float v1, v1

    .line 2248
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2249
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 2251
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->getLeavingLockscreen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 2256
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result v0

    .line 2258
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2261
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2260
    invoke-static {v1, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandOffset:F

    add-float/2addr v0, p0

    .line 2263
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .line 2672
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2673
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    goto :goto_0

    .line 2674
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 2

    .line 2686
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2687
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 2688
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getMaxPanelHeight()I
    .locals 2

    .line 2056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeightBypass()I

    move-result p0

    return p0

    .line 2059
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeightNonBypass()I

    move-result p0

    return p0
.end method

.method public getMaxTranslationDistance()F
    .locals 4

    .line 2611
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method protected getOpeningHeight()F
    .locals 0

    .line 1218
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOpeningHeight()F

    move-result p0

    return p0
.end method

.method protected getOverExpansionAmount()F
    .locals 1

    .line 2224
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p0

    return p0
.end method

.method protected getOverExpansionPixels()F
    .locals 1

    .line 2229
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result p0

    return p0
.end method

.method protected getPeekHeight()F
    .locals 1

    .line 2710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2711
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 2713
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .line 2679
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2680
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    goto :goto_0

    .line 2681
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 2

    .line 2693
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2694
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 2695
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    .line 3108
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasPulsingNotifications()Z
    .locals 0

    .line 3436
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result p0

    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 2

    .line 3195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

    if-eqz v0, :cond_0

    .line 3196
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    return p0

    .line 3198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3199
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3202
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 3460
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3461
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 3462
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setNotificationPanel(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 3463
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 3464
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3465
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 3466
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 3467
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 3468
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    return-void
.end method

.method protected isClearAllVisible()Z
    .locals 0

    .line 2731
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewContentVisible()Z

    move-result p0

    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 2787
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return p0
.end method

.method public isExpanding()Z
    .locals 0

    .line 2095
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    return p0
.end method

.method public isFullWidth()Z
    .locals 0

    .line 3073
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    return p0
.end method

.method protected isInContentBounds(FF)Z
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 1130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    sub-float v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p2

    if-nez p2, :cond_0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1131
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInSettings()Z
    .locals 0

    .line 2091
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return p0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 0

    .line 2762
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return p0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 0

    .line 2766
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return p0
.end method

.method public isLaunchingAffordanceWithPreview()Z
    .locals 1

    .line 3158
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHasPreview:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .line 3102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQsDetailShowing()Z
    .locals 0

    .line 2749
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method public isQsExpanded()Z
    .locals 0

    .line 2745
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return p0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    .line 2046
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2047
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2048
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .line 2741
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockingExpansionForCurrentTouch:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$flingSettings$3$NotificationPanelView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2008
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationPanelView()V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    .line 464
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$NotificationPanelView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 476
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlpha:F

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    return-void
.end method

.method public synthetic lambda$stopWaitingForOpenPanelGesture$2$NotificationPanelView(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 1393
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->fling(FZ)V

    return-void
.end method

.method public launchCamera(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "power_double_tap"

    .line 3113
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "wiggle_gesture"

    .line 3115
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "lift_to_launch_ml"

    .line 3117
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p2, "lockscreen_affordance"

    .line 3121
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 3127
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 3128
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    goto :goto_1

    :cond_3
    move p1, v1

    .line 3132
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHasPreview:Z

    .line 3133
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->launchAffordance(ZZ)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 562
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 563
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 564
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 566
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->qs_peek_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 568
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->header_notifications_collide_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 569
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->unlock_move_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 571
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->qs_falsing_threshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 573
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_min_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    .line 575
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->max_notification_fadeout_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxFadeoutHeight:I

    .line 577
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_indication_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    .line 579
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    .line 581
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShelfHeight:I

    .line 582
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkIconSize:I

    .line 584
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 586
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpInset:I

    return-void
.end method

.method public needsAntiFalsing()Z
    .locals 1

    .line 2705
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 3137
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 2590
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v0, 0x1

    .line 2591
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 2592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2593
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2594
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2596
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->readyForKeyguardDone()V

    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 8

    .line 2544
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2545
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v0, 0x0

    .line 2546
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 2548
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 2549
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-eqz p1, :cond_3

    .line 2551
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbe

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2553
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceOn()V

    .line 2554
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2555
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 2563
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto :goto_1

    .line 2566
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    const-string v0, "lockscreen_affordance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2568
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbd

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2570
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onCameraOn()V

    .line 2571
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2572
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 2581
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 2584
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startLaunchTransitionTimeout()V

    .line 2585
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 2512
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    .line 2513
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 539
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onAttachedToWindow()V

    .line 540
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    const-string v2, "QS"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 541
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 542
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 543
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onThemeChanged()V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 3

    .line 3379
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 2531
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2532
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2533
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    goto :goto_0

    .line 2535
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz p1, :cond_1

    .line 2536
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2537
    invoke-virtual {p0, v1, v4, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .line 3008
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 3009
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetHorizontalPanelPosition()V

    const/4 v0, 0x0

    .line 3010
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 2502
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 2504
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 2505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetHorizontalPanelPosition()V

    .line 2507
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 552
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 553
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    const-string v2, "QS"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 554
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 555
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 556
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 3279
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    .line 3280
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLinearDarkAmount:F

    .line 3281
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    .line 3282
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkAmount(F)V

    .line 3283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2886
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDynamicPrivacyChanged()V
    .locals 2

    .line 3479
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLinearDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3482
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .locals 0

    .line 2818
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    return-void
.end method

.method protected onExpandingFinished()V
    .locals 2

    .line 2357
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 2358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 2359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onExpandingFinished()V

    const/4 v0, 0x0

    .line 2360
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2362
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2372
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2379
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2381
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2382
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 2383
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 2384
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    const/4 v1, 0x0

    .line 2385
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2386
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    const/4 v0, 0x0

    .line 2387
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 2

    .line 2342
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 2343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    const/4 v0, 0x1

    .line 2344
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2345
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 2346
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_0

    .line 2347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2351
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_1

    return-void

    .line 2352
    :cond_1
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 497
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 498
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 499
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 501
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 502
    sget v1, Lcom/android/systemui/R$id;->big_clock_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setBigClockContainer(Landroid/view/ViewGroup;)V

    .line 505
    sget v0, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 506
    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$hB_2bxao9PtuBwZm92el8Nt3UKY;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$hB_2bxao9PtuBwZm92el8Nt3UKY;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 511
    sget v0, Lcom/android/systemui/R$id;->keyguard_bottom_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 512
    sget v0, Lcom/android/systemui/R$id;->qs_navbar_scrim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 513
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initBottomArea()V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 518
    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 2967
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2968
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    :cond_0
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2

    .line 2916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setInHeadsUpPinnedMode(Z)V

    if-eqz p1, :cond_0

    .line 2918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2919
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2921
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAnimatingAway(Z)V

    .line 2922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    .line 2925
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGestureExclusionRect()V

    .line 2926
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpPinnedMode:Z

    .line 2927
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeadsUpVisibility()V

    .line 2928
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarForHeadsUp()V

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 2988
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 2979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2980
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2981
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    const/4 v1, 0x0

    .line 2980
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 2982
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpIsVisible()V

    :cond_0
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2468
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 2469
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 2471
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p2

    .line 2472
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 2473
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    if-eq p1, p2, :cond_3

    .line 2476
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 p1, 0x0

    .line 2477
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2479
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 4

    .line 2100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 2105
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 2108
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2111
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v0, :cond_5

    .line 2114
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 2117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_1

    .line 2121
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2122
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 2123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p1, v0

    sub-float/2addr v1, v0

    div-float v0, v2, v1

    .line 2127
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 2130
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 2131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 2132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 2133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelExpanded()V

    .line 2134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGestureExclusionRect()V

    return-void
.end method

.method public onIconClicked(Z)V
    .locals 3

    .line 2635
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2638
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 2639
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimation(ZLjava/lang/Runnable;)V

    .line 2646
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 2648
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraHintStarted()V

    goto :goto_1

    .line 2650
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLeftVoiceAssist()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2651
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onVoiceAssistHintStarted()V

    goto :goto_1

    .line 2653
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPhoneHintStarted()V

    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1022
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1032
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1033
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "panel_open"

    invoke-static {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1034
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p1, "panel_open_peek"

    invoke-static {p0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return v1

    .line 1037
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownY:F

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 1038
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1042
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1045
    :cond_4
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 699
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 700
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setIsFullWidth(Z)V

    .line 703
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setPivotX(F)V

    .line 704
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const p2, 0x3eb0c000

    .line 705
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->getClockTextSize()F

    move-result p4

    mul-float/2addr p4, p2

    .line 704
    invoke-virtual {p1, p4}, Landroid/widget/GridLayout;->setPivotY(F)V

    .line 708
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 709
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p2, :cond_2

    .line 710
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz p4, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p2

    :goto_1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 711
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 712
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr p4, p5

    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    .line 715
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 716
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz p2, :cond_3

    .line 717
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 718
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 722
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eq p2, p1, :cond_4

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startQsSizeChangeAnimation(II)V

    goto :goto_2

    .line 725
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez p1, :cond_4

    .line 726
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 728
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 729
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 736
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_5

    .line 737
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 739
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGestureExclusionRect()V

    .line 741
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 742
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 743
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    :cond_6
    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 4

    .line 2823
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 2837
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_1

    .line 2838
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToKeyguard()V

    :cond_1
    return v2

    .line 2825
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    if-nez v0, :cond_4

    .line 2826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2827
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    goto :goto_0

    .line 2829
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xbc

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2832
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startUnlockHintAnimation()V

    :cond_4
    :goto_0
    return v2

    .line 2845
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateViews()V

    return-void
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 3

    .line 1499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    cmpl-float v0, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v2

    .line 1504
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1505
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1506
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1508
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method protected onQsExpansionStarted(I)V
    .locals 1

    .line 1539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1540
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1543
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 1544
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1545
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1546
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    .line 1551
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestFaceAuth()V

    :cond_0
    return-void
.end method

.method public onQsHeightChanged()V
    .locals 2

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 2489
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 2490
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 2496
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 2523
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 2525
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 2813
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 6

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v0

    .line 1572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v1

    .line 1573
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 1575
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 1576
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 1578
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    .line 1579
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    const/4 v1, 0x2

    if-ne v2, v4, :cond_3

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_3

    .line 1583
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 1584
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-ne p1, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 1585
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .line 1586
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingIn(J)V

    goto :goto_3

    :cond_3
    if-ne v2, v1, :cond_4

    if-ne p1, v4, :cond_4

    const-wide/16 v0, 0x168

    .line 1589
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    .line 1590
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 1593
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez p1, :cond_6

    .line 1594
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_3

    .line 1597
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1598
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v5, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    if-eqz v5, :cond_6

    .line 1599
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v2, p1, :cond_6

    .line 1600
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_6

    .line 1601
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    .line 1605
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarForHeadsUp()V

    if-eqz v5, :cond_7

    .line 1607
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    .line 1611
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQSPulseExpansion()V

    .line 1612
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->maybeAnimateBottomAreaAlpha()V

    .line 1613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetHorizontalPanelPosition()V

    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method public onSwipingAborted()V
    .locals 1

    .line 2629
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingAborted()V

    .line 2630
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->unbindCameraPrewarmService(Z)V

    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 3

    .line 2616
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingStarted(Z)V

    .line 2617
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2620
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->bindCameraPrewarmService()V

    .line 2622
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2623
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 2624
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 626
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    .line 627
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeResId:I

    if-ne v1, v0, :cond_0

    return-void

    .line 630
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeResId:I

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateViews()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1223
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowingScrimmed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1234
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 1235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 1236
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockingExpansionForCurrentTouch:Z

    .line 1241
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1242
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 1244
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1245
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownX:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownY:F

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 1246
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 1250
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 1251
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1252
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1253
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v3, "panel_open_peek"

    invoke-static {v0, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1256
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_8

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 1262
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-eqz v3, :cond_9

    return v2

    .line 1265
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1267
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_a

    return v2

    .line 1270
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1271
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v3, "panel_open"

    invoke-static {v0, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateVerticalPanelPosition(F)V

    move v0, v2

    .line 1275
    :cond_b
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 1276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    if-nez p0, :cond_c

    if-eqz p1, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    :goto_1
    return v1
.end method

.method protected onTrackingStarted()V
    .locals 2

    .line 2430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStarted(Z)V

    .line 2431
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 2432
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2433
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 2436
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2438
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->animateHideLeftRightIcon()V

    .line 2440
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3

    .line 2445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStopped()V

    .line 2446
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2448
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2451
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    if-eqz p1, :cond_2

    .line 2452
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2454
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-nez p1, :cond_2

    .line 2455
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    :cond_2
    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 1

    .line 2660
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintFinished()V

    .line 2661
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 1

    .line 2666
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    .line 2667
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    .line 3432
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUpdateRowStates()V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 0

    .line 3409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    return-void
.end method

.method public removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 3358
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3366
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 2

    .line 1911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateTopPadding(FZ)V

    .line 1912
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1914
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    :cond_0
    return-void
.end method

.method public resetViews(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 929
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 930
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 931
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-nez v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    const-string v0, "lockscreen_affordance"

    .line 933
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 938
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs(Z)V

    goto :goto_0

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 942
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 944
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 3448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 3444
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 2

    .line 3259
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3260
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 3261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3262
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    if-eqz p1, :cond_1

    .line 3265
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3268
    :cond_1
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 3270
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 3274
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setDozeAmount(FZ)V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    .line 2774
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 2775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    .line 2956
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    .line 2957
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    .line 2958
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeadsUpVisibility()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 3371
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2

    .line 2993
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 2994
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2995
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method protected setHorizontalPanelTranslation(F)V
    .locals 2

    .line 3046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 3047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3048
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3050
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 694
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    .line 2809
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public setLaunchAffordanceListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 2770
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnReinflationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3486
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnReinflationListener:Ljava/lang/Runnable;

    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 3

    .line 2412
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2415
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2418
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    goto :goto_0

    .line 2421
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2424
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPanelAlpha(IZ)Z
    .locals 3

    .line 2865
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlpha:I

    if-eq v0, p1, :cond_1

    .line 2866
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlpha:I

    .line 2867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v1, p1

    const/16 v2, 0xff

    if-ne p1, v2, :cond_0

    .line 2868
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2867
    :goto_0
    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setPanelAlphaEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 2881
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelAlphaInternal(F)V
    .locals 2

    float-to-int p1, p1

    .line 2875
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 2876
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2877
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 0

    .line 3093
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 4

    .line 3287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    .line 3288
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    .line 3289
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3290
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 3292
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 3296
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v1, :cond_2

    .line 3297
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 3299
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulsing(ZZ)V

    .line 3300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setPulsing(Z)V

    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 0

    .line 922
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 923
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 924
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 1

    .line 2801
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2802
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v0, :cond_1

    .line 2804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    :cond_1
    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    .line 3319
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 2

    .line 3244
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setTouchAndAnimationDisabled(Z)V

    if-eqz p1, :cond_0

    .line 3245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    if-nez v0, :cond_0

    .line 3246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 3248
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3000
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x1

    .line 3001
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    :cond_0
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 3334
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUserSetupComplete:Z

    .line 3335
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 7

    .line 1204
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldExpandWhenNotFlinging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1207
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAllowExpandForSmallExpansion:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long p0, v3, v5

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 0

    .line 1428
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldGestureWaitForTouchSlop()Z
    .locals 2

    .line 1419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1420
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    return v1

    .line 1423
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 1

    .line 2719
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2720
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTracking()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showEmptyShadeView(Z)V
    .locals 0

    .line 2791
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    .line 2792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    return-void
.end method

.method public showTransientIndication(I)V
    .locals 0

    .line 3472
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 2601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2602
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUnlockHintStarted()V

    .line 2603
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUnlockHintFinished()V

    return-void

    .line 2606
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    return-void
.end method

.method public startWaitingForOpenPanelGesture()V
    .locals 1

    .line 1367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1370
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    .line 1371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onTrackingStarted()V

    .line 1372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelExpanded()V

    return-void
.end method

.method public stopWaitingForOpenPanelGesture(F)V
    .locals 3

    .line 1390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1391
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    .line 1392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->maybeVibrateOnOpening()V

    .line 1393
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$xA7cX216Lge0MlKS0GBWcVNjPAk;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$xA7cX216Lge0MlKS0GBWcVNjPAk;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    .line 1395
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1396
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 1398
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1400
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    .line 1402
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onTrackingStopped(Z)V

    :cond_1
    return-void
.end method

.method protected updateExpandedHeight(F)V
    .locals 2

    .line 3055
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    .line 3058
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3060
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeightNonBypass()I

    move-result p1

    int-to-float p1, p1

    .line 3062
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 3063
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 3064
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateBigClockAlpha()V

    .line 3065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarIcons()V

    return-void
.end method

.method public updateNotificationViews()V
    .locals 1

    .line 3424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSectionBoundaries()V

    .line 3425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex()V

    .line 3426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 3427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    .line 3428
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateIconAreaViews()V

    return-void
.end method

.method protected updateQsExpansion()V
    .locals 3

    .line 1838
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 1839
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1840
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    .line 1841
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpansionFraction(F)V

    return-void
.end method

.method public updateResources()V
    .locals 5

    .line 599
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 601
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$integer;->notification_panel_layout_gravity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 602
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 603
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 604
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v1, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v4, v2, :cond_1

    .line 605
    :cond_0
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 606
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    :cond_1
    sget v1, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v0, :cond_2

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v3, v2, :cond_3

    .line 613
    :cond_2
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 614
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 615
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method protected updateVerticalPanelPosition(F)V
    .locals 4

    .line 3025
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3026
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetHorizontalPanelPosition()V

    return-void

    .line 3029
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 3030
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 3031
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 3032
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 3033
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 3035
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 3037
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3038
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHorizontalPanelTranslation(F)V

    return-void
.end method
