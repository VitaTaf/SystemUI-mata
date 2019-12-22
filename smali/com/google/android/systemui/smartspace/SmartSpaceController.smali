.class public Lcom/google/android/systemui/smartspace/SmartSpaceController;
.super Ljava/lang/Object;
.source "SmartSpaceController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmRegistered:Z

.field private final mAppContext:Landroid/content/Context;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field private final mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private mHidePrivateData:Z

.field private final mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartSpaceEnabledBroadcastSent:Z

.field private final mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SmartSpaceController"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$2JD3Kr-LWtVJvDpjst0cS-5HQXs;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$2JD3Kr-LWtVJvDpjst0cS-5HQXs;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 93
    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 121
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/google/android/systemui/smartspace/ProtoStore;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/smartspace/ProtoStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "smartspace-background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    .line 128
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    .line 130
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    .line 131
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 133
    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 135
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->reloadData()V

    .line 141
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    .line 143
    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lcom/google/android/systemui/smartspace/GSAIntents;->getGsaPackageFilter([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/SmartSpaceController$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.apps.nexuslauncher.UPDATE_SMARTSPACE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/systemui/smartspace/SmartSpaceController;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/systemui/smartspace/SmartSpaceController;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method

.method private clearStore()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartspace_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/systemui/smartspace/SmartSpaceController;
    .locals 2

    .line 111
    sget-object v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    if-nez v0, :cond_1

    .line 112
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartSpaceController"

    const-string v1, "controller created"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 117
    :cond_1
    sget-object p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    return-object p0
.end method

.method private isSmartSpaceDisabledByExperiments()Z
    .locals 2

    .line 338
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "always_on_display_constants"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 340
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    const/4 v1, 0x1

    .line 342
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    const-string p0, "smart_space_enabled"

    .line 343
    invoke-virtual {v0, p0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SmartSpaceController"

    const-string v0, "Bad AOD constants"

    .line 345
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 4

    .line 170
    new-instance v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {v0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/systemui/smartspace/ProtoStore;->load(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onExpire(Z)V
    .locals 2

    .line 268
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 271
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    move-result v0

    const-string v1, "SmartSpaceController"

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    sget-boolean p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "onExpire - cancelled"

    .line 287
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    .line 277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_3

    .line 278
    sget-boolean p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "onExpire - sent"

    .line 279
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.systemui.smartspace.EXPIRE_EVENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 281
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onGsaChanged()V
    .locals 3

    .line 308
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartSpaceController"

    const-string v1, "onGsaChanged"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.smartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 314
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 315
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    .line 319
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 320
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 321
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    invoke-interface {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onGsaChanged()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private update()V
    .locals 10

    .line 232
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 234
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v1, "SmartSpaceController"

    if-eqz v0, :cond_0

    const-string v0, "update"

    .line 235
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 242
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getExpiresAtMillis()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    .line 246
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    const-string v7, "SmartSpace"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 252
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying listeners data="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_4

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-interface {v3, v4}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V
    .locals 1

    .line 370
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 371
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 373
    invoke-interface {p1, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 353
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "SmartspaceController"

    .line 354
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  initial broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  weather "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  current "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "serialized:"

    .line 358
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    invoke-direct {p0, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disabled by experiment: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$SmartSpaceController()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method

.method public synthetic lambda$onNewCard$1$SmartSpaceController(Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 0

    .line 208
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p2, p1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p2, p1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 213
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    .line 214
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method

.method public synthetic lambda$onNewCard$2$SmartSpaceController(Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/NewCardInfo;->toWrapper(Landroid/content/Context;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    move-result-object v0

    .line 200
    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->shouldDiscard()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v2

    .line 205
    invoke-static {v1, v0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNewCard(Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 3

    .line 183
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v1, "SmartSpaceController"

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewCard: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->getUserId()I

    move-result v0

    iget v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    if-eq v0, v2, :cond_2

    .line 189
    sget-boolean p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore card that belongs to another user target: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " current: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public reloadData()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 327
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 328
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method

.method public removeListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V
    .locals 0

    .line 383
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 384
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHideSensitiveData(Z)V
    .locals 3

    .line 293
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 295
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    invoke-interface {v2, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSensitiveModeChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    if-eqz p1, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->clearStore()V

    :cond_1
    return-void
.end method
