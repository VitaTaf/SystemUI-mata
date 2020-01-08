.class final Lcom/sprint/ms/smf/internal/c/g$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/internal/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/internal/c/g;


# direct methods
.method private constructor <init>(Lcom/sprint/ms/smf/internal/c/g;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/ms/smf/internal/c/g;B)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/internal/c/g$a;-><init>(Lcom/sprint/ms/smf/internal/c/g;)V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/sprint/ms/smf/internal/c/g;->h()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-static {p0, p1}, Lcom/sprint/ms/smf/internal/c/g;->a(Lcom/sprint/ms/smf/internal/c/g;Landroid/net/Network;)Landroid/net/Network;

    .line 65
    invoke-static {}, Lcom/sprint/ms/smf/internal/c/g;->h()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method public final onLosing(Landroid/net/Network;I)V
    .locals 0

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    .line 88
    invoke-static {}, Lcom/sprint/ms/smf/internal/c/g;->h()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/g;->a(Lcom/sprint/ms/smf/internal/c/g;Landroid/net/Network;)Landroid/net/Network;

    .line 91
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/g;->a(Lcom/sprint/ms/smf/internal/c/g;)I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/g;->b(Lcom/sprint/ms/smf/internal/c/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    goto :goto_0

    .line 95
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 98
    :try_start_1
    invoke-static {v1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    :try_start_2
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/g;->b(Lcom/sprint/ms/smf/internal/c/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/g;->c(Lcom/sprint/ms/smf/internal/c/g;)Landroid/net/Network;

    .line 113
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/g;->d(Lcom/sprint/ms/smf/internal/c/g;)I

    .line 114
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/g$a;->a:Lcom/sprint/ms/smf/internal/c/g;

    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/g;->e(Lcom/sprint/ms/smf/internal/c/g;)I

    .line 116
    invoke-static {}, Lcom/sprint/ms/smf/internal/c/g;->h()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
