.class public Lcom/sprint/ms/smf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/e$d;,
        Lcom/sprint/ms/smf/e$a;,
        Lcom/sprint/ms/smf/e$b;,
        Lcom/sprint/ms/smf/e$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static m:Lcom/sprint/ms/smf/e;


# instance fields
.field public final a:Landroid/content/Context;

.field private f:Landroid/os/Messenger;

.field private volatile g:Z

.field private final h:Lcom/sprint/ms/smf/e$a;

.field private final i:Lcom/sprint/ms/smf/e$d;

.field private final j:Landroid/os/Messenger;

.field private final k:Lcom/sprint/ms/smf/e$b;

.field private final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sprint/ms/smf/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/e;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 179
    sput-object v0, Lcom/sprint/ms/smf/e;->m:Lcom/sprint/ms/smf/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lcom/sprint/ms/smf/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprint/ms/smf/e$a;-><init>(Lcom/sprint/ms/smf/e;B)V

    iput-object v0, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/ms/smf/e;->l:Ljava/util/HashMap;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    .line 194
    new-instance p1, Lcom/sprint/ms/smf/e$d;

    invoke-direct {p1, p0}, Lcom/sprint/ms/smf/e$d;-><init>(Lcom/sprint/ms/smf/e;)V

    iput-object p1, p0, Lcom/sprint/ms/smf/e;->i:Lcom/sprint/ms/smf/e$d;

    .line 195
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/sprint/ms/smf/e;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v0, Lcom/sprint/ms/smf/e$b;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/sprint/ms/smf/e$b;-><init>(Landroid/os/Looper;Lcom/sprint/ms/smf/e;)V

    iput-object v0, p0, Lcom/sprint/ms/smf/e;->k:Lcom/sprint/ms/smf/e$b;

    .line 198
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/sprint/ms/smf/e;->k:Lcom/sprint/ms/smf/e$b;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sprint/ms/smf/e;->j:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/e;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/sprint/ms/smf/e;
    .locals 2

    const-class v0, Lcom/sprint/ms/smf/e;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/sprint/ms/smf/e;->m:Lcom/sprint/ms/smf/e;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/sprint/ms/smf/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sprint/ms/smf/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprint/ms/smf/e;->m:Lcom/sprint/ms/smf/e;

    .line 188
    :cond_0
    sget-object p0, Lcom/sprint/ms/smf/e;->m:Lcom/sprint/ms/smf/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/sprint/ms/smf/e;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sprint/ms/smf/e;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method private a()Z
    .locals 7

    .line 358
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1203
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    .line 365
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2}, Lcom/sprint/ms/smf/configuration/ConfigurationJobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2203
    :catch_0
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    .line 367
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sprint/ms/smf/configuration/ConfigurationService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    monitor-enter v2

    .line 378
    :try_start_1
    iget-boolean v3, p0, Lcom/sprint/ms/smf/e;->g:Z

    if-eqz v3, :cond_2

    .line 379
    monitor-exit v2

    return v1

    :cond_2
    const/4 v3, 0x1

    .line 382
    iput-boolean v3, p0, Lcom/sprint/ms/smf/e;->g:Z

    .line 383
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sprint.ms.smf.services.action.CARRIER_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    iget-object v4, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 390
    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 392
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_3

    .line 393
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_3

    .line 397
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 398
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-nez v3, :cond_5

    .line 406
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    monitor-enter v0

    .line 407
    :try_start_2
    iput-boolean v1, p0, Lcom/sprint/ms/smf/e;->g:Z

    .line 408
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 413
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    .line 414
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 417
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 422
    :catch_1
    :goto_2
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    const/16 v1, 0x41

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    :catchall_1
    move-exception p0

    .line 383
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_7
    :goto_3
    return v1
.end method

.method private a(Z)Z
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    monitor-enter p1

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/sprint/ms/smf/e;->g:Z

    if-eqz v0, :cond_1

    .line 222
    monitor-exit p1

    return v1

    .line 224
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 227
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    monitor-enter p1

    .line 228
    :try_start_1
    iget-boolean v0, p0, Lcom/sprint/ms/smf/e;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 231
    :try_start_2
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    const-wide/16 v2, 0x6d6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    .line 237
    monitor-exit p1

    return v1

    .line 240
    :cond_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 244
    iget-object p1, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v1

    :catchall_1
    move-exception p0

    .line 240
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method static synthetic b(Lcom/sprint/ms/smf/e;)Lcom/sprint/ms/smf/e$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 433
    :try_start_0
    iput-boolean v1, p0, Lcom/sprint/ms/smf/e;->g:Z

    .line 434
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 437
    :try_start_1
    iget-object v1, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprint/ms/smf/e;->h:Lcom/sprint/ms/smf/e$a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    iput-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    throw v1

    :catch_0
    iput-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    return-void

    :catchall_1
    move-exception p0

    .line 434
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static synthetic c(Lcom/sprint/ms/smf/e;)Z
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sprint/ms/smf/e;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/sprint/ms/smf/e;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method final a(I)Landroid/os/Message;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/sprint/ms/smf/e;->k:Lcom/sprint/ms/smf/e$b;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/os/Message;)Lorg/json/JSONObject;
    .locals 6

    .line 268
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->a()Z

    const/4 v0, 0x1

    .line 270
    invoke-direct {p0, v0}, Lcom/sprint/ms/smf/e;->a(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sprint/ms/smf/e;->i:Lcom/sprint/ms/smf/e$d;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/sprint/ms/smf/e;->i:Lcom/sprint/ms/smf/e$d;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :try_start_1
    iget-object v3, p0, Lcom/sprint/ms/smf/e;->i:Lcom/sprint/ms/smf/e$d;

    const-wide/16 v4, 0x6d6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :catch_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    invoke-direct {p0, v0}, Lcom/sprint/ms/smf/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->b()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 279
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 290
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/sprint/ms/smf/e$c;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sprint/ms/smf/e$c;-><init>(B)V

    .line 295
    iget-object v3, p0, Lcom/sprint/ms/smf/e;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "smf_unique_id"

    .line 298
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const-string v4, "smf_sdk_api_level"

    .line 299
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    invoke-virtual {p1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 303
    :try_start_4
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->j:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 305
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->f:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->getInstance(Landroid/content/Context;)Lcom/sprint/ms/smf/ServiceHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->b()V

    return-object v2

    :cond_2
    const-string v4, "smf_uid"

    .line 318
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    invoke-virtual {p1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {v0, p1}, Lcom/sprint/ms/smf/ServiceHandler;->sendMessage(Landroid/os/Message;)V

    .line 323
    :goto_0
    iget-object p1, v1, Lcom/sprint/ms/smf/e$c;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 324
    :try_start_5
    iget-object v0, v1, Lcom/sprint/ms/smf/e$c;->b:Ljava/lang/Object;

    const-wide/32 v3, 0x11170

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 325
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 327
    :try_start_6
    iget-object p1, v1, Lcom/sprint/ms/smf/e$c;->a:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 330
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->b()V

    return-object v2

    .line 334
    :cond_3
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->b()V

    .line 335
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/sprint/ms/smf/e$c;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-object p1

    :catchall_1
    move-exception v0

    .line 325
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 340
    :catch_1
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->b()V

    return-object v2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 346
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 348
    invoke-direct {p0}, Lcom/sprint/ms/smf/e;->b()V

    return-void
.end method
