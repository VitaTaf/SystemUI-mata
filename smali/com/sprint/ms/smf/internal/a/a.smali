.class public Lcom/sprint/ms/smf/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/internal/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/sprint/ms/smf/internal/a/a;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sprint/ms/smf/internal/a/b;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 108
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    .line 113
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v4

    .line 114
    invoke-static/range {p0 .. p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v5

    .line 115
    new-instance v0, Lcom/sprint/ms/smf/internal/a/b;

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/internal/a/b;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v5}, Lcom/sprint/ms/smf/internal/c/b;->j()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v5}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v4, v2}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "version"

    const-string v11, "deg_mdn"

    const-string v12, "deg_imsi"

    const-string v13, "deg"

    if-nez v9, :cond_1

    if-nez p2, :cond_1

    .line 1267
    invoke-virtual {v4, v13, v12}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1272
    invoke-virtual {v4, v13, v11}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 131
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v7, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 133
    invoke-virtual {v0, v8}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "APPLICATION"

    const-string v9, "AppID"

    .line 134
    invoke-virtual {v0, v8, v2, v9}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "VERS"

    const-string v9, "validity"

    .line 137
    invoke-virtual {v0, v8, v3, v9}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    invoke-virtual {v0, v8, v3, v10}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    :try_start_0
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 141
    invoke-virtual {v4, v2}, Lcom/sprint/ms/smf/d;->b(Ljava/lang/String;)J

    move-result-wide v16

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v20, 0x3e8

    mul-long v14, v14, v20

    add-long v16, v16, v14

    cmp-long v9, v18, v16

    if-gez v9, :cond_2

    return-object v0

    :catch_0
    move-exception v0

    .line 152
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-static {v1, v9}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 153
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v8, v3

    .line 164
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lcom/sprint/ms/smf/internal/c/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v5}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object v9

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_6

    .line 1984
    :cond_3
    invoke-virtual {v5}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object v5

    .line 1985
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_4

    const-string v14, "000000"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v15

    :goto_1
    if-nez v5, :cond_5

    return-object v3

    .line 177
    :cond_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v14, "service_name"

    .line 178
    invoke-virtual {v5, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "sip_username"

    .line 179
    invoke-virtual {v5, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "terminal_id"

    .line 180
    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v8, "0"

    :cond_6
    invoke-virtual {v5, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0xa

    if-le v0, v8, :cond_7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_2
    const-string v9, "terminal_model"

    .line 182
    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_8

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_3
    const-string v8, "terminal_version"

    .line 184
    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 191
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v3

    .line 193
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "friendly_device_name"

    .line 194
    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_a
    const-string v0, "deg_sc_hostname"

    .line 2286
    invoke-virtual {v4, v13, v0}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v0, "https://degn.deg.spcsdns.net/DEGDROIDInterface"

    .line 201
    :cond_b
    new-instance v8, Lcom/sprint/ms/smf/internal/a/a;

    invoke-direct {v8, v1, v0}, Lcom/sprint/ms/smf/internal/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v8, v5}, Lcom/sprint/ms/smf/internal/a/a;->a(Landroid/os/Bundle;)Lcom/sprint/ms/smf/internal/a/b;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v3

    .line 2452
    :cond_c
    invoke-virtual {v4, v13, v12, v6}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    invoke-virtual {v4, v13, v11, v7}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    iget-object v3, v0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    iget-object v5, v0, Lcom/sprint/ms/smf/internal/a/b;->b:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3460
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deg_service_response_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5, v3}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "deg_service_issued_"

    if-eqz v3, :cond_d

    .line 3463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v4, v13, v2, v3}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3465
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v13, v2, v3}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-object v0

    :cond_e
    :goto_6
    return-object v3
.end method

