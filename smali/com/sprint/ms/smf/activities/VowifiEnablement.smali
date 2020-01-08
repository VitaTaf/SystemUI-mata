.class public Lcom/sprint/ms/smf/activities/VowifiEnablement;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/activities/VowifiEnablement$b;,
        Lcom/sprint/ms/smf/activities/VowifiEnablement$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field private g:Landroid/app/FragmentManager;

.field private h:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

.field private i:Lcom/sprint/ms/smf/activities/AddressLoadingFragment;

.field private j:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

.field private k:Lcom/sprint/ms/smf/c;

.field private l:Lcom/sprint/ms/smf/oauth/OAuthToken;

.field private m:I

.field private n:I

.field private volatile o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x3

    .line 66
    iput v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->m:I

    const/16 v0, -0x258

    .line 69
    iput v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->o:I

    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->n:I

    return p1
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/AddressEntryFragment;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->j:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Lcom/sprint/ms/smf/activities/AddressLoadingFragment;)Lcom/sprint/ms/smf/activities/AddressLoadingFragment;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->i:Lcom/sprint/ms/smf/activities/AddressLoadingFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;)Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->h:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 186
    new-instance v0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;-><init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(IIZ)V
    .locals 2

    const/high16 v0, -0x80000000

    if-le p2, v0, :cond_0

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "smf_vowifi_status"

    .line 230
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 237
    sget p1, Lcom/sprint/ms/smf/R$anim;->sprint_smf_stay:I

    sget p2, Lcom/sprint/ms/smf/R$anim;->sprint_smf_slide_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Lcom/sprint/ms/smf/oauth/OAuthToken;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/sprint/ms/smf/oauth/OAuthToken;)Z
    .locals 4

    .line 335
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/smf/1.0/validate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Lcom/sprint/ms/smf/internal/b/a;

    invoke-direct {v1, p0, v0}, Lcom/sprint/ms/smf/internal/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/sprint/ms/smf/internal/b/a;->a:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 338
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x-spr-date"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string v0, "GET"

    .line 339
    invoke-virtual {v1, v0}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string v0, "scope"

    const-string v2, "access_deg_info"

    .line 341
    invoke-virtual {v1, v0, v2}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 343
    invoke-static {p1, v1}, Lcom/sprint/ms/smf/oauth/a;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;Lcom/sprint/ms/smf/internal/b/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-virtual {v1, v0, p1}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 344
    invoke-virtual {v1}, Lcom/sprint/ms/smf/internal/b/a;->e()Lcom/sprint/ms/smf/internal/b/b;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcom/sprint/ms/smf/internal/b/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3041
    :cond_1
    iget-object p1, p1, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 357
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-static {v1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "results"

    .line 363
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    move v1, v0

    move v2, v1

    .line 364
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 365
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 375
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_4
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 259
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v2, :cond_2

    .line 264
    iget-object p1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, p1}, Lcom/sprint/ms/smf/internal/c/h;->f(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->o:I

    return p0
.end method

.method static synthetic b(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->o:I

    return p1
.end method

.method static synthetic b(Lcom/sprint/ms/smf/activities/VowifiEnablement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 1

    .line 276
    new-instance v0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;-><init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->m:I

    return p1
.end method

.method private c()V
    .locals 1

    .line 303
    new-instance v0, Lcom/sprint/ms/smf/activities/VowifiEnablement$3;

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement$3;-><init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b()V

    return-void
.end method

.method static synthetic d(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/activities/AddressEntryFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->j:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    return-object p0
.end method

.method static synthetic d(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0, v0, p1, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IIZ)V

    return-void
.end method

.method static synthetic e(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Landroid/app/FragmentManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->g:Landroid/app/FragmentManager;

    return-object p0
.end method

.method static synthetic f(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/activities/AddressLoadingFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->i:Lcom/sprint/ms/smf/activities/AddressLoadingFragment;

    return-object p0
.end method

.method static synthetic g(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->h:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

    return-object p0
.end method

.method static synthetic h(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/oauth/OAuthToken;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->l:Lcom/sprint/ms/smf/oauth/OAuthToken;

    return-object p0
.end method

.method static synthetic i(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/c;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->k:Lcom/sprint/ms/smf/c;

    return-object p0
.end method

.method static synthetic j(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->n:I

    return p0
.end method

.method static synthetic k(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a()V

    return-void
.end method

.method static synthetic l(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->m:I

    return p0
.end method


# virtual methods
.method final a(IZ)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 163
    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IIZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 129
    iget v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->j:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    if-eqz v0, :cond_1

    .line 2198
    iget-object v2, v0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2200
    iget-object v0, v0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 133
    :cond_1
    iget v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->n:I

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->h:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x65

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget p1, Lcom/sprint/ms/smf/R$layout;->activity_sprint_smf_content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "smf_oauth_token"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 81
    invoke-static {p0, v1}, Lcom/sprint/ms/smf/oauth/OAuthToken;->fromJsonString(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->l:Lcom/sprint/ms/smf/oauth/OAuthToken;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->l:Lcom/sprint/ms/smf/oauth/OAuthToken;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x67

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IZ)V

    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->g:Landroid/app/FragmentManager;

    .line 98
    invoke-static {p0}, Lcom/sprint/ms/smf/c;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/c;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->k:Lcom/sprint/ms/smf/c;

    .line 102
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object p1

    const-string v1, "VoWiFi"

    .line 103
    invoke-virtual {p1, v1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    new-instance v3, Lcom/sprint/ms/smf/internal/a/b;

    invoke-direct {v3, p0}, Lcom/sprint/ms/smf/internal/a/b;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v3, v2}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "APPLICATION"

    .line 107
    invoke-virtual {v3, v2, v1}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    const-string v3, "Status"

    .line 109
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "AddrStatus"

    .line 110
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "TC_Status"

    .line 111
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v3, :cond_2

    if-ne v4, v2, :cond_2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    const-string v1, "deg"

    const-string v3, "cplus_has_displayed"

    .line 1423
    invoke-virtual {p1, v1, v3}, Lcom/sprint/ms/smf/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->c()V

    goto :goto_2

    .line 118
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b()V

    .line 123
    :goto_2
    sget p1, Lcom/sprint/ms/smf/R$anim;->sprint_smf_slide_in:I

    sget v1, Lcom/sprint/ms/smf/R$anim;->sprint_smf_stay:I

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 124
    new-instance p1, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;

    invoke-direct {p1, p0, v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement$a;-><init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;B)V

    new-array p0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .line 151
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/d;->b(Z)V

    .line 153
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a()V

    return-void
.end method

.method public onSkipClicked()V
    .locals 2

    .line 144
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/d;->b(Z)V

    .line 146
    invoke-direct {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a()V

    return-void
.end method
