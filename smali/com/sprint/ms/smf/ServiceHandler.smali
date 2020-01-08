.class public Lcom/sprint/ms/smf/ServiceHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/ServiceHandler$a;
    }
.end annotation


# static fields
.field private static F:Lcom/sprint/ms/smf/ServiceHandler;

.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final B:Landroid/content/Context;

.field private final C:Lcom/sprint/ms/smf/ServiceHandler$a;

.field private final D:Ljava/util/concurrent/ExecutorService;

.field private final E:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/ServiceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/ServiceHandler;->a:Ljava/lang/String;

    const-string v1, "deviceservices.sprint.com"

    const-string v2, "devicesb.sprint.com"

    const-string v3, "deviceselfservice.sprint.com"

    const-string v4, "dsa.ssprov.sprint.com"

    const-string v5, "dsa.spcsdns.net"

    const-string v6, "deg.spcsdns.net"

    const-string v7, "degn.deg.spcsdns.net"

    const-string v8, "degi.deg.spcsdns.net"

    .line 79
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/ServiceHandler;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 265
    sput-object v0, Lcom/sprint/ms/smf/ServiceHandler;->F:Lcom/sprint/ms/smf/ServiceHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/ms/smf/ServiceHandler;->B:Landroid/content/Context;

    .line 302
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/sprint/ms/smf/ServiceHandler;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 304
    new-instance v1, Lcom/sprint/ms/smf/ServiceHandler$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sprint/ms/smf/ServiceHandler$a;-><init>(Lcom/sprint/ms/smf/ServiceHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprint/ms/smf/ServiceHandler;->C:Lcom/sprint/ms/smf/ServiceHandler$a;

    const/4 v0, 0x6

    .line 306
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/ms/smf/ServiceHandler;->D:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x4

    .line 307
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/ms/smf/ServiceHandler;->E:Ljava/util/concurrent/ExecutorService;

    .line 310
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v0}, Lcom/sprint/ms/smf/configuration/ConfigurationJobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 312
    :catch_0
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler;->B:Landroid/content/Context;

    const-class v1, Lcom/sprint/ms/smf/configuration/ConfigurationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/ServiceHandler;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler;->B:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 2004
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    .line 2007
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->n()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v5, "lock_package_proxy_host"

    .line 2013
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lock_package_proxy_port"

    .line 2014
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "lock_package_proxy_excl_list"

    .line 2015
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2021
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {p0, v5}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2022
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 2028
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result p0

    if-ne v3, p0, :cond_2

    if-eqz v4, :cond_2

    .line 2029
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2031
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_2

    .line 2032
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "con"

    const-string v2, "orig_exclusion_list"

    .line 12395
    invoke-virtual {v0, v1, v2}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2036
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "\\s*,\\s*"

    .line 2038
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2044
    :cond_1
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result p1

    invoke-static {v0, p1, p0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method private static a(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1952
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1960
    :cond_0
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1961
    array-length v1, v0

    if-lez v1, :cond_1

    .line 1963
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1968
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    :goto_0
    sget-object v0, Lcom/sprint/ms/smf/ServiceHandler;->b:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v6, v0, v4

    move v7, v3

    .line 1973
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1974
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_4

    .line 1983
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1990
    :cond_5
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result p0

    invoke-static {v0, p0, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .line 404
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "success"

    const/4 v2, 0x1

    .line 407
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 410
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 415
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "{ \"success\": \"false\" }"

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/sprint/ms/smf/ServiceHandler;->f(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "smf_uid"

    .line 1339
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1340
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "smf_sdk_api_level"

    .line 1341
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1343
    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->f(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smf_oauth_token"

    .line 1344
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1346
    invoke-static {p0, v1}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v0

    const-string v1, "https://deviceservices.sprint.com/auth/access_device_info"

    const-string v2, "access_device_info"

    .line 1348
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1356
    :cond_0
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "smf_transaction_id"

    .line 1358
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1360
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "imsi"

    const-string v4, "iccid"

    const-string v5, "msid"

    const-string v6, "mdn"

    packed-switch v1, :pswitch_data_0

    .line 1442
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 v0, 0xa

    const-string v1, "invalid_transaction_id"

    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1438
    :pswitch_0
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->e()Ljava/lang/String;

    move-result-object p0

    const-string v0, "carrierId"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1434
    :pswitch_1
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->g()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gid2"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1430
    :pswitch_2
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->f()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gid1"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "smf_telecom_identifiers"

    .line 1390
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 1392
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v7, "authenticationToken"

    invoke-virtual {v2, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 p0, v1, 0x1

    const/4 v7, 0x1

    if-ne p0, v7, :cond_2

    .line 1395
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 p0, v1, 0x2

    const/4 v6, 0x2

    if-ne p0, v6, :cond_3

    .line 1398
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    and-int/lit16 p0, v1, 0x200

    const/16 v5, 0x200

    if-ne p0, v5, :cond_4

    .line 1401
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->c()Ljava/lang/String;

    move-result-object p0

    const-string v5, "cdma_nai"

    invoke-virtual {v2, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    and-int/lit16 p0, v1, 0x100

    const/16 v5, 0x100

    if-ne p0, v5, :cond_5

    .line 1404
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->d()Ljava/lang/String;

    move-result-object p0

    const-string v5, "euimid"

    invoke-virtual {v2, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    and-int/lit8 p0, v1, 0x10

    const/16 v5, 0x10

    if-ne p0, v5, :cond_6

    .line 1407
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    and-int/lit8 p0, v1, 0x40

    const/16 v4, 0x40

    if-ne p0, v4, :cond_7

    .line 1410
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->i()Ljava/lang/String;

    move-result-object p0

    const-string v4, "imei"

    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    and-int/lit8 p0, v1, 0x20

    const/16 v4, 0x20

    if-ne p0, v4, :cond_8

    .line 1413
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    and-int/lit8 p0, v1, 0x4

    const/4 v3, 0x4

    if-ne p0, v3, :cond_9

    .line 1416
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object p0

    const-string v3, "meid"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    and-int/lit16 p0, v1, 0x80

    const/16 v3, 0x80

    if-ne p0, v3, :cond_a

    .line 1419
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->l()Ljava/lang/String;

    move-result-object p0

    const-string v3, "msisdn"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    and-int/lit16 p0, v1, 0x800

    const/16 v3, 0x800

    if-ne p0, v3, :cond_b

    .line 1422
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->m()Ljava/lang/String;

    move-result-object p0

    const-string v3, "impi"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    and-int/lit16 p0, v1, 0x400

    const/16 v1, 0x400

    if-ne p0, v1, :cond_c

    .line 1425
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->n()Ljava/lang/String;

    move-result-object p0

    const-string v0, "impu"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1386
    :pswitch_4
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1381
    :pswitch_5
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1376
    :pswitch_6
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object p0

    const-string v0, "deviceId"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    :pswitch_7
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1365
    :pswitch_8
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_c
    :goto_0
    invoke-static {v2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 1447
    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    .line 348
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 p1, 0x0

    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 v1, 0x9

    const-string v2, "request_not_found"

    invoke-virtual {v0, v1, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 360
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 361
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    if-nez v0, :cond_2

    .line 366
    iget-object p1, p0, Lcom/sprint/ms/smf/ServiceHandler;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sprint/ms/smf/ServiceHandler$1;

    invoke-direct {v0, p0, v1}, Lcom/sprint/ms/smf/ServiceHandler$1;-><init>(Lcom/sprint/ms/smf/ServiceHandler;Landroid/os/Message;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/sprint/ms/smf/ServiceHandler;->E:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sprint/ms/smf/ServiceHandler$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/sprint/ms/smf/ServiceHandler$2;-><init>(Lcom/sprint/ms/smf/ServiceHandler;ILandroid/os/Message;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/internal/b/b;)V
    .locals 3

    const/16 v0, 0x9

    if-nez p2, :cond_0

    .line 1459
    new-instance p2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "connectivity_failure"

    invoke-virtual {p2, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 9041
    :cond_0
    iget-object v1, p2, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 1464
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1466
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1467
    invoke-static {v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1468
    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9050
    :catch_0
    :cond_1
    iget v1, p2, Lcom/sprint/ms/smf/internal/b/b;->b:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_2

    .line 1478
    new-instance p2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v0, 0x5

    const-string v1, "access_denied"

    invoke-virtual {p2, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v2, 0x191

    if-ne v1, v2, :cond_3

    .line 1481
    new-instance p2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v0, 0x6

    const-string v1, "invalid_token"

    invoke-virtual {p2, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_4

    .line 1484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-Rate-Limit-Limit"

    .line 1485
    invoke-virtual {p2, v1}, Lcom/sprint/ms/smf/internal/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-Rate-Limit-Remaining"

    .line 1486
    invoke-virtual {p2, v1}, Lcom/sprint/ms/smf/internal/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-Rate-Limit-Reset"

    .line 1487
    invoke-virtual {p2, v1}, Lcom/sprint/ms/smf/internal/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    new-instance p2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v1, 0x7

    const-string v2, "rate_limit_reached"

    invoke-virtual {p2, v1, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;Ljava/util/Map;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 p2, -0x1

    if-ne v1, p2, :cond_5

    .line 1491
    new-instance p2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "http_failure"

    invoke-virtual {p2, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1495
    :cond_5
    new-instance p2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 v0, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 2145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2710

    .line 2146
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "smf_original_request"

    .line 2151
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string p1, "smf_response_body"

    .line 2154
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2158
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/ServiceHandler;Landroid/os/Message;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Message;)V

    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3

    .line 1919
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1920
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 1930
    :cond_0
    array-length v0, p0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 1933
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private static a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;)Z
    .locals 1

    .line 2180
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 p3, 0x9

    const-string p4, "missing_parameter"

    invoke-virtual {p0, p3, p4}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 2187
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Messenger;",
            "Landroid/os/Bundle;",
            "Lcom/sprint/ms/smf/oauth/OAuthToken;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, ","

    const/4 v1, 0x1

    if-eqz p3, :cond_7

    .line 2204
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 2211
    :cond_0
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v2

    .line 2212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/smf/1.0/validate"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2213
    new-instance v3, Lcom/sprint/ms/smf/internal/b/a;

    invoke-direct {v3, p0, v2}, Lcom/sprint/ms/smf/internal/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/sprint/ms/smf/internal/b/a;->a:Ljava/text/DateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 2214
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "x-spr-date"

    invoke-virtual {v3, v4, v2}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string v2, "GET"

    .line 2215
    invoke-virtual {v3, v2}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    :try_start_0
    const-string v2, "scope"

    .line 2217
    invoke-static {v0, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2223
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {p0, v4}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2224
    invoke-static {v2}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 2228
    :cond_1
    :goto_0
    invoke-static {p3, v3}, Lcom/sprint/ms/smf/oauth/a;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;Lcom/sprint/ms/smf/internal/b/a;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Authorization"

    invoke-virtual {v3, v2, p3}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 2229
    invoke-virtual {v3}, Lcom/sprint/ms/smf/internal/b/a;->e()Lcom/sprint/ms/smf/internal/b/b;

    move-result-object p3

    if-nez p3, :cond_2

    .line 2233
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 p3, 0x9

    const-string p4, "connectivity_failure"

    invoke-virtual {p0, p3, p4}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return v1

    .line 2237
    :cond_2
    invoke-virtual {p3}, Lcom/sprint/ms/smf/internal/b/b;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2238
    invoke-static {p1, p2, p3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/internal/b/b;)V

    return v1

    .line 13041
    :cond_3
    iget-object p3, p3, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2244
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2245
    invoke-static {v3}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2246
    new-instance p3, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p3}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 p4, 0x2

    const-string v0, "validation_check_failed"

    invoke-virtual {p3, p4, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p3}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return v1

    :cond_4
    const-string p3, "results"

    .line 2251
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    move v3, v2

    move v4, v3

    .line 2252
    :goto_1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 2253
    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    .line 2257
    new-instance p3, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p3}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v3, 0x5

    invoke-static {v0, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p3}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception p1

    .line 2265
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-static {p0, p2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2266
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_6
    return v2

    .line 2207
    :cond_7
    :goto_2
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string p3, "invalid_token"

    invoke-virtual {p0, v1, p3}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "VoWiFi"

    .line 1290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1291
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object p1

    const/16 v1, 0x28a

    .line 1292
    invoke-virtual {p1, v1}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 1293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1294
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object p0

    .line 1295
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/b;->m()Ljava/lang/String;

    move-result-object p0

    .line 1296
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v0

    .line 1305
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 1317
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1318
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "smf_unique_id"

    .line 2171
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_uid"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_sdk_api_level"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_transaction_id"

    .line 2172
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_api_endpoint"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_request_method"

    .line 2173
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_request_body"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_request_body_type"

    .line 2174
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smf_tracking_id"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smf_oauth_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/sprint/ms/smf/ServiceHandler;->g(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1515
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1516
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1517
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1520
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "invalid_request_processor"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "smf_uid"

    .line 1524
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1526
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "smf_sdk_api_level"

    .line 1527
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "smf_oauth_token"

    .line 1529
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1530
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1531
    invoke-static {p0, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v0

    .line 1534
    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://deviceservices.sprint.com/auth/modify_device_global_proxy"

    .line 1535
    invoke-static {p0, p1, p2, v0, v3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "callingPackageName"

    .line 1541
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0, v1, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1549
    :cond_2
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1550
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_3

    .line 1553
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v0

    :try_start_0
    const-string v2, "proxyHost"

    .line 1557
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "proxyPort"

    .line 1558
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "proxyExclList"

    .line 1559
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1565
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1566
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 1572
    :cond_3
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 1573
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalProxy"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-static {p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1544
    :cond_4
    :goto_1
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "calling_package_error"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/sprint/ms/smf/ServiceHandler;->e(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "calling_package_signature_error"

    .line 1589
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1590
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 1591
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 1594
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "invalid_request_processor"

    invoke-virtual {p0, v3, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "smf_uid"

    .line 1599
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1600
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v2

    .line 1603
    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->d(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "callingPackageName"

    .line 1604
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1607
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {p0, v1, v4}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1613
    :cond_1
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1614
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "global_proxy_caller_mismatch"

    invoke-virtual {p0, v3, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1620
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v6, 0x40

    .line 1622
    invoke-virtual {v1, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1623
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1625
    array-length v4, v1

    if-ne v4, v3, :cond_3

    const-string v4, "con"

    const-string v6, "lock_package_signature"

    .line 9386
    invoke-virtual {v2, v4, v6}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1625
    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1627
    :cond_3
    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {v1, v3, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1635
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1636
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 1639
    :cond_4
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1608
    :cond_5
    :goto_0
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "calling_package_error"

    invoke-virtual {p0, v3, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1645
    :cond_6
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 1647
    invoke-static {v1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1652
    :cond_7
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_9

    :try_start_1
    const-string v6, "lock_package_proxy_host"

    .line 1658
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v7, "lock_package_proxy_port"

    .line 1659
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v8, "lock_package_proxy_excl_list"

    .line 1660
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v6, v4

    :goto_1
    move v7, v5

    .line 1666
    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {p0, v8}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1667
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v0, v1

    move-object v6, v4

    move v7, v5

    .line 1674
    :goto_3
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;)Landroid/net/ProxyInfo;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1679
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 1680
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getPort()I

    move-result v10

    .line 1681
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_a
    move-object v8, v1

    move-object v9, v4

    move v10, v5

    .line 1695
    :goto_4
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-ne v7, v10, :cond_d

    if-eqz v0, :cond_d

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1697
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1701
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_b

    :try_start_4
    const-string v2, "prev_proxy_host"

    .line 1703
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "prev_proxy_port"

    .line 1704
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v2, "prev_proxy_excl_list"

    .line 1706
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1707
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "\\s*,\\s*"

    .line 1708
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 1715
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1716
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_b
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_c

    .line 1724
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1726
    invoke-static {v4, v5, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;Landroid/net/ProxyInfo;)Z

    move-result v3

    goto :goto_6

    .line 1728
    :cond_c
    invoke-static {v4, v5}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;Landroid/net/ProxyInfo;)Z

    move-result v3

    :cond_d
    :goto_6
    if-eqz v3, :cond_f

    .line 1737
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object p0

    .line 10187
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10188
    iget-object p0, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 10189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "shared_prefs"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "con.xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10191
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1739
    :cond_e
    invoke-static {v1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1741
    :cond_f
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v0, 0x2

    const-string v1, "global_proxy_not_reset"

    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/sprint/ms/smf/ServiceHandler;->h(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1762
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1764
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1767
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "invalid_request_processor"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "smf_uid"

    .line 1771
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1773
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "smf_sdk_api_level"

    .line 1774
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "smf_oauth_token"

    .line 1776
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1777
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1778
    invoke-static {p0, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v0

    .line 1781
    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://deviceservices.sprint.com/auth/modify_device_global_proxy"

    .line 1782
    invoke-static {p0, p1, p2, v0, v3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1788
    :cond_1
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1791
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "global_proxy_already_set"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "callingPackageName"

    .line 1795
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1796
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {p0, v1, v3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_2

    .line 1805
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    .line 1807
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1809
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1810
    array-length v5, v4

    if-ne v5, v2, :cond_9

    const/4 v5, 0x0

    .line 1813
    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1828
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;)Landroid/net/ProxyInfo;

    move-result-object v4

    .line 1830
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "lock_package_proxy_excl_list"

    if-eqz v4, :cond_4

    :try_start_1
    const-string v7, "prev_proxy_host"

    .line 1833
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "prev_proxy_port"

    .line 1834
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPort()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1835
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1841
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {p0, v7}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1842
    invoke-static {v4}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    const-string v4, "globalProxy"

    .line 1849
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/ProxyInfo;

    if-eqz v7, :cond_8

    .line 1854
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v4

    .line 1857
    invoke-static {v7}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v7

    .line 1860
    invoke-static {p0, v7}, Lcom/sprint/ms/smf/internal/c/c;->a(Landroid/content/Context;Landroid/net/ProxyInfo;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1861
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v0, 0x2

    const-string v1, "global_proxy_set_error"

    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1872
    :cond_5
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v9, "lock_package_proxy_host"

    .line 1874
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "lock_package_proxy_port"

    .line 1875
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getPort()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1876
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 1882
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {p0, v7}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1883
    invoke-static {v6}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    const-string v6, "con"

    const-string v7, "lock_package"

    .line 10543
    invoke-virtual {v0, v6, v7, v3}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lock_package_signature"

    .line 10547
    invoke-virtual {v0, v6, v3, v2}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->d(Landroid/content/Context;I)Z

    move-result p0

    .line 10551
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "lock_package_state"

    invoke-virtual {v0, v6, v1, p0}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10560
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "prev_proxy"

    invoke-virtual {v0, v6, v1, p0}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10566
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "lock_package_proxy"

    invoke-virtual {v0, v6, v1, p0}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    array-length p0, v4

    if-lez p0, :cond_7

    .line 1895
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "orig_exclusion_list"

    .line 11555
    invoke-virtual {v0, v6, v1, p0}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    .line 1908
    invoke-static {p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1865
    :cond_8
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v4}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1811
    :cond_9
    :try_start_3
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 1819
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1820
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 1823
    :cond_a
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "calling_package_signature_error"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1798
    :cond_b
    :goto_2
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "calling_package_error"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/os/Message;)V
    .locals 11

    .line 430
    iget v0, p1, Landroid/os/Message;->what:I

    .line 431
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 432
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v2, 0x9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 436
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "invalid_request_category"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v4, "smf_transaction_id"

    .line 440
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "smf_oauth_token"

    .line 441
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 442
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v5, "smf_uid"

    .line 444
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 445
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v5, "smf_sdk_api_level"

    .line 446
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v5, 0x3

    if-gez v0, :cond_1

    .line 450
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {p0, v5, v4}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x1

    const-string v8, "access_deg_info"

    const/16 v9, 0xa

    const/4 v10, 0x4

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_2

    .line 536
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "invalid_transaction_id"

    invoke-virtual {p0, v9, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 516
    :cond_2
    invoke-static {p0, v6}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v0

    .line 517
    invoke-static {p0, p1, v1, v0, v8}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 524
    :cond_3
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 525
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "deg_token_empty"

    invoke-virtual {p0, v10, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 528
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "token"

    .line 529
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 458
    :cond_5
    invoke-static {p0, v7}, Lcom/sprint/ms/smf/internal/c/h;->f(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 461
    invoke-static {p0, v6}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v0

    .line 462
    invoke-static {p0, p1, v1, v0, v8}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const-string v0, "service_name"

    .line 472
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v6, "force"

    .line 473
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 475
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 476
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {p0, v5, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 480
    :cond_7
    invoke-static {p0, v3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 481
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {p0, v9, v3}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 485
    :cond_8
    invoke-static {p0, v3, v4}, Lcom/sprint/ms/smf/internal/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sprint/ms/smf/internal/a/b;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    const-string v4, "APPLICATION"

    .line 489
    invoke-virtual {v0, v4, v3}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :cond_9
    if-nez v4, :cond_a

    .line 493
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "deg_response_empty"

    invoke-virtual {p0, v10, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 496
    :cond_a
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 497
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 505
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 506
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 509
    :cond_b
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "internal_error"

    invoke-virtual {p0, v2, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    .line 540
    :goto_0
    invoke-static {p1, v1, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "smf_event_state_changed"

    const-string v1, "com.sprint.ms.smf.action.QUV_REPORT"

    .line 2067
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2068
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 2069
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v3, :cond_2

    .line 2071
    invoke-static {p0, v4}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2072
    :cond_1
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "invalid_request_processor"

    invoke-virtual {p0, v4, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "smf_uid"

    .line 2076
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2078
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "smf_sdk_api_level"

    .line 2079
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "smf_oauth_token"

    .line 2081
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2082
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2083
    invoke-static {p0, v5}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v2

    .line 2086
    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "access_push_services"

    .line 2087
    invoke-static {p0, p1, p2, v2, v3}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const-string v2, "smf_event_handler"

    .line 2093
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-string v5, "smf_event_names"

    .line 2094
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v3, :cond_8

    if-eqz v6, :cond_8

    .line 2096
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 2103
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2104
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sprint.ms.smf.action.RECEIVE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v7, 0x0

    .line 2106
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_5

    goto :goto_1

    .line 2113
    :cond_5
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/push/a;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/push/a;

    move-result-object v2

    .line 2114
    invoke-virtual {v2, v6, v3}, Lcom/sprint/ms/smf/internal/push/a;->a(Ljava/util/List;Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 2118
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2119
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2120
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2121
    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2123
    :catch_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sprint/ms/smf/internal/push/FcmRegisterService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2124
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2125
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2126
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    const/4 p0, 0x0

    .line 2129
    invoke-static {p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 2132
    :cond_6
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "internal_error"

    invoke-virtual {p0, v3, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 2109
    :cond_7
    :goto_1
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v0, "component_missing_intent_filter"

    invoke-virtual {p0, v4, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 2097
    :cond_8
    :goto_2
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v0, 0x3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, v5

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    .line 2098
    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2097
    invoke-static {p1, p2, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Landroid/content/Context;Landroid/os/Message;)V
    .locals 3

    .line 550
    iget v0, p1, Landroid/os/Message;->what:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 552
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 556
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 v0, 0x9

    const-string v2, "invalid_request_category"

    invoke-virtual {p0, v0, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v2, "smf_transaction_id"

    .line 562
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 564
    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V

    return-void

    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 597
    new-instance p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 v0, 0xa

    const-string v2, "invalid_transaction_id"

    invoke-virtual {p0, v0, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 592
    :pswitch_0
    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/ServiceHandler;->b(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V

    return-void

    .line 587
    :pswitch_1
    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/ServiceHandler;->c(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V

    return-void

    .line 582
    :pswitch_2
    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/ServiceHandler;->d(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V

    return-void

    .line 575
    :pswitch_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0xb

    const-string v2, "api_level"

    .line 576
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    invoke-static {p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 570
    :pswitch_4
    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/ServiceHandler;->e(Landroid/content/Context;Landroid/os/Messenger;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g(Landroid/content/Context;Landroid/os/Message;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "UTF-8"

    .line 609
    iget v3, v0, Landroid/os/Message;->what:I

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 611
    iget-object v5, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v6, 0x9

    const/4 v7, 0x1

    if-eq v3, v7, :cond_0

    .line 615
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "invalid_request_category"

    invoke-virtual {v0, v6, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 619
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->j()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smf_oauth_client_id"

    .line 625
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 626
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v10, "smf_oauth_client_secret"

    .line 627
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 628
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 630
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x3

    if-nez v12, :cond_19

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v0, "smf_uid"

    .line 639
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 640
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "smf_sdk_api_level"

    .line 641
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 642
    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "smf_use_ota"

    .line 646
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    const/4 v6, 0x0

    if-eqz v15, :cond_4

    .line 647
    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->e(Landroid/content/Context;I)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->d(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 648
    :cond_2
    invoke-virtual {v4, v14, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 650
    :cond_3
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    const-string v10, "client_id="

    .line 654
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&client_secret="

    .line 655
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&app_identifier="

    .line 656
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&fingerprints="

    .line 657
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 663
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-static {v1, v9}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 664
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    const/4 v0, -0x1

    const-string v9, "smf_transaction_id"

    .line 670
    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_9

    if-eq v9, v7, :cond_6

    .line 794
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/16 v1, 0xa

    const-string v2, "invalid_transaction_id"

    invoke-virtual {v0, v1, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "/oauth2/revoke"

    .line 673
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "smf_oauth_token"

    .line 675
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 676
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 677
    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {v1, v13, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 680
    :cond_7
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 682
    invoke-static {v1, v10}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v0

    if-nez v0, :cond_8

    .line 684
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "invalid_token"

    invoke-virtual {v0, v7, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_8
    :try_start_1
    const-string v10, "&token="

    .line 689
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getTokenKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 695
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 696
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_9
    const-string v0, "/oauth2/token"

    .line 704
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "smf_oauth_grant_type"

    .line 706
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 707
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 708
    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {v1, v13, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_a
    :try_start_2
    const-string v0, "&grant_type="

    .line 713
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 719
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    invoke-static {v1, v11}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 720
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_b
    :goto_1
    const-string v0, "authorization_code"

    .line 725
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "smf_oauth_code"

    .line 726
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 727
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 728
    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {v1, v13, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 731
    :cond_c
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :try_start_3
    const-string v0, "&code="

    .line 734
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    .line 740
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 741
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_d
    const-string v0, "refresh_token"

    .line 745
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "smf_oauth_refresh_token"

    .line 746
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 747
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 748
    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-virtual {v1, v13, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 751
    :cond_e
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :try_start_4
    const-string v0, "&refresh_token="

    .line 754
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    .line 760
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 761
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_f
    const-string v0, "password"

    .line 765
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "smf_oauth_username"

    .line 766
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "smf_oauth_password"

    .line 767
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 768
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_2

    .line 773
    :cond_10
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :try_start_5
    const-string v0, "&username="

    .line 777
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&password="

    .line 778
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 784
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v1, v10}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 785
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 769
    :cond_11
    :goto_2
    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_3

    :cond_12
    move-object v0, v11

    :goto_3
    invoke-virtual {v1, v13, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    .line 770
    invoke-virtual {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 799
    :cond_13
    :goto_4
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 800
    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 804
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 806
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    :try_start_6
    const-string v12, "&"

    .line 811
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    .line 817
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    invoke-static {v1, v11}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 818
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 824
    :cond_15
    new-instance v0, Lcom/sprint/ms/smf/internal/b/a;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sprint/ms/smf/internal/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 825
    invoke-virtual {v0, v1, v2}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    sget-object v1, Lcom/sprint/ms/smf/internal/b/a;->a:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 826
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-spr-date"

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string v1, "POST"

    .line 827
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 828
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 2583
    iput-boolean v6, v0, Lcom/sprint/ms/smf/internal/b/a;->f:Z

    .line 830
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/b/a;->e()Lcom/sprint/ms/smf/internal/b/b;

    move-result-object v0

    if-nez v0, :cond_16

    .line 834
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "connectivity_failure"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 838
    :cond_16
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/b/b;->a()Z

    move-result v1

    if-nez v1, :cond_17

    .line 839
    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/internal/b/b;)V

    return-void

    :cond_17
    if-ne v9, v7, :cond_18

    const/4 v0, 0x0

    .line 846
    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 3041
    :cond_18
    iget-object v0, v0, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 848
    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 633
    :cond_19
    :goto_6
    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_7

    :cond_1a
    move-object v0, v10

    :goto_7
    invoke-virtual {v1, v13, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    .line 634
    invoke-virtual {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sprint/ms/smf/ServiceHandler;
    .locals 4

    const-class v0, Lcom/sprint/ms/smf/ServiceHandler;

    monitor-enter v0

    .line 277
    :try_start_0
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 279
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 282
    monitor-exit v0

    return-object p0

    .line 285
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sprint/ms/smf/ServiceHandler;->F:Lcom/sprint/ms/smf/ServiceHandler;

    if-nez v1, :cond_2

    .line 286
    new-instance v1, Lcom/sprint/ms/smf/ServiceHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sprint/ms/smf/ServiceHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprint/ms/smf/ServiceHandler;->F:Lcom/sprint/ms/smf/ServiceHandler;

    .line 289
    :cond_2
    sget-object p0, Lcom/sprint/ms/smf/ServiceHandler;->F:Lcom/sprint/ms/smf/ServiceHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static h(Landroid/content/Context;Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "{deviceId}"

    .line 853
    iget v3, v0, Landroid/os/Message;->what:I

    .line 854
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 855
    iget-object v5, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v6, 0x9

    const/4 v7, 0x3

    if-eq v3, v7, :cond_0

    .line 859
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "invalid_request_category"

    invoke-virtual {v0, v6, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    const-string v0, "smf_request_method"

    .line 863
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v8, "smf_api_endpoint"

    .line 864
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "smf_oauth_token"

    .line 865
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 866
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v11, "smf_uid"

    .line 868
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "smf_uid"

    .line 869
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v12, "smf_sdk_api_level"

    .line 872
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "smf_sdk_api_level"

    .line 873
    invoke-virtual {v4, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 876
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "mdn"

    const-string v15, "imei"

    if-nez v13, :cond_16

    const-string v13, "{"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 4019
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v13

    .line 4021
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 4022
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object v3

    .line 4023
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 4024
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->i()Ljava/lang/String;

    move-result-object v3

    .line 4025
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 4029
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 4026
    :cond_1
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    .line 4027
    invoke-virtual {v1, v7, v15}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    .line 4032
    :cond_2
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    :goto_0
    const-string v2, "{mdn}"

    .line 4036
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4037
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 4038
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "{mdn}"

    .line 4042
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 4039
    :cond_4
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    .line 4040
    invoke-virtual {v1, v7, v14}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_5
    :goto_1
    const-string v2, "{msid}"

    .line 4046
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4047
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 4048
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "{msid}"

    .line 4052
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 4049
    :cond_6
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v2, "msid"

    .line 4050
    invoke-virtual {v1, v7, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_7
    :goto_2
    const-string v2, "{nai}"

    .line 4056
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4057
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 4058
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "{nai}"

    .line 4062
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 4059
    :cond_8
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v2, "cdma_nai"

    .line 4060
    invoke-virtual {v1, v7, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_9
    :goto_3
    const-string v2, "{euimid}"

    .line 4066
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4067
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->d()Ljava/lang/String;

    move-result-object v2

    .line 4068
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "{euimid}"

    .line 4072
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 4069
    :cond_a
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v2, "euimid"

    .line 4070
    invoke-virtual {v1, v7, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_b
    :goto_4
    const-string v2, "{iccid}"

    .line 4076
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4077
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->h()Ljava/lang/String;

    move-result-object v2

    .line 4078
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "{iccid}"

    .line 4082
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 4079
    :cond_c
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v2, "iccid"

    .line 4080
    invoke-virtual {v1, v7, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_d
    :goto_5
    const-string v2, "{imei}"

    .line 4086
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4087
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 4088
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "{imei}"

    .line 4092
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 4089
    :cond_e
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    .line 4090
    invoke-virtual {v1, v7, v15}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_f
    :goto_6
    const-string v2, "{lte_imsi}"

    .line 4096
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4097
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->j()Ljava/lang/String;

    move-result-object v2

    .line 4098
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "{lte_imsi}"

    .line 4102
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 4099
    :cond_10
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v2, "imsi"

    .line 4100
    invoke-virtual {v1, v7, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_11
    :goto_7
    const-string v2, "{meid}"

    .line 4106
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4107
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object v2

    .line 4108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "{meid}"

    .line 4112
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 4109
    :cond_12
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v2, "meid"

    .line 4110
    invoke-virtual {v1, v7, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0

    :cond_13
    :goto_8
    const-string v2, "{msisdn}"

    .line 4116
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4117
    invoke-virtual {v13}, Lcom/sprint/ms/smf/internal/c/b;->l()Ljava/lang/String;

    move-result-object v2

    .line 4118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "{msisdn}"

    .line 4122
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_9

    .line 4119
    :cond_14
    new-instance v0, Lcom/sprint/ms/smf/exceptions/MissingParameterException;

    new-instance v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v2, "msisdn"

    .line 4120
    invoke-virtual {v1, v7, v2}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/exceptions/MissingParameterException;-><init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V

    throw v0
    :try_end_0
    .catch Lcom/sprint/ms/smf/exceptions/MissingParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 880
    invoke-virtual {v0}, Lcom/sprint/ms/smf/exceptions/BaseException;->getErrorResponse()Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    move-result-object v1

    if-nez v1, :cond_15

    .line 882
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "missing_parameter"

    invoke-virtual {v0, v7, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 885
    :cond_15
    invoke-virtual {v0}, Lcom/sprint/ms/smf/exceptions/BaseException;->getErrorResponse()Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 891
    :cond_16
    :goto_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 893
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "missing_parameter"

    invoke-virtual {v0, v7, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 897
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v2

    .line 899
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v13, "smf_use_authentication_token"

    .line 901
    invoke-virtual {v4, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    const-string v6, "smf_use_authentication_token_req"

    const/4 v7, 0x0

    if-nez v16, :cond_19

    .line 902
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_18

    goto :goto_a

    :cond_18
    move-object/from16 v17, v9

    goto :goto_d

    .line 903
    :cond_19
    :goto_a
    invoke-virtual {v4, v13, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 904
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v16, :cond_1b

    if-eqz v17, :cond_1a

    goto :goto_b

    :cond_1a
    move-object/from16 v17, v9

    goto :goto_c

    .line 907
    :cond_1b
    :goto_b
    invoke-static/range {p0 .. p0}, Lcom/sprint/ms/smf/internal/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v17, :cond_1c

    .line 908
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 909
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "authenticationToken"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_1c
    move-object/from16 v17, v9

    const-string v9, "authenticationToken"

    .line 913
    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :goto_c
    invoke-virtual {v4, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_d
    const-string v6, "smf_use_cdma_mdn"

    .line 918
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const-string v9, "smf_use_cdma_mdn_req"

    if-nez v7, :cond_1d

    .line 919
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    :cond_1d
    const/4 v7, 0x0

    .line 920
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 921
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v13, :cond_1e

    if-eqz v18, :cond_20

    .line 924
    :cond_1e
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz v18, :cond_1f

    .line 925
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 926
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v14}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 930
    :cond_1f
    invoke-virtual {v3, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_20
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_21
    const-string v6, "smf_use_cdma_msid"

    .line 935
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const-string v9, "smf_use_cdma_msid_req"

    if-nez v7, :cond_22

    .line 936
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    :cond_22
    const/4 v7, 0x0

    .line 937
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 938
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v13, :cond_23

    if-eqz v14, :cond_25

    .line 940
    :cond_23
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v14, :cond_24

    .line 942
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 943
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "msid"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_24
    const-string v13, "msid"

    .line 947
    invoke-virtual {v3, v13, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_25
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_26
    const-string v6, "smf_use_cdma_nai"

    .line 952
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, "smf_use_cdma_nai_req"

    .line 953
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    :cond_27
    const/4 v7, 0x0

    .line 954
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v13, "smf_use_cdma_nai_req"

    .line 955
    invoke-virtual {v4, v13, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v9, :cond_28

    if-eqz v13, :cond_2a

    .line 958
    :cond_28
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->c()Ljava/lang/String;

    move-result-object v7

    if-eqz v13, :cond_29

    .line 960
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 961
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "cdma_nai"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_29
    const-string v9, "cdma_nai"

    .line 965
    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_2a
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "smf_use_cdma_nai_req"

    .line 968
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2b
    const-string v6, "smf_use_euimid"

    .line 970
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2c

    const-string v6, "smf_use_euimid_req"

    .line 971
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    :cond_2c
    const-string v6, "smf_use_euimid"

    const/4 v7, 0x0

    .line 972
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "smf_use_euimid_req"

    .line 973
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v6, :cond_2d

    if-eqz v9, :cond_2f

    .line 975
    :cond_2d
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_2e

    .line 977
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 978
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "euimid"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_2e
    const-string v7, "euimid"

    .line 982
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string v6, "smf_use_euimid"

    .line 984
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "smf_use_euimid_req"

    .line 985
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_30
    const-string v6, "smf_use_iccid"

    .line 987
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    const-string v6, "smf_use_iccid_req"

    .line 988
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    :cond_31
    const-string v6, "smf_use_iccid"

    const/4 v7, 0x0

    .line 989
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "smf_use_iccid_req"

    .line 990
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v6, :cond_32

    if-eqz v9, :cond_34

    .line 992
    :cond_32
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->h()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_33

    .line 994
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 995
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "iccid"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_33
    const-string v7, "iccid"

    .line 999
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const-string v6, "smf_use_iccid"

    .line 1001
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "smf_use_iccid_req"

    .line 1002
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_35
    const-string v6, "smf_use_imei"

    .line 1004
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_36

    const-string v6, "smf_use_imei_req"

    .line 1005
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    :cond_36
    const-string v6, "smf_use_imei"

    const/4 v7, 0x0

    .line 1006
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "smf_use_imei_req"

    .line 1007
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v6, :cond_37

    if-eqz v9, :cond_39

    .line 1009
    :cond_37
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->i()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_38

    .line 1011
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1012
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v15}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1016
    :cond_38
    invoke-virtual {v3, v15, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    const-string v6, "smf_use_imei"

    .line 1018
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "smf_use_imei_req"

    .line 1019
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3a
    const-string v6, "smf_use_lte_imsi"

    .line 1021
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "smf_use_lte_imsi_req"

    .line 1022
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    :cond_3b
    const-string v6, "smf_use_lte_imsi"

    const/4 v7, 0x0

    .line 1023
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "smf_use_lte_imsi_req"

    .line 1024
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v6, :cond_3c

    if-eqz v9, :cond_3e

    .line 1026
    :cond_3c
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->j()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_3d

    .line 1028
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1029
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "imsi"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_3d
    const-string v7, "imsi"

    .line 1033
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    const-string v6, "smf_use_lte_imsi"

    .line 1035
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "smf_use_lte_imsi_req"

    .line 1036
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3f
    const-string v6, "smf_use_meid"

    .line 1038
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    const-string v6, "smf_use_meid_req"

    .line 1039
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    :cond_40
    const-string v6, "smf_use_meid"

    const/4 v7, 0x0

    .line 1040
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "smf_use_meid_req"

    .line 1041
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v6, :cond_41

    if-eqz v9, :cond_43

    .line 1043
    :cond_41
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_42

    .line 1045
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1046
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "meid"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_42
    const-string v7, "meid"

    .line 1050
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    const-string v6, "smf_use_meid"

    .line 1052
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "smf_use_meid_req"

    .line 1053
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_44
    const-string v6, "smf_use_msisdn"

    .line 1055
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_45

    const-string v6, "smf_use_msisdn_req"

    .line 1056
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    :cond_45
    const-string v6, "smf_use_msisdn"

    const/4 v7, 0x0

    .line 1057
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "smf_use_msisdn_req"

    .line 1058
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v6, :cond_46

    if-eqz v9, :cond_48

    .line 1060
    :cond_46
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->l()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_47

    .line 1062
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 1063
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "msisdn"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_47
    const-string v7, "msisdn"

    .line 1067
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    const-string v6, "smf_use_msisdn"

    .line 1069
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "smf_use_msisdn_req"

    .line 1070
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_49
    const-string v6, "smf_use_impu"

    .line 1073
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const-string v6, "smf_use_impu"

    const/4 v7, 0x0

    .line 1074
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1076
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->n()Ljava/lang/String;

    move-result-object v6

    .line 1078
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 1079
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "impu"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_4a
    const-string v7, "impu"

    .line 1083
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    const-string v6, "smf_use_impu"

    .line 1085
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4c
    const-string v6, "smf_use_impi"

    .line 1088
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "smf_use_impi"

    const/4 v7, 0x0

    .line 1089
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1091
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->m()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 1094
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "impi"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_4d
    const-string v6, "impi"

    .line 1098
    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    const-string v2, "smf_use_impi"

    .line 1100
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1103
    :cond_4f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    if-gez v0, :cond_50

    goto/16 :goto_19

    .line 1110
    :cond_50
    invoke-static/range {p0 .. p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v2

    .line 1111
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->j()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    if-lt v12, v7, :cond_51

    .line 1113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    .line 1115
    :cond_51
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->k()Ljava/lang/String;

    move-result-object v2

    const-string v7, "/quv"

    invoke-virtual {v8, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1117
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1119
    invoke-static {v1, v10}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v6

    if-nez v6, :cond_52

    .line 1122
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "invalid_token"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_52
    const-string v7, "smf_use_ota"

    .line 1126
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1127
    invoke-static {v1, v11}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_54

    invoke-static {v1, v11}, Lcom/sprint/ms/smf/internal/c/h;->e(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "https://deviceservices.sprint.com/auth/access_ota"

    invoke-virtual {v6, v7}, Lcom/sprint/ms/smf/oauth/OAuthToken;->hasScope(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    goto :goto_f

    :cond_53
    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_10

    :cond_54
    :goto_f
    const-string v7, "smf_use_ota"

    const/4 v8, 0x0

    .line 1128
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :goto_10
    const-string v9, "smf_use_ota"

    .line 1130
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_11

    :cond_55
    const/4 v8, 0x0

    move v7, v8

    .line 1133
    :goto_11
    new-instance v9, Lcom/sprint/ms/smf/internal/b/a;

    invoke-direct {v9, v1, v2}, Lcom/sprint/ms/smf/internal/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4583
    iput-boolean v7, v9, Lcom/sprint/ms/smf/internal/b/a;->f:Z

    .line 1134
    sget-object v2, Lcom/sprint/ms/smf/internal/b/a;->a:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 1135
    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "x-spr-date"

    invoke-virtual {v9, v7, v2}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    if-eqz v0, :cond_5a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_58

    const/4 v2, 0x3

    if-eq v0, v2, :cond_57

    const/4 v0, 0x4

    if-lt v12, v0, :cond_56

    const-string v0, "PUT"

    .line 1153
    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto :goto_12

    :cond_56
    const-string v0, "POST"

    .line 1155
    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto :goto_12

    :cond_57
    const-string v0, "DELETE"

    .line 1148
    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto :goto_12

    :cond_58
    const/4 v0, 0x4

    if-lt v12, v0, :cond_59

    const-string v0, "POST"

    .line 1142
    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto :goto_12

    :cond_59
    const-string v0, "PUT"

    .line 1144
    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto :goto_12

    :cond_5a
    const-string v0, "GET"

    .line 1138
    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    :goto_12
    const-string v0, "smf_request_body"

    .line 1160
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "smf_request_body_type"

    .line 1161
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    goto :goto_13

    :cond_5b
    move v0, v8

    :goto_13
    if-eqz v0, :cond_5c

    const-string v0, "smf_request_body_type"

    .line 1165
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v9, v1, v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string v0, "smf_request_body"

    .line 1166
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1168
    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto/16 :goto_18

    .line 5280
    :cond_5c
    iget-object v0, v9, Lcom/sprint/ms/smf/internal/b/a;->c:Ljava/lang/String;

    const-string v2, "POST"

    .line 1170
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 6280
    iget-object v0, v9, Lcom/sprint/ms/smf/internal/b/a;->c:Ljava/lang/String;

    const-string v2, "PUT"

    .line 1171
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_15

    .line 1243
    :cond_5d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1244
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1245
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1247
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1248
    invoke-static {v2}, Lcom/sprint/ms/smf/ServiceHandler;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 1252
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 1258
    invoke-virtual {v9, v2, v3}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto :goto_14

    :cond_5f
    :goto_15
    const-string v0, "smf_request_body_type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1174
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Type"

    .line 1176
    invoke-virtual {v9, v2, v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string v2, "application/json"

    .line 1178
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1185
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1186
    invoke-virtual {v11, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1187
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1189
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v12, 0x1

    :cond_60
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1190
    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_60

    .line 1194
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_60

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_60

    if-eqz v2, :cond_61

    .line 1202
    :try_start_1
    invoke-virtual {v10, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_16

    :catch_1
    move-exception v0

    move-object v13, v0

    .line 1208
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1209
    invoke-static {v13}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_61
    if-eqz v12, :cond_62

    move v12, v8

    goto :goto_17

    :cond_62
    const-string v14, "&"

    .line 1217
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    :try_start_2
    const-string v14, "UTF-8"

    .line 1221
    invoke-static {v0, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UTF-8"

    invoke-static {v13, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    .line 1227
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    invoke-static {v1, v13}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v13

    if-eqz v13, :cond_60

    .line 1228
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_63
    if-eqz v2, :cond_64

    .line 1235
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_64

    .line 1236
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    goto :goto_18

    :cond_64
    if-nez v2, :cond_65

    .line 1237
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1238
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 1261
    :cond_65
    :goto_18
    invoke-static {v6, v9}, Lcom/sprint/ms/smf/oauth/a;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;Lcom/sprint/ms/smf/internal/b/a;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1264
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "invalid_token"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_66
    const-string v1, "Authorization"

    .line 1267
    invoke-virtual {v9, v1, v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 1268
    invoke-virtual {v9}, Lcom/sprint/ms/smf/internal/b/a;->e()Lcom/sprint/ms/smf/internal/b/b;

    move-result-object v0

    if-nez v0, :cond_67

    .line 1271
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    const-string v1, "connectivity_failure"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1275
    :cond_67
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/b/b;->a()Z

    move-result v1

    if-nez v1, :cond_68

    .line 1277
    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Lcom/sprint/ms/smf/internal/b/b;)V

    return-void

    .line 7041
    :cond_68
    iget-object v1, v0, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 1281
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    const/4 v1, 0x0

    .line 1282
    invoke-static {v1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 7107
    iput-object v1, v0, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 8041
    :cond_69
    iget-object v0, v0, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 1286
    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 1105
    :cond_6a
    :goto_19
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    move-object/from16 v1, v17

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public sendMessage(Landroid/os/Message;)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler;->C:Lcom/sprint/ms/smf/ServiceHandler$a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
