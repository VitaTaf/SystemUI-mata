.class public Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field protected final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field private mAllowLockscreenRemoteInput:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

.field protected mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field protected mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowLockscreenNotifications:Z

.field private mState:I

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 75
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 76
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    .line 84
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 85
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    .line 96
    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 166
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 184
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    const-string v0, "statusbar"

    .line 186
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 187
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 188
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 189
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method private adminAllowsKeyguardFeature(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 391
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-nez v0, :cond_0

    .line 173
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method private hideSilentNotificationsOnLockscreen()Z
    .locals 2

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "lock_screen_show_silent_notifications"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSecure(I)Z
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

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

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 456
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "LockscreenUserManager"

    const-string v0, "mEntryManager was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setLockscreenAllowRemoteInput(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    return-void
.end method

.method private setShowLockscreenNotifications(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    return-void
.end method

.method private shouldTemporarilyHideNotifications(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 280
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result p0

    return p0
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 468
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private userAllowsNotificationsInPublic(I)Z
    .locals 5

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    if-eq p1, v0, :cond_0

    return v1

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 426
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "lock_screen_show_notifications"

    .line 425
    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x4

    .line 428
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->adminAllowsKeyguardFeature(II)Z

    move-result v3

    .line 430
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->getPrivateNotificationsAllowed()Z

    move-result v4

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 432
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v1

    .line 436
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "NotificationLockscreenUserManager state:"

    .line 574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mCurrentUserId="

    .line 575
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mShowLockscreenNotifications="

    .line 577
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAllowLockscreenRemoteInput="

    .line 579
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mCurrentProfiles="

    .line 581
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 583
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getCurrentProfiles()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 487
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    return p0
.end method

.method public isAnyProfilePublicMode()Z
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 476
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentProfile(I)Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 270
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    .line 271
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isLockscreenPublicMode(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0

    .line 407
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 441
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 443
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 444
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 447
    :goto_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 448
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 449
    :goto_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    return v2
.end method

.method public needsSeparateWorkChallenge(I)Z
    .locals 1

    .line 412
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 496
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    return-void
.end method

.method public setLockscreenPublicMode(ZI)V
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .locals 10

    .line 193
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 195
    new-instance p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 208
    new-instance p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 218
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_notifications"

    .line 219
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 218
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_allow_private_notifications"

    .line 224
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 223
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_mode"

    .line 230
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 229
    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string p1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v7, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 245
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.android.systemui.permission.SELF"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    .line 257
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public shouldAllowLockscreenRemoteInput()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    return p0
.end method

.method public shouldHideNotifications(I)Z
    .locals 1

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    if-eq p1, v0, :cond_1

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->shouldHideNotifications(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->shouldTemporarilyHideNotifications(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 2

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 301
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "LockscreenUserManager"

    const-string v0, "mEntryManager was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 304
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldShowLockscreenNotifications()Z
    .locals 0

    .line 261
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    return p0
.end method

.method public shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 311
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "LockscreenUserManager"

    const-string v0, "mEntryManager was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->useNewInterruptionModel(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->hideSilentNotificationsOnLockscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result p1

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    .line 322
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 6

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    const/4 v2, 0x1

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 343
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 348
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setShowLockscreenNotifications(Z)V

    .line 360
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setLockscreenAllowRemoteInput(Z)V

    return-void
.end method

.method public updatePublicMode()V
    .locals 9

    .line 505
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 506
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getCurrentUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 513
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getCurrentProfiles()Landroid/util/SparseArray;

    move-result-object v4

    .line 514
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 515
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_3
    if-ltz v5, :cond_6

    .line 516
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 518
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-nez v3, :cond_5

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getCurrentUserId()I

    move-result v8

    if-eq v6, v8, :cond_5

    if-eqz v7, :cond_5

    .line 521
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isSecure(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v0, :cond_4

    .line 524
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    move v8, v1

    goto :goto_5

    :cond_4
    :goto_4
    move v8, v2

    goto :goto_5

    :cond_5
    move v8, v3

    .line 526
    :goto_5
    invoke-virtual {p0, v8, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setLockscreenPublicMode(ZI)V

    .line 527
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 529
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "lock_screen_allow_private_notifications"

    .line 374
    invoke-static {v1, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/16 v3, 0x8

    .line 377
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->adminAllowsKeyguardFeature(II)Z

    move-result v3

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 380
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    .line 384
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method
