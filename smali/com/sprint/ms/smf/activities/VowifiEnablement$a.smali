.class final Lcom/sprint/ms/smf/activities/VowifiEnablement$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/activities/VowifiEnablement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/activities/VowifiEnablement;


# direct methods
.method private constructor <init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;B)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;-><init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 7

    const-string v0, "?"

    .line 393
    iget-object v1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x68

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->h(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Lcom/sprint/ms/smf/oauth/OAuthToken;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    return-object v3

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->i(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/c;

    move-result-object v1

    iget-object v4, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v4}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->h(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "VoWiFi"

    invoke-virtual {v1, v4, v6, v5}, Lcom/sprint/ms/smf/c;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v4, 0x66

    if-nez v1, :cond_1

    .line 404
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0, v4}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    return-object v3

    .line 408
    :cond_1
    invoke-static {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 409
    invoke-static {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->fromJsonObject(Lorg/json/JSONObject;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    .line 411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 416
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;

    .line 417
    iget v0, v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->code:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 419
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    return-object v3

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 422
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    const/16 v0, 0x67

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    return-object v3

    :cond_5
    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 425
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    const/16 v0, 0x65

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    return-object v3

    .line 429
    :cond_6
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0, v4}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    return-object v3

    .line 412
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0, v4}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    return-object v3

    .line 434
    :cond_8
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    const-string v4, "Status"

    const/4 v5, -0x3

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->c(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    const-string v2, "AddrUpdate_URL"

    .line 436
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AddrUpdate_POST_Data"

    .line 437
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    return-object v3

    .line 444
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 445
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    :cond_b
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 458
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 459
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_c
    return-object v3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 387
    check-cast p1, Ljava/lang/String;

    .line 1469
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1471
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0, p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;Ljava/lang/String;)Ljava/lang/String;

    .line 1473
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->j(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1474
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1476
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    sget v1, Lcom/sprint/ms/smf/R$string;->sprint_smf_activity_error_loading:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1477
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IZ)V

    return-void

    .line 1481
    :cond_0
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->k(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    :cond_1
    return-void
.end method