.method private a(Landroid/os/Bundle;)Lcom/sprint/ms/smf/internal/a/b;
    .locals 6

    .line 723
    new-instance v0, Lcom/sprint/ms/smf/internal/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/internal/a/a$a;-><init>(B)V

    .line 724
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/a/a;->p:Ljava/lang/String;

    iput-object v2, v0, Lcom/sprint/ms/smf/internal/a/a$a;->a:Ljava/lang/String;

    .line 725
    iput-object p1, v0, Lcom/sprint/ms/smf/internal/a/a$a;->b:Landroid/os/Bundle;

    move p1, v1

    move v2, p1

    :cond_0
    const/4 v3, 0x0

    if-nez p1, :cond_6

    .line 730
    invoke-direct {p0, v0}, Lcom/sprint/ms/smf/internal/a/a;->a(Lcom/sprint/ms/smf/internal/a/a$a;)V

    .line 732
    iget-object v4, v0, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    if-nez v4, :cond_1

    return-object v3

    .line 737
    :cond_1
    iget-boolean v5, v0, Lcom/sprint/ms/smf/internal/a/a$a;->f:Z

    if-eqz v5, :cond_2

    .line 739
    iget-object v4, v0, Lcom/sprint/ms/smf/internal/a/a$a;->g:Landroid/os/Bundle;

    iput-object v4, v0, Lcom/sprint/ms/smf/internal/a/a$a;->b:Landroid/os/Bundle;

    .line 740
    iget-object v4, v0, Lcom/sprint/ms/smf/internal/a/a$a;->h:Ljava/util/HashMap;

    iput-object v4, v0, Lcom/sprint/ms/smf/internal/a/a$a;->c:Ljava/util/HashMap;

    .line 741
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 742
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    .line 745
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->g:Landroid/os/Bundle;

    .line 746
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->h:Ljava/util/HashMap;

    .line 747
    iput-boolean v1, v0, Lcom/sprint/ms/smf/internal/a/a$a;->f:Z

    :goto_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8050
    :cond_2
    iget v4, v4, Lcom/sprint/ms/smf/internal/b/b;->b:I

    const/16 v5, 0x1ff

    if-ne v4, v5, :cond_3

    .line 754
    iget-object v4, p0, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    invoke-static {v4}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v4

    const-string v5, ""

    .line 755
    invoke-virtual {v4, v5}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v4, v5, v5}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iput-boolean v1, v0, Lcom/sprint/ms/smf/internal/a/a$a;->f:Z

    .line 760
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->g:Landroid/os/Bundle;

    .line 761
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->h:Ljava/util/HashMap;

    .line 764
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 765
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    goto :goto_0

    :cond_3
    const/16 v5, 0x199

    if-ne v4, v5, :cond_5

    .line 772
    iget-object v4, v0, Lcom/sprint/ms/smf/internal/a/a$a;->b:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    const-string v5, "friendly_device_name"

    .line 773
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 777
    :cond_4
    iput-boolean v1, v0, Lcom/sprint/ms/smf/internal/a/a$a;->f:Z

    .line 778
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->g:Landroid/os/Bundle;

    .line 779
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->h:Ljava/util/HashMap;

    .line 782
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 783
    iput-object v3, v0, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    :goto_1
    const/4 v4, 0x5

    if-le v2, v4, :cond_0

    .line 796
    :cond_6
    iget-object p0, v0, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/b/b;->a()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    .line 801
    :cond_7
    iget-object p0, v0, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    return-object p0

    :cond_8
    :goto_2
    return-object v3
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 239
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->d()J

    move-result-wide v2

    .line 243
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->c()J

    move-result-wide v4

    .line 245
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    add-long/2addr v4, v2

    cmp-long v2, v6, v4

    if-gez v2, :cond_0

    return-object v1

    .line 251
    :cond_0
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return-object v3

    .line 258
    :cond_1
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "terminal_id"

    .line 260
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/sprint/ms/smf/internal/a/a;

    invoke-direct {v1, p0, v2}, Lcom/sprint/ms/smf/internal/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/sprint/ms/smf/internal/a/a;->a(Landroid/os/Bundle;)Lcom/sprint/ms/smf/internal/a/b;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->b()Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method private static a(Lcom/sprint/ms/smf/internal/a/b;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "EAP-AKA"

    const-string v2, "EAP-AKA Challenge"

    .line 521
    invoke-virtual {p0, v1, v0, v2}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method private static a(Lcom/sprint/ms/smf/internal/a/c$c;Z)Ljava/lang/String;
    .locals 5

    .line 4266
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$d;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 4270
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$d;->d:I

    const/16 v4, 0x17

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 5141
    :cond_2
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$d;->d:I

    if-ne v0, v4, :cond_3

    .line 5146
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/a/c$c;->a:Lcom/sprint/ms/smf/internal/a/c$b;

    if-eqz v0, :cond_3

    .line 5151
    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$b;->a:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    return-object v3

    .line 481
    :cond_4
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/c$c;->b:Landroid/util/SparseArray;

    .line 483
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/ms/smf/internal/a/c$a;

    if-nez v0, :cond_5

    return-object v3

    .line 488
    :cond_5
    iget-object v1, v0, Lcom/sprint/ms/smf/internal/a/c$a;->c:[B

    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$a;->d:I

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 492
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sprint/ms/smf/internal/a/c$a;

    if-nez p0, :cond_6

    return-object v3

    .line 497
    :cond_6
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/a/c$a;->c:[B

    iget p0, p0, Lcom/sprint/ms/smf/internal/a/c$a;->d:I

    invoke-static {v1, v2, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 500
    array-length v1, v0

    array-length v3, p0

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 501
    array-length v3, v0

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v3, p0

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_7

    .line 504
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 507
    :cond_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    return-object v3
.end method

.method private static a(Ljava/lang/String;Lcom/sprint/ms/smf/internal/a/c$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    .line 288
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    move-object/from16 v3, p2

    .line 294
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_b

    .line 295
    array-length v4, v3

    if-gtz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 303
    aget-byte v5, v3, v4

    const/16 v6, -0x25

    const/16 v7, 0xb

    const/16 v8, 0x17

    const/4 v9, 0x1

    const/4 v10, 0x4

    if-ne v5, v6, :cond_7

    .line 305
    array-length v5, v3

    if-ge v5, v1, :cond_2

    return-object v2

    .line 310
    :cond_2
    aget-byte v5, v3, v9

    .line 312
    array-length v6, v3

    add-int/lit8 v11, v5, 0x2

    if-ge v6, v11, :cond_3

    return-object v2

    .line 317
    :cond_3
    invoke-static {v3, v1, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 318
    array-length v11, v6

    rem-int/2addr v11, v10

    if-lez v11, :cond_5

    .line 322
    array-length v12, v6

    add-int/2addr v12, v11

    new-array v12, v12, [B

    .line 323
    array-length v13, v6

    invoke-static {v6, v4, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    array-length v6, v6

    :goto_0
    array-length v13, v12

    if-ge v6, v13, :cond_4

    .line 325
    aput-byte v4, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v5, v11

    goto :goto_1

    :cond_5
    move-object v12, v6

    :goto_1
    move v6, v5

    move-object/from16 v5, p0

    .line 334
    invoke-static {v5, v3}, Lcom/sprint/ms/smf/internal/a/c;->a(Ljava/lang/String;[B)[B

    move-result-object v3

    if-nez v3, :cond_6

    return-object v2

    :cond_6
    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x1c

    .line 342
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 344
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v13, v0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v13, v13, Lcom/sprint/ms/smf/internal/a/c$d;->b:I

    int-to-byte v13, v13

    .line 345
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    int-to-short v13, v6

    .line 346
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 347
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 348
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 349
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v5, 0x3

    .line 353
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v14

    array-length v15, v12

    add-int/2addr v15, v10

    div-int/2addr v15, v10

    int-to-byte v15, v15

    .line 354
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v14

    array-length v15, v12

    sub-int/2addr v15, v11

    mul-int/lit8 v15, v15, 0x8

    int-to-short v15, v15

    .line 355
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 356
    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v14, 0x10

    new-array v15, v14, [B

    .line 360
    invoke-static {v15, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 362
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v7, 0x5

    .line 363
    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 364
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 365
    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 370
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const-string v10, "HmacSHA1"

    invoke-static {v10, v3, v2}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;[B[B)[B

    move-result-object v2

    .line 372
    invoke-static {v2, v4, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 376
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 378
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v0, v0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$d;->b:I

    int-to-byte v0, v0

    .line 379
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v5, v12

    const/4 v6, 0x4

    add-int/2addr v5, v6

    div-int/2addr v5, v6

    int-to-byte v5, v5

    .line 388
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v5, v12

    sub-int/2addr v5, v11

    mul-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    .line 389
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 390
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0xb

    .line 394
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 396
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 400
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :cond_7
    aget-byte v5, v3, v4

    const/16 v6, -0x24

    if-ne v5, v6, :cond_a

    .line 402
    array-length v5, v3

    if-ge v5, v1, :cond_8

    return-object v2

    .line 408
    :cond_8
    aget-byte v5, v3, v9

    .line 409
    array-length v6, v3

    add-int/2addr v5, v1

    if-ge v6, v5, :cond_9

    return-object v2

    .line 415
    :cond_9
    invoke-static {v3, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 417
    array-length v3, v2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 419
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v0, v0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$d;->b:I

    int-to-byte v0, v0

    .line 420
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v5, v2

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    .line 421
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 422
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v5, 0x4

    .line 423
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 424
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 429
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 430
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const/16 v2, 0xc

    .line 437
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 439
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v0, v0, Lcom/sprint/ms/smf/internal/a/c$d;->b:I

    int-to-byte v0, v0

    .line 440
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v3, 0xb

    .line 441
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v3, 0xe

    .line 443
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v0, 0x16

    .line 447
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    :goto_2
    return-object v2
.end method

.method private a(Lcom/sprint/ms/smf/internal/a/a$a;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 541
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    .line 542
    iget-object v3, v1, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Lcom/sprint/ms/smf/internal/c/b;->j()Ljava/lang/String;

    move-result-object v4

    .line 546
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 548
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 549
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    return-void

    .line 553
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@nai.epc.mnc120.mcc310.3gppnetwork.org"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 557
    iget-object v7, v2, Lcom/sprint/ms/smf/internal/a/a$a;->b:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 558
    iget-object v7, v2, Lcom/sprint/ms/smf/internal/a/a$a;->b:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    const-string v7, "EAP_PAYLD"

    .line 563
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v8, :cond_5

    .line 564
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->b()Ljava/lang/String;

    move-result-object v8

    .line 565
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->c()J

    move-result-wide v12

    .line 566
    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->d()J

    move-result-wide v14

    .line 567
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v14, v14, v18

    add-long/2addr v12, v14

    cmp-long v0, v16, v12

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v10

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v11

    :goto_1
    if-eqz v0, :cond_4

    .line 571
    invoke-static {v4}, Lcom/sprint/ms/smf/internal/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "IMSI_EAP"

    .line 572
    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 575
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v12, "IMSI"

    .line 576
    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token"

    .line 577
    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_5
    :goto_2
    new-instance v0, Lcom/sprint/ms/smf/internal/b/a;

    iget-object v8, v1, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    iget-object v12, v2, Lcom/sprint/ms/smf/internal/a/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, v8, v12}, Lcom/sprint/ms/smf/internal/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "GET"

    .line 583
    invoke-virtual {v0, v8}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 584
    invoke-virtual {v0, v5}, Lcom/sprint/ms/smf/internal/b/a;->a(Landroid/os/Bundle;)Lcom/sprint/ms/smf/internal/b/a;

    .line 587
    iget-object v5, v1, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 588
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 589
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eq v5, v11, :cond_7

    .line 5583
    :cond_6
    iput-boolean v11, v0, Lcom/sprint/ms/smf/internal/b/a;->f:Z

    .line 593
    :cond_7
    iget-object v5, v2, Lcom/sprint/ms/smf/internal/a/a$a;->c:Ljava/util/HashMap;

    if-eqz v5, :cond_8

    .line 594
    invoke-virtual {v0, v5}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/util/Map;)Lcom/sprint/ms/smf/internal/b/a;

    .line 596
    :cond_8
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/b/a;->e()Lcom/sprint/ms/smf/internal/b/b;

    move-result-object v0

    iput-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 598
    iget-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    if-nez v0, :cond_9

    .line 600
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 601
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    return-void

    .line 605
    :cond_9
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 610
    :cond_a
    new-instance v0, Lcom/sprint/ms/smf/internal/a/b;

    iget-object v5, v1, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/sprint/ms/smf/internal/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    .line 611
    iget-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    iget-object v5, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 6041
    iget-object v5, v5, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 611
    invoke-virtual {v0, v5}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 613
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 614
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    return-void

    .line 619
    :cond_b
    iget-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    invoke-direct {v1, v0}, Lcom/sprint/ms/smf/internal/a/a;->b(Lcom/sprint/ms/smf/internal/a/b;)V

    .line 623
    iget-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/a/a;->a(Lcom/sprint/ms/smf/internal/a/b;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 625
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 6163
    new-instance v5, Lcom/sprint/ms/smf/internal/a/c$c;

    invoke-direct {v5}, Lcom/sprint/ms/smf/internal/a/c$c;-><init>()V

    const/4 v8, 0x3

    if-eqz v0, :cond_e

    .line 6274
    array-length v12, v0

    if-gtz v12, :cond_c

    goto :goto_3

    .line 6280
    :cond_c
    array-length v12, v0

    const/4 v13, 0x5

    if-le v13, v12, :cond_d

    goto :goto_3

    .line 6285
    :cond_d
    new-instance v12, Lcom/sprint/ms/smf/internal/a/c$e;

    invoke-direct {v12}, Lcom/sprint/ms/smf/internal/a/c$e;-><init>()V

    .line 6287
    new-instance v14, Lcom/sprint/ms/smf/internal/a/c$d;

    invoke-direct {v14}, Lcom/sprint/ms/smf/internal/a/c$d;-><init>()V

    iput-object v14, v12, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    .line 6288
    iget-object v14, v12, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    aget-byte v15, v0, v10

    iput v15, v14, Lcom/sprint/ms/smf/internal/a/c$d;->a:I

    .line 6289
    aget-byte v15, v0, v11

    iput v15, v14, Lcom/sprint/ms/smf/internal/a/c$d;->b:I

    new-array v15, v9, [B

    .line 6292
    aget-byte v9, v0, v9

    aput-byte v9, v15, v10

    .line 6293
    aget-byte v9, v0, v8

    aput-byte v9, v15, v11

    .line 6294
    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    iput v9, v14, Lcom/sprint/ms/smf/internal/a/c$d;->c:I

    .line 6296
    iget-object v9, v12, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    const/4 v14, 0x4

    aget-byte v14, v0, v14

    iput v14, v9, Lcom/sprint/ms/smf/internal/a/c$d;->d:I

    .line 6297
    array-length v9, v0

    invoke-static {v0, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    iput-object v9, v12, Lcom/sprint/ms/smf/internal/a/c$e;->d:[B

    goto :goto_4

    :cond_e
    :goto_3
    move-object v12, v6

    :goto_4
    if-nez v12, :cond_10

    :cond_f
    :goto_5
    move-object v5, v6

    goto :goto_7

    .line 6171
    :cond_10
    iget-object v9, v12, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iput-object v9, v5, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    .line 6173
    iget-object v9, v12, Lcom/sprint/ms/smf/internal/a/c$e;->d:[B

    if-eqz v9, :cond_f

    .line 6174
    array-length v13, v9

    if-gtz v13, :cond_11

    goto :goto_5

    .line 6181
    :cond_11
    iget-object v12, v12, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    iget v12, v12, Lcom/sprint/ms/smf/internal/a/c$d;->d:I

    const/16 v13, 0x17

    if-ne v12, v13, :cond_13

    .line 6182
    array-length v12, v0

    if-le v8, v12, :cond_12

    goto :goto_5

    .line 6187
    :cond_12
    new-instance v12, Lcom/sprint/ms/smf/internal/a/c$b;

    invoke-direct {v12, v10}, Lcom/sprint/ms/smf/internal/a/c$b;-><init>(B)V

    iput-object v12, v5, Lcom/sprint/ms/smf/internal/a/c$c;->a:Lcom/sprint/ms/smf/internal/a/c$b;

    .line 6188
    iget-object v12, v5, Lcom/sprint/ms/smf/internal/a/c$c;->a:Lcom/sprint/ms/smf/internal/a/c$b;

    aget-byte v0, v0, v10

    iput v0, v12, Lcom/sprint/ms/smf/internal/a/c$b;->a:I

    goto :goto_6

    :cond_13
    move v8, v10

    .line 6193
    :goto_6
    array-length v0, v9

    if-lt v8, v0, :cond_14

    goto :goto_7

    .line 6198
    :cond_14
    array-length v0, v9

    invoke-static {v9, v8, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v5, Lcom/sprint/ms/smf/internal/a/c$e;->d:[B

    .line 6199
    iget-object v0, v5, Lcom/sprint/ms/smf/internal/a/c$e;->d:[B

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/a/c$c;->a([B)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v5, Lcom/sprint/ms/smf/internal/a/c$c;->b:Landroid/util/SparseArray;

    :goto_7
    if-nez v5, :cond_15

    .line 632
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 633
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    return-void

    .line 639
    :cond_15
    :try_start_0
    invoke-static {v5, v11}, Lcom/sprint/ms/smf/internal/a/a;->a(Lcom/sprint/ms/smf/internal/a/c$c;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 645
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-static {v0, v9}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 646
    invoke-static {v8}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_16
    move-object v0, v6

    .line 651
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 653
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 654
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    return-void

    .line 660
    :cond_17
    invoke-virtual {v3, v0}, Lcom/sprint/ms/smf/internal/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 664
    invoke-static {v5, v10}, Lcom/sprint/ms/smf/internal/a/a;->a(Lcom/sprint/ms/smf/internal/a/c$c;Z)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {v3, v0}, Lcom/sprint/ms/smf/internal/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    :cond_18
    :try_start_1
    invoke-static {v4, v5, v0}, Lcom/sprint/ms/smf/internal/a/a;->a(Ljava/lang/String;Lcom/sprint/ms/smf/internal/a/c$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 678
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 679
    invoke-static {v3}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_19
    move-object v0, v6

    .line 684
    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 686
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    .line 687
    iput-object v6, v2, Lcom/sprint/ms/smf/internal/a/a$a;->e:Lcom/sprint/ms/smf/internal/a/b;

    return-void

    .line 694
    :cond_1a
    iput-boolean v11, v2, Lcom/sprint/ms/smf/internal/a/a$a;->f:Z

    .line 695
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v2, Lcom/sprint/ms/smf/internal/a/a$a;->g:Landroid/os/Bundle;

    .line 696
    iget-object v1, v2, Lcom/sprint/ms/smf/internal/a/a$a;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 697
    iget-object v1, v2, Lcom/sprint/ms/smf/internal/a/a$a;->g:Landroid/os/Bundle;

    iget-object v3, v2, Lcom/sprint/ms/smf/internal/a/a$a;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 699
    :cond_1b
    iget-object v1, v2, Lcom/sprint/ms/smf/internal/a/a$a;->g:Landroid/os/Bundle;

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->d:Lcom/sprint/ms/smf/internal/b/b;

    const-string v1, "Set-Cookie"

    .line 7083
    iget-object v3, v0, Lcom/sprint/ms/smf/internal/b/b;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 7084
    iget-object v0, v0, Lcom/sprint/ms/smf/internal/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 702
    :cond_1c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->h:Ljava/util/HashMap;

    .line 703
    iget-object v0, v2, Lcom/sprint/ms/smf/internal/a/a$a;->h:Ljava/util/HashMap;

    const-string v1, "Cookie"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method private b(Lcom/sprint/ms/smf/internal/a/b;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "TOKEN"

    const-string v2, "token"

    .line 810
    invoke-virtual {p1, v1, v0, v2}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "validity"

    .line 811
    invoke-virtual {p1, v1, v0, v3}, Lcom/sprint/ms/smf/internal/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 812
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/a;->o:Landroid/content/Context;

    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object p0

    .line 815
    invoke-virtual {p0, v2}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;)V

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sprint/ms/smf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
