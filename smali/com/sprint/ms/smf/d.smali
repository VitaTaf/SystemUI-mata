.class public Lcom/sprint/ms/smf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static S:Lcom/sprint/ms/smf/d;

.field private static final g:Ljava/lang/String;


# instance fields
.field private final T:Landroid/content/SharedPreferences;

.field final a:Landroid/content/Context;

.field final b:Landroid/content/SharedPreferences;

.field final c:Landroid/content/SharedPreferences;

.field final d:Landroid/content/SharedPreferences;

.field final e:Landroid/content/SharedPreferences;

.field final f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/d;->g:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sput-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "gcm_registration_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "gcm_reported_device_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "gcm_reported_device_mdn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "quv_context_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "deg_imsi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "deg_mdn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "deg_token"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "deg_token_issued"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    const-string v1, "deg_token_expires"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    sput-object v0, Lcom/sprint/ms/smf/d;->R:Ljava/util/List;

    const-string v1, "deg_service_response_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/sprint/ms/smf/d;->R:Ljava/util/List;

    const-string v1, "deg_service_issued_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 124
    sput-object v0, Lcom/sprint/ms/smf/d;->S:Lcom/sprint/ms/smf/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    .line 145
    iget-object p1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "deg"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/d;->b:Landroid/content/SharedPreferences;

    .line 146
    iget-object p1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    const-string v1, "private"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/d;->T:Landroid/content/SharedPreferences;

    .line 147
    iget-object p1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    const-string v1, "push"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/d;->c:Landroid/content/SharedPreferences;

    .line 148
    iget-object p1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    const-string v1, "smf"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/d;->d:Landroid/content/SharedPreferences;

    .line 149
    iget-object p1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    const-string v1, "con"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/d;->e:Landroid/content/SharedPreferences;

    .line 150
    iget-object p1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    const-string v1, "lockout"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/d;->f:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;
    .locals 1

    .line 128
    sget-object v0, Lcom/sprint/ms/smf/d;->S:Lcom/sprint/ms/smf/d;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/sprint/ms/smf/d;

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/ms/smf/d;->S:Lcom/sprint/ms/smf/d;

    .line 132
    :cond_0
    sget-object p0, Lcom/sprint/ms/smf/d;->S:Lcom/sprint/ms/smf/d;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    .line 576
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 578
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v0, -0x80000000

    if-eqz p2, :cond_0

    .line 595
    monitor-exit p0

    return v0

    .line 599
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 604
    :catch_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 608
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v0, -0x8000000000000000L

    if-eqz p2, :cond_0

    .line 611
    monitor-exit p0

    return-wide v0

    .line 615
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 620
    :catch_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static k(Ljava/lang/String;)Z
    .locals 3

    .line 667
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 671
    :cond_0
    sget-object v0, Lcom/sprint/ms/smf/d;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 672
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const-string v0, "deg"

    const-string v1, "deg_au_hostname"

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "https://degi.deg.spcsdns.net/DEGDROIDInterface"

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deg_service_response_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "deg"

    invoke-virtual {p0, v0, p1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(J)V
    .locals 1

    .line 505
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "push"

    const-string v0, "gcm_profile_checksum"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "deg"

    const-string v1, "deg_token_issued"

    .line 479
    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deg_token_expires"

    .line 480
    invoke-virtual {p0, v0, p1, p2}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 681
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 682
    monitor-exit p0

    return-void

    .line 686
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/sprint/ms/smf/d;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sprint/ms/smf/internal/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 694
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "lockout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "push"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string v2, "smf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "deg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v7

    goto :goto_0

    :sswitch_4
    const-string v2, "con"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "private"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v6

    :cond_3
    :goto_0
    if-eqz v1, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    goto :goto_1

    .line 716
    :cond_4
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 708
    :cond_6
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 704
    :cond_7
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->T:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 700
    :cond_8
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 696
    :cond_9
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_a

    .line 724
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 721
    :cond_a
    :try_start_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not find preferences for: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x12beda7d -> :sswitch_5
        0x18182 -> :sswitch_4
        0x18406 -> :sswitch_3
        0x1bd4c -> :sswitch_2
        0x34af1a -> :sswitch_1
        0x14305643 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Z)V
    .locals 2

    .line 484
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "push"

    const-string v1, "gcm_event_change"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)J
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deg_service_issued_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "deg"

    invoke-direct {p0, v0, p1}, Lcom/sprint/ms/smf/d;->e(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const-string v0, "deg"

    const-string v1, "deg_token"

    .line 296
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Z)V
    .locals 2

    .line 517
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "deg"

    const-string v1, "cplus_has_displayed"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 587
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()J
    .locals 2

    const-string v0, "deg"

    const-string v1, "deg_token_issued"

    .line 300
    invoke-direct {p0, v0, v1}, Lcom/sprint/ms/smf/d;->e(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    const/4 v1, -0x1

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "lockout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "push"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string v2, "smf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "deg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    goto :goto_0

    :sswitch_4
    const-string v2, "con"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "private"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v6

    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->f:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->e:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->c:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->T:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 633
    :cond_5
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->b:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 629
    :cond_6
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->d:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_1
    sget-object v1, Lcom/sprint/ms/smf/d;->Q:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p2}, Lcom/sprint/ms/smf/d;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 653
    :cond_7
    iget-object v1, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ""

    .line 657
    invoke-virtual {p0, p1, p2, v0}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    move-object v0, v1

    .line 663
    :cond_9
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12beda7d -> :sswitch_5
        0x18182 -> :sswitch_4
        0x18406 -> :sswitch_3
        0x1bd4c -> :sswitch_2
        0x34af1a -> :sswitch_1
        0x14305643 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deg"

    const-string v1, "deg_token"

    .line 475
    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()J
    .locals 2

    const-string v0, "deg"

    const-string v1, "deg_token_expires"

    .line 304
    invoke-direct {p0, v0, v1}, Lcom/sprint/ms/smf/d;->e(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_locale"

    .line 488
    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "gcm_app_version"

    const-string v2, "gcm_registration_id"

    const-string v3, "push"

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 494
    invoke-virtual {p0, v3, v2, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0, v3, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/d;->b(Landroid/content/Context;)I

    move-result v0

    .line 499
    invoke-virtual {p0, v3, v2, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_event_change"

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_locale"

    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_reported_device_id"

    .line 509
    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()J
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_profile_checksum"

    .line 316
    invoke-direct {p0, v0, v1}, Lcom/sprint/ms/smf/d;->e(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_reported_device_mdn"

    .line 513
    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    const-string v0, "push"

    const-string v1, "gcm_registration_id"

    .line 321
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "gcm_app_version"

    .line 329
    invoke-direct {p0, v0, v2}, Lcom/sprint/ms/smf/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 331
    iget-object p0, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sprint/ms/smf/d;->b(Landroid/content/Context;)I

    move-result p0

    if-eq v0, p0, :cond_1

    return-object v3

    :cond_1
    return-object v1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "push"

    const-string v1, "quv_context_id"

    .line 521
    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    const-string v0, "smf"

    const-string v1, "push_server_url"

    .line 346
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "https://deviceesb.sprint.com"

    :cond_0
    return-object p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    const-string v0, "private"

    const-string v1, "stored_key"

    .line 539
    invoke-virtual {p0, v0, v1, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    const-string v0, "smf"

    const-string v1, "server_url"

    .line 356
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "https://deviceservices.sprint.com"

    :cond_0
    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    const-string v0, "smf"

    const-string v1, "quv_path"

    .line 366
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/quv"

    :cond_0
    return-object p0
.end method

.method final l()Ljava/lang/String;
    .locals 2

    const-string v0, "con"

    const-string v1, "lock_package"

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final m()Lorg/json/JSONObject;
    .locals 2

    const-string v0, "con"

    const-string v1, "prev_proxy"

    .line 400
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 402
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method final n()Lorg/json/JSONObject;
    .locals 2

    const-string v0, "con"

    const-string v1, "lock_package_proxy"

    .line 410
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 412
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Z
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_reported_device_id"

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object p0, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q()Z
    .locals 2

    const-string v0, "push"

    const-string v1, "gcm_reported_device_mdn"

    .line 432
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    iget-object p0, p0, Lcom/sprint/ms/smf/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r()Z
    .locals 2

    .line 438
    iget-object p0, p0, Lcom/sprint/ms/smf/d;->T:Landroid/content/SharedPreferences;

    const-string v0, "stored_key"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 439
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final s()Z
    .locals 2

    const-string v0, "con"

    const-string v1, "lock_package"

    .line 443
    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
