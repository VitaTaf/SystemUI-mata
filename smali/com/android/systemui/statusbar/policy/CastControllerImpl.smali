.class public Lcom/android/systemui/statusbar/policy/CastControllerImpl;
.super Ljava/lang/Object;
.source "CastControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CastController;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCallbackRegistered:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/CastController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDiscovering:Z

.field private final mDiscoveringLock:Ljava/lang/Object;

.field private final mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private mProjection:Landroid/media/projection/MediaProjectionInfo;

.field private final mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private final mProjectionLock:Ljava/lang/Object;

.field private final mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private final mRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CastController"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    .line 311
    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 339
    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "media_router"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const-string v1, "android.media.mirroring_group"

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->setRouterGroupId(Ljava/lang/String;)V

    const-string v0, "media_projection"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 79
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "CastController"

    const-string p1, "new CastController()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method

.method private ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 279
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 280
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .locals 0

    .line 296
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/CastController$Callback;->onCastDevicesChanged()V

    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "CastController"

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 239
    invoke-static {p0, p1}, Lcom/android/systemui/util/Utils;->isHeadlessRemoteDisplayProvider(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 244
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No label found for package: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting appName for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method private handleDiscoveryChangeLocked()V
    .locals 5

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v2, v3, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 134
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ",default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ",enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ",connecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ",selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ",id="

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    if-nez v2, :cond_0

    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 230
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 232
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setProjection: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CastController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 230
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateRemoteDisplays()V
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v1, :cond_2

    .line 263
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 264
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    invoke-virtual {v4, v3}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    .line 267
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 270
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v2

    if-nez v2, :cond_3

    .line 271
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 274
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter p1

    .line 102
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    .line 103
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 99
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "CastController state:"

    .line 83
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mDiscovering="

    .line 84
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mCallbackRegistered="

    .line 85
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mCallbacks.size="

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "  mRoutes.size="

    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const/4 p1, 0x0

    .line 88
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 89
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/MediaRouter$RouteInfo;

    const-string v0, "    "

    .line 90
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "  mProjection="

    .line 92
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method fireOnCastDevicesChanged()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 288
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    goto :goto_0

    .line 291
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

.method public getCastDevices()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 158
    new-instance v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;-><init>()V

    .line 159
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    .line 160
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 161
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v7

    :goto_1
    iput-object v6, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    .line 162
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 163
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    iput-object v7, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    .line 165
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v6

    if-ne v6, v4, :cond_2

    const/4 v4, 0x1

    .line 167
    iput v4, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    goto :goto_3

    .line 168
    :cond_2
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 171
    iput v4, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    goto :goto_3

    .line 169
    :cond_4
    :goto_2
    iput v4, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    .line 174
    :goto_3
    iput-object v3, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 175
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-eqz v1, :cond_6

    .line 181
    new-instance v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;-><init>()V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v3}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v3}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->quick_settings_casting:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    .line 185
    iput v4, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    iput-object p0, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_6
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 177
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter p1

    .line 112
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    .line 113
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 110
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    return-void
.end method

.method public setDiscovering(Z)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    .line 120
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    .line 121
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CastController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDiscovering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 196
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    .line 198
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCasting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CastController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
    .locals 4

    .line 204
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    instance-of v0, v0, Landroid/media/projection/MediaProjectionInfo;

    .line 205
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    const-string v2, "CastController"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCasting isProjection="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_2

    .line 207
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    check-cast p1, Landroid/media/projection/MediaProjectionInfo;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->stopActiveProjection()V

    goto :goto_0

    .line 211
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Projection is no longer active: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    :goto_0
    return-void
.end method
