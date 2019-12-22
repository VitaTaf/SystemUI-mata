.class public Lcom/sprint/ms/smf/c;
.super Lcom/sprint/ms/smf/a;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/sprint/ms/smf/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/c;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/sprint/ms/smf/c;
    .locals 2

    const-class v0, Lcom/sprint/ms/smf/c;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/sprint/ms/smf/c;->c:Lcom/sprint/ms/smf/c;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/sprint/ms/smf/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sprint/ms/smf/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprint/ms/smf/c;->c:Lcom/sprint/ms/smf/c;

    .line 52
    :cond_0
    sget-object p0, Lcom/sprint/ms/smf/c;->c:Lcom/sprint/ms/smf/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/sprint/ms/smf/oauth/OAuthToken;Z)I
    .locals 4

    const-string v0, "VoWiFi"

    .line 112
    invoke-virtual {p0, p1, v0, p2}, Lcom/sprint/ms/smf/c;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p1, -0x3

    if-nez p0, :cond_0

    return p1

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 119
    invoke-static {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->fromJsonObject(Lorg/json/JSONObject;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->getErrors()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    .line 121
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;

    .line 126
    iget p0, p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->code:I

    const/4 p2, 0x5

    if-ne p0, p2, :cond_3

    const/4 p0, -0x2

    return p0

    :cond_3
    const/4 p2, 0x6

    if-ne p0, p2, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/16 p2, 0xa

    if-ne p0, p2, :cond_5

    return v1

    :cond_5
    :goto_1
    return p1

    .line 139
    :cond_6
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "Status"

    .line 140
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "AddrStatus"

    .line 141
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "TC_Status"

    .line 142
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_7

    return v1

    :cond_7
    const/4 p1, 0x1

    if-ne v0, p1, :cond_9

    if-eq p0, p1, :cond_8

    goto :goto_2

    :cond_8
    return v2

    :catch_0
    :cond_9
    :goto_2
    return p1
.end method

.method public final a(Lcom/sprint/ms/smf/oauth/OAuthToken;ILandroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/sprint/ms/smf/a;->a:Lcom/sprint/ms/smf/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/e;->a(I)Landroid/os/Message;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "smf_transaction_id"

    .line 182
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/sprint/ms/smf/oauth/OAuthToken;->toJsonString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "smf_oauth_token"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 187
    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 188
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 191
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 192
    iget-object p0, p0, Lcom/sprint/ms/smf/a;->a:Lcom/sprint/ms/smf/e;

    invoke-virtual {p0, v0}, Lcom/sprint/ms/smf/e;->a(Landroid/os/Message;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "service_name"

    .line 81
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "force"

    .line 82
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p0, p1, p2, v0}, Lcom/sprint/ms/smf/c;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;ILandroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
