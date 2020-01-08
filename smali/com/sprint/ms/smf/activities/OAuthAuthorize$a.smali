.class final Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/activities/OAuthAuthorize;
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
.field final synthetic a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;


# direct methods
.method private constructor <init>(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/ms/smf/activities/OAuthAuthorize;B)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;-><init>(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    .line 150
    iget-object v1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v1}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->j()Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v3}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Lcom/sprint/ms/smf/internal/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprint/ms/smf/internal/c/g;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 154
    iget-object v3, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 155
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_3

    .line 164
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    const/4 v5, 0x6

    if-eq v3, v5, :cond_1

    const/16 v5, 0xc

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v3}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "000000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v3}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Lcom/sprint/ms/smf/internal/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprint/ms/smf/internal/c/g;->g()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return-object v4

    .line 187
    :cond_3
    :goto_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth2/authorize?client_id="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    .line 189
    invoke-static {v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->b(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&redirect_uri="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    .line 190
    invoke-static {v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->c(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&response_type="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    .line 191
    invoke-static {v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->d(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app_identifier="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    .line 192
    invoke-static {v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->e(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&fingerprints="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    .line 194
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v2}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->e(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&brand="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 206
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 207
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_5
    return-object v4
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 147
    check-cast p1, Ljava/lang/String;

    .line 1217
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    const/16 p1, 0x68

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;ILandroid/content/Intent;)V

    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->g(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1226
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-Sprint-DeviceId"

    .line 1229
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->g(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 1232
    :cond_1
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->g(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
