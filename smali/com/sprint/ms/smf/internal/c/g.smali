.class public Lcom/sprint/ms/smf/internal/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/internal/c/g$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final m:Ljava/lang/Object;

.field private static n:Lcom/sprint/ms/smf/internal/c/g;


# instance fields
.field public final a:Landroid/content/Context;

.field private h:Lcom/sprint/ms/smf/internal/c/g$a;

.field private i:I

.field private j:I

.field private k:Landroid/net/Network;

.field private l:Landroid/net/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/c/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/c/g;->b:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sprint/ms/smf/internal/c/g;->m:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->h:Lcom/sprint/ms/smf/internal/c/g$a;

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    .line 124
    iput v0, p0, Lcom/sprint/ms/smf/internal/c/g;->j:I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    .line 146
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 147
    new-instance p1, Lcom/sprint/ms/smf/internal/c/g$a;

    invoke-direct {p1, p0, v0}, Lcom/sprint/ms/smf/internal/c/g$a;-><init>(Lcom/sprint/ms/smf/internal/c/g;B)V

    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->h:Lcom/sprint/ms/smf/internal/c/g$a;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/internal/c/g;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sprint/ms/smf/internal/c/g;->j:I

    return p0
.end method

.method static synthetic a(Lcom/sprint/ms/smf/internal/c/g;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/g;
    .locals 2

    const-class v0, Lcom/sprint/ms/smf/internal/c/g;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/sprint/ms/smf/internal/c/g;->n:Lcom/sprint/ms/smf/internal/c/g;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/sprint/ms/smf/internal/c/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sprint/ms/smf/internal/c/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprint/ms/smf/internal/c/g;->n:Lcom/sprint/ms/smf/internal/c/g;

    .line 136
    :cond_0
    sget-object p0, Lcom/sprint/ms/smf/internal/c/g;->n:Lcom/sprint/ms/smf/internal/c/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcom/sprint/ms/smf/internal/c/g;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/sprint/ms/smf/internal/c/g;)Landroid/net/Network;
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->l:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic d(Lcom/sprint/ms/smf/internal/c/g;)I
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/sprint/ms/smf/internal/c/g;->j:I

    return v0
.end method

.method static synthetic e(Lcom/sprint/ms/smf/internal/c/g;)I
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    return v0
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 40
    sget-object v0, Lcom/sprint/ms/smf/internal/c/g;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private static i()Z
    .locals 3

    const/4 v0, 0x0

    .line 572
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 574
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v2, 0xbb8

    .line 575
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 577
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 579
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x12c

    if-gt v2, v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const-string v0, "dsa.spcsdns.net"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dsa.spcsdns.net"

    const-string v2, "dsa.ssprov.sprint.com"

    .line 185
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "dsa.ssprov.sprint.com"

    .line 192
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dsa.spcsdns.net"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const-string v2, "dsa.ssprov.sprint.com"

    .line 195
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x50

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/g;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;

    const-string v4, "oma.ssprov.sprint.com"

    invoke-virtual {v2, v4}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 199
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 202
    :cond_2
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "oma.ssprov.sprint.com"

    invoke-direct {v4, v5, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/g;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;

    const-string v4, "dsa.spcsdns.net"

    invoke-virtual {v2, v4}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 208
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 211
    :cond_4
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "dsa.spcsdns.net"

    invoke-direct {v4, v5, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 216
    :cond_5
    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 219
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/g;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v0, :cond_7

    .line 221
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_6

    .line 223
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;

    invoke-virtual {p1, v2, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 226
    :cond_6
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 230
    :cond_7
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;)Landroid/net/ProxyInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 232
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p1, v2, p2}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 234
    :cond_8
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;

    invoke-virtual {p1, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 237
    :cond_9
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->l:Landroid/net/Network;

    if-eqz p1, :cond_b

    if-nez v0, :cond_a

    .line 240
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->l:Landroid/net/Network;

    invoke-virtual {p1, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 243
    :cond_a
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/c/g;->l:Landroid/net/Network;

    invoke-virtual {p1, v2, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_c

    .line 247
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 250
    :cond_c
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 254
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_d

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-gt p2, v0, :cond_d

    .line 258
    instance-of p2, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p2, :cond_d

    .line 259
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    new-instance v0, Lcom/sprint/ms/smf/internal/c/k;

    invoke-direct {v0}, Lcom/sprint/ms/smf/internal/c/k;-><init>()V

    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 277
    :try_start_2
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 278
    invoke-static {p2}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 268
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 269
    invoke-static {p2}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    :cond_d
    :goto_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->j:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/g;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 304
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sprint/ms/smf/internal/c/g;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    monitor-exit p0

    return v4

    .line 305
    :cond_0
    monitor-exit p0

    return v3

    .line 309
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    .line 311
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/g;->b()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v1, :cond_2

    .line 313
    monitor-exit p0

    return v4

    .line 320
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sprint/ms/smf/internal/c/g;->i()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    .line 326
    monitor-exit p0

    return v4

    .line 331
    :cond_3
    :try_start_3
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x3

    .line 332
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/g;->h:Lcom/sprint/ms/smf/internal/c/g$a;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 336
    sget-object v1, Lcom/sprint/ms/smf/internal/c/g;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 337
    :try_start_4
    sget-object v2, Lcom/sprint/ms/smf/internal/c/g;->m:Ljava/lang/Object;

    const-wide/32 v5, 0xf230

    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 338
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 340
    :try_start_5
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    if-nez v1, :cond_5

    .line 346
    :try_start_6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 347
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 348
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sprint/ms/smf/internal/c/g;->i()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_5

    move v3, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_1
    if-nez v3, :cond_7

    .line 364
    :try_start_7
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    .line 366
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    if-nez v0, :cond_7

    .line 368
    :goto_2
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/g;->d()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 338
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 358
    :try_start_a
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 359
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 364
    :cond_6
    :try_start_b
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    .line 366
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v0, :cond_7

    goto :goto_2

    .line 374
    :cond_7
    :goto_3
    monitor-exit p0

    return v3

    :goto_4
    if-nez v3, :cond_8

    .line 364
    :try_start_c
    iget v1, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    .line 366
    iget v1, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    if-nez v1, :cond_8

    .line 368
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/g;->d()Z

    :cond_8
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 4

    monitor-enter p0

    .line 384
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 385
    monitor-exit p0

    return v2

    .line 388
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 389
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I

    .line 394
    :cond_1
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/g;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_2

    .line 396
    monitor-exit p0

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 399
    :try_start_2
    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->k:Landroid/net/Network;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    :try_start_3
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 403
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/g;->h:Lcom/sprint/ms/smf/internal/c/g$a;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .line 410
    :try_start_4
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 411
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 416
    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x0

    .line 541
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://deviceservices.sprint.com/keepalive.html"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 543
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v2, 0xbb8

    .line 544
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 546
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 548
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x12c

    if-gt v2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 556
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/g;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 557
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method
