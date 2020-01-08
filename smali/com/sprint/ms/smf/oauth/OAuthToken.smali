.class public Lcom/sprint/ms/smf/oauth/OAuthToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/oauth/OAuthToken;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/oauth/OAuthToken;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->q:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->k:Landroid/content/Context;

    return-void
.end method

.method private a(J)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 0

    .line 280
    iput-wide p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->o:J

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->t:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/util/List;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sprint/ms/smf/oauth/OAuthToken;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private b(J)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 0

    .line 308
    iput-wide p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->p:J

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->s:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 1

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iput-object p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->l:Ljava/lang/String;

    return-object p0

    .line 367
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Token key cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->k:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sprint/ms/smf/internal/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->r:Ljava/lang/String;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 1

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iput-object p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->m:Ljava/lang/String;

    return-object p0

    .line 400
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Token type cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromJsonObject(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 71
    :cond_0
    :try_start_0
    new-instance v2, Lcom/sprint/ms/smf/oauth/OAuthToken;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;-><init>(Landroid/content/Context;)V

    const-string v3, "expires_in"

    .line 72
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sprint/ms/smf/oauth/OAuthToken;->a(J)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v3, "grant_type"

    .line 73
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;->setGrantType(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v3, "issued_at"

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sprint/ms/smf/oauth/OAuthToken;->b(J)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v3, "algorithm"

    .line 75
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v3, "access_token"

    .line 76
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;->c(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v3, "secret"

    .line 77
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;->d(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v3, "token_type"

    .line 78
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/ms/smf/oauth/OAuthToken;->e(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v3, "refresh_token"

    .line 79
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->a(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    const-string v0, "scope"

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 85
    invoke-direct {v2, p1}, Lcom/sprint/ms/smf/oauth/OAuthToken;->a(Ljava/util/List;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 94
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 95
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public static fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 2

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 120
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonObject(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 127
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 128
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method public static toJsonObject(Lcom/sprint/ms/smf/oauth/OAuthToken;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 424
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "algorithm"

    .line 425
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getTokenAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expires_in"

    .line 426
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getExpires()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "grant_type"

    .line 427
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getGrantType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "issued_at"

    .line 428
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getIssuedAt()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "secret"

    .line 429
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "access_token"

    .line 430
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getTokenKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token_type"

    .line 431
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getTokenType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "refresh_token"

    .line 432
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    invoke-virtual {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->getScopes()Ljava/util/List;

    move-result-object p0

    const-string v2, "scope"

    const-string v3, " "

    .line 435
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getExpires()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->o:J

    return-wide v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getIssuedAt()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->p:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->t:Ljava/lang/String;

    return-object p0
.end method

.method public getScopes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->q:Ljava/util/List;

    return-object p0
.end method

.method public getTokenAlgorithm()Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->s:Ljava/lang/String;

    return-object p0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->k:Landroid/content/Context;

    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->r:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->m:Ljava/lang/String;

    return-object p0
.end method

.method public hasScope(Ljava/lang/String;)Z
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/sprint/ms/smf/oauth/OAuthToken;->n:Ljava/lang/String;

    return-object p0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 0

    .line 454
    invoke-static {p0}, Lcom/sprint/ms/smf/oauth/OAuthToken;->toJsonObject(Lcom/sprint/ms/smf/oauth/OAuthToken;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
