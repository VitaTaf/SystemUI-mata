.class public Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationPresenter;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;


# instance fields
.field private final mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private mDispatchUiModeChangeOnUserSwitched:Z

.field private final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMaxAllowedKeyguardNotifications:I

.field private mMaxKeyguardNotifications:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

.field private mReinflateNotificationsOnUserSwitched:Z

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 86
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 90
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 91
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 92
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 93
    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 94
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 95
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 96
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 97
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 98
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 99
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 100
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 101
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 102
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 103
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 104
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 105
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 106
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 107
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 108
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 481
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 488
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    .line 504
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 145
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 146
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 147
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 148
    new-instance p2, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    invoke-direct {p2, p5}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 149
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 150
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    sget p3, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->setListener(Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;)V

    .line 152
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 153
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 154
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 155
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 156
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->keyguard_max_notification_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxAllowedKeyguardNotifications:I

    const-string p1, "statusbar"

    .line 160
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 159
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string p1, "vrmanager"

    .line 167
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {p1, p2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to register VR mode state listener: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBarNotificationPresenter"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    :goto_0
    const-class p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 177
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 178
    const-class p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    .line 179
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 180
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p3

    .line 178
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->setUpWithCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V

    .line 181
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p2

    const-class p3, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 182
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    .line 181
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 184
    check-cast p5, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 185
    const-class p2, Lcom/android/systemui/InitController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/InitController;

    new-instance p3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;

    invoke-direct {p3, p0, p5, p1, p11}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V

    invoke-virtual {p2, p3}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    .line 234
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p10, p0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Landroid/app/KeyguardManager;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onLockedNotificationImportanceChange(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->maybeEndAmbientPulse()V

    return-void
.end method

.method static synthetic lambda$onExpandClicked$1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private maybeEndAmbientPulse()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 298
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    :cond_0
    return-void
.end method

.method private onLockedNotificationImportanceChange(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 477
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private updateNotificationOnUiModeChanged()V
    .locals 2

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 267
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 268
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 269
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onUiModeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 278
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 279
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 281
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->onDensityOrFontScaleChanged()V

    .line 282
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->areGutsExposed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public canHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 346
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 348
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 349
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    return v2

    .line 356
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 363
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_6

    .line 364
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 369
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 370
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    return v1
.end method

.method public getMaxNotificationsWhileLocked(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxAllowedKeyguardNotifications:I

    .line 443
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->computeMaxKeyguardNotifications(I)I

    move-result v0

    .line 442
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    .line 445
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    return p0

    .line 447
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    return p0
.end method

.method public hasActiveNotifications()Z
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCollapsing()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 292
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationRunning()Z

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

.method public isDeviceInVrMode()Z
    .locals 0

    .line 472
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrMode:Z

    return p0
.end method

.method public isPresenterFullyCollapsed()Z
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$StatusBarNotificationPresenter(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V
    .locals 7

    .line 186
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 217
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getLifetimeExtenders()Ljava/util/ArrayList;

    move-result-object p2

    .line 216
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtenders(Ljava/util/List;)V

    .line 218
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;)V

    .line 220
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$zehGIehk9xIdDvIsyl4sWX9YxIM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$zehGIehk9xIdDvIsyl4sWX9YxIM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    invoke-virtual {p2, p0, p3, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;)V

    .line 222
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    .line 223
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    .line 224
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    .line 225
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;)V

    .line 230
    const-class p1, Lcom/android/systemui/ForegroundServiceNotificationListener;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onUserSwitched(I)V

    return-void
.end method

.method public onActivated()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v1, 0x0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$string;->notification_tap_again:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showTransientIndication(I)V

    .line 420
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 422
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :cond_0
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onActivated()V

    if-eqz p1, :cond_0

    .line 412
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :cond_0
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 429
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 430
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->onActivationReset()V

    :cond_0
    return-void
.end method

.method public onBindRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 400
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelfChangedListener(Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;)V

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$xngHwpynxyZFSiQxF9iZw-c24-s;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$xngHwpynxyZFSiQxF9iZw-c24-s;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSecureStateProvider(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 241
    invoke-static {}, Lcom/android/internal/widget/MessagingMessage;->dropCache()V

    .line 242
    invoke-static {}, Lcom/android/internal/widget/MessagingGroup;->dropCache()V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationsOnDensityOrFontScaleChanged()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    :goto_0
    return-void
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    if-eqz p2, :cond_1

    .line 459
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 462
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 463
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 464
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->hasActiveNotifications()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 327
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->isTracking()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-nez p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToKeyguard()V

    .line 336
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->updateAreThereNotifications()V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationOnUiModeChanged()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    :goto_0
    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUpdateRowStates()V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setUser(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 385
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    .line 387
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    if-eqz v0, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationOnUiModeChanged()V

    .line 389
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationViews()V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->setLockscreenUser(I)V

    const/4 p1, 0x1

    .line 394
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 0

    return-void
.end method

.method public updateNotificationViews()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$gi2ID0w-NOAgPDK3Aiflyq0eAFU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$gi2ID0w-NOAgPDK3Aiflyq0eAFU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationViews()V

    return-void
.end method
