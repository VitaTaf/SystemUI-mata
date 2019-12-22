.class public Lcom/sprint/ms/smf/internal/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/c/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/net/ProxyInfo;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getGlobalProxy"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ProxyInfo;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/net/ProxyInfo;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    .line 78
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    array-length v0, v0

    if-lez v0, :cond_2

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v2, v3, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    :goto_0
    const-string v2, "connectivity"

    .line 98
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setGlobalProxy"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/net/ProxyInfo;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 100
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;)Landroid/net/ProxyInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 108
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    if-ne v0, v2, :cond_3

    return v5

    :cond_3
    if-nez p0, :cond_4

    .line 111
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    return v5

    :catch_0
    :cond_4
    return v1
.end method
