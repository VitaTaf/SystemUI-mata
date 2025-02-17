.class public Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/qs/QSHost;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/qs/QSFactory;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/QSHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDumpController:Lcom/android/systemui/DumpController;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mQsFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;Lcom/android/systemui/DumpController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            "Landroid/os/Handler;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoTileManager;",
            ">;",
            "Lcom/android/systemui/DumpController;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 101
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 103
    iput-object p7, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 104
    iput-object p6, p0, Lcom/android/systemui/qs/QSTileHost;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 105
    iput-object p9, p0, Lcom/android/systemui/qs/QSTileHost;->mDumpController:Lcom/android/systemui/DumpController;

    .line 107
    new-instance p1, Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 109
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-class p1, Lcom/android/systemui/plugins/qs/QSFactory;

    const/4 p2, 0x1

    invoke-interface {p6, p0, p1, p2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 112
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mDumpController:Lcom/android/systemui/DumpController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/DumpController;->addListener(Lcom/android/systemui/Dumpable;)V

    .line 114
    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8OyZkY1GXlSGEY9CusSz83dAxOw;

    invoke-direct {p1, p0, p7, p8}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8OyZkY1GXlSGEY9CusSz83dAxOw;-><init>(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private changeTileSpecs(Ljava/util/function/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "sysui_qs_tiles"

    .line 295
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, ","

    .line 300
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 299
    invoke-static {p0, v2, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$addTile$5(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 291
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dump$6(Lcom/android/systemui/plugins/qs/QSTile;)Z
    .locals 0

    .line 392
    instance-of p0, p0, Lcom/android/systemui/Dumpable;

    return p0
.end method

.method static synthetic lambda$dump$7(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 0

    .line 393
    check-cast p3, Lcom/android/systemui/Dumpable;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTuningChanged$2(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 226
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$onTuningChanged$3(Ljava/util/Map$Entry;)V
    .locals 2

    .line 228
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying tile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    return-void
.end method

.method static synthetic lambda$removeTile$4(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 282
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 361
    sget v0, Lcom/android/systemui/R$string;->quick_settings_tiles_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "QSTileHost"

    if-eqz v1, :cond_0

    .line 363
    sget p1, Lcom/android/systemui/R$string;->quick_settings_tiles:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 364
    sget-boolean p0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded tile specs from config: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_0
    sget-boolean p0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded tile specs from setting: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 370
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v5, p1, v3

    .line 371
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "default"

    .line 373
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_5

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 376
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_3

    const-string v4, "dbg:mem"

    .line 378
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 383
    :cond_4
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 307
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .locals 1

    .line 291
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 318
    invoke-interface {p2}, Ljava/util/List;->size()I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 320
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "custom("

    .line 321
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 323
    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 324
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    .line 325
    new-instance v4, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v9, Landroid/service/quicksettings/Tile;

    invoke-direct {v9}, Landroid/service/quicksettings/Tile;-><init>()V

    new-instance v11, Landroid/os/UserHandle;

    .line 327
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v11, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 328
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 329
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 330
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 331
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_2
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveCurrentTiles "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSTileHost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, ","

    .line 336
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    const-string v0, "sysui_qs_tiles"

    .line 335
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public collapsePanels()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateCollapsePanels()V

    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    const/4 v0, 0x0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/qs/QSFactory;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Default factory didn\'t create view for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "QSTileHost:"

    .line 391
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8dGA3dPDXgH8k-YhV5jUASLKyAo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8dGA3dPDXgH8k-YhV5jUASLKyAo;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 393
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forceCollapsePanels()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateForceCollapsePanels()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object p0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object p0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$QSTileHost(Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V
    .locals 1

    const-string v0, "sysui_qs_tiles"

    .line 118
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 120
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V
    .locals 1

    .line 140
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string p2, "sysui_qs_tiles"

    invoke-virtual {p1, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 143
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_qs_tiles"

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "sysui_qs_tiles"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    const-string v0, "QSTileHost"

    if-eqz p1, :cond_1

    const-string p1, "Recreating tiles"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p2, :cond_2

    .line 220
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->quick_settings_tiles_retail_mode:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 224
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    .line 225
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-ne p2, v1, :cond_3

    return-void

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$tL3GWCpuev-DvXg1noj_yj7fk3Y;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$tL3GWCpuev-DvXg1noj_yj7fk3Y;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 231
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile;

    if-eqz v4, :cond_9

    .line 234
    instance-of v5, v4, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v5, :cond_5

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/qs/external/CustomTile;

    .line 235
    invoke-virtual {v6}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v6

    if-ne v6, p2, :cond_9

    .line 236
    :cond_5
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 237
    sget-boolean v6, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_6
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    if-nez v5, :cond_7

    .line 239
    iget v5, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-eq v5, p2, :cond_7

    .line 240
    invoke-interface {v4, p2}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 242
    :cond_7
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_8
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 247
    :cond_9
    sget-boolean v4, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating tile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_a
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 251
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 252
    invoke-interface {v4, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_b
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating tile for spec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 263
    :cond_c
    iput p2, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 264
    new-instance p2, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 268
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 269
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 271
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "No valid tiles on tuning changed. Setting to default."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_e
    const/4 p1, 0x0

    .line 274
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_f

    .line 275
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_f
    :goto_2
    return-void
.end method

.method public openPanels()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateOpenPanels()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 312
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .locals 1

    .line 282
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$lvnGvThFo7-HeGkbFqhwU9KCtaQ;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$lvnGvThFo7-HeGkbFqhwU9KCtaQ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public unmarkTileAsAutoAdded(Ljava/lang/String;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->unmarkTileAsAutoAdded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
