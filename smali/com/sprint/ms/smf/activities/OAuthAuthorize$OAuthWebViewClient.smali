.class public Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/activities/OAuthAuthorize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OAuthWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/sprint/ms/smf/activities/OAuthAuthorize;Landroid/os/Bundle;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 252
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "Success"

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "="

    const-string v1, " "

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 260
    array-length p2, p1

    if-le p2, v2, :cond_0

    .line 261
    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 262
    array-length p2, p1

    if-le p2, v2, :cond_0

    .line 266
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 267
    aget-object p1, p1, v2

    const-string v0, "smf_oauth_code"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;->b:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 270
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    const/16 p1, 0x64

    invoke-static {p0, p1, p2}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;ILandroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-string p2, "Failure"

    .line 273
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 275
    array-length p2, p1

    const/4 v1, 0x0

    if-le p2, v2, :cond_2

    .line 276
    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 277
    array-length p2, p1

    if-le p2, v2, :cond_2

    .line 278
    aget-object p1, p1, v2

    const-string p2, "access_denied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    const/16 p1, 0x67

    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;ILandroid/content/Intent;)V

    return-void

    .line 287
    :cond_2
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;->a:Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    const/16 p1, 0x65

    invoke-static {p0, p1, v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;ILandroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 246
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
