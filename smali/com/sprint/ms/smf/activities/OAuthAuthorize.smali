.class public Lcom/sprint/ms/smf/activities/OAuthAuthorize;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;,
        Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private e:Lcom/sprint/ms/smf/internal/c/g;

.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/activities/OAuthAuthorize;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Lcom/sprint/ms/smf/internal/c/g;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->e:Lcom/sprint/ms/smf/internal/c/g;

    return-object p0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 138
    :goto_0
    sget p1, Lcom/sprint/ms/smf/R$anim;->sprint_smf_stay:I

    sget p2, Lcom/sprint/ms/smf/R$anim;->sprint_smf_slide_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/OAuthAuthorize;ILandroid/content/Intent;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/sprint/ms/smf/activities/OAuthAuthorize;)Landroid/webkit/WebView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const/16 v0, 0x67

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(ILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x66

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0, v1, v0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(ILandroid/content/Intent;)V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->g:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-direct {p0, v1, v0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(ILandroid/content/Intent;)V

    return-void

    .line 85
    :cond_1
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/g;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/g;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->e:Lcom/sprint/ms/smf/internal/c/g;

    const-string v2, "smf_oauth_brand"

    .line 87
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->h:Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "smf_oauth_client_id"

    .line 89
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->i:Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "smf_oauth_redirect_uri"

    .line 91
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->j:Ljava/lang/String;

    const-string v2, "smf_oauth_response_type"

    .line 92
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->k:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f:Landroid/webkit/WebView;

    .line 101
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 103
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Lcom/sprint/ms/smf/internal/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->f:Landroid/webkit/WebView;

    new-instance v2, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;

    invoke-direct {v2, p0, p1}, Lcom/sprint/ms/smf/activities/OAuthAuthorize$OAuthWebViewClient;-><init>(Lcom/sprint/ms/smf/activities/OAuthAuthorize;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 106
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 108
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 112
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 118
    new-instance p1, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize$a;-><init>(Lcom/sprint/ms/smf/activities/OAuthAuthorize;B)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    sget p1, Lcom/sprint/ms/smf/R$anim;->sprint_smf_slide_in:I

    sget v0, Lcom/sprint/ms/smf/R$anim;->sprint_smf_stay:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 96
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sprint/ms/smf/activities/OAuthAuthorize;->a(ILandroid/content/Intent;)V

    return-void
.end method
