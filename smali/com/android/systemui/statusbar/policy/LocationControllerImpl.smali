.class public Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
    }
.end annotation


# static fields
.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    .line 54
    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 73
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.location.HIGH_POWER_REQUEST_CHANGE"

    .line 74
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.location.MODE_CHANGED"

    .line 75
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p2, "appops"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string p2, "statusbar"

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    return p0
.end method

.method private isUserLocationRestricted(I)Z
    .locals 1

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 146
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v0, "no_share_location"

    .line 145
    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 185
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method protected areActiveHighPowerLocationRequests()Z
    .locals 9

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 161
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 165
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 168
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_0

    .line 169
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isLocationActive()Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    return p0
.end method

.method public isLocationEnabled()Z
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "location"

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 132
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.location.HIGH_POWER_REQUEST_CHANGE"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    goto :goto_0

    :cond_0
    const-string p2, "android.location.MODE_CHANGED"

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method public setLocationEnabled(Z)Z
    .locals 2

    .line 112
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 113
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isUserLocationRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/Utils;->updateLocationEnabled(Landroid/content/Context;ZII)V

    const/4 p0, 0x1

    return p0
.end method
