.class public Lcom/sprint/ms/smf/ServicesHelper;
.super Lcom/sprint/ms/smf/a;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static g:Lcom/sprint/ms/smf/ServicesHelper;


# instance fields
.field private final f:Lcom/sprint/ms/smf/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/ServicesHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/ServicesHelper;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/ms/smf/a;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sprint/ms/smf/c;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/c;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/ServicesHelper;->f:Lcom/sprint/ms/smf/c;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sprint/ms/smf/ServicesHelper;
    .locals 2

    const-class v0, Lcom/sprint/ms/smf/ServicesHelper;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/sprint/ms/smf/ServicesHelper;->g:Lcom/sprint/ms/smf/ServicesHelper;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/sprint/ms/smf/ServicesHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sprint/ms/smf/ServicesHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprint/ms/smf/ServicesHelper;->g:Lcom/sprint/ms/smf/ServicesHelper;

    .line 164
    :cond_0
    sget-object p0, Lcom/sprint/ms/smf/ServicesHelper;->g:Lcom/sprint/ms/smf/ServicesHelper;
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
.method public requestManageWifiCalling(Lcom/sprint/ms/smf/oauth/OAuthToken;Landroid/app/Activity;I)Z
    .locals 2

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.ms.smf.action.MANAGE_WIFI_CALLING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/sprint/ms/smf/a;->a:Lcom/sprint/ms/smf/e;

    .line 3203
    iget-object p0, p0, Lcom/sprint/ms/smf/e;->a:Landroid/content/Context;

    .line 341
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p1}, Lcom/sprint/ms/smf/oauth/OAuthToken;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "smf_oauth_token"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    :cond_1
    :try_start_0
    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
