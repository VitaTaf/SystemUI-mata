.class public Lcom/sprint/ms/smf/internal/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/internal/c/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/sprint/ms/smf/internal/c/l;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/c/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/c/l;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 161
    sput-object v0, Lcom/sprint/ms/smf/internal/c/l;->d:Lcom/sprint/ms/smf/internal/c/l;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    const-string v0, "phone"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/l;
    .locals 1

    .line 163
    sget-object v0, Lcom/sprint/ms/smf/internal/c/l;->d:Lcom/sprint/ms/smf/internal/c/l;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/sprint/ms/smf/internal/c/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/internal/c/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/ms/smf/internal/c/l;->d:Lcom/sprint/ms/smf/internal/c/l;

    .line 167
    :cond_0
    sget-object p0, Lcom/sprint/ms/smf/internal/c/l;->d:Lcom/sprint/ms/smf/internal/c/l;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    .line 853
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 857
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    return v1

    .line 861
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 862
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "9000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "9001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static c(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/c/l$a;
    .locals 9

    .line 872
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 878
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_9

    .line 879
    array-length v0, p0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 885
    aget-byte v2, p0, v0

    const/16 v3, 0x62

    if-eq v2, v3, :cond_2

    return-object v1

    .line 890
    :cond_2
    new-instance v2, Lcom/sprint/ms/smf/internal/c/l$a;

    invoke-direct {v2, v0}, Lcom/sprint/ms/smf/internal/c/l$a;-><init>(B)V

    const/4 v3, 0x1

    .line 892
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    .line 893
    array-length v5, p0

    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_8

    .line 898
    array-length v5, p0

    if-ge v4, v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    .line 899
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v5, v3, :cond_7

    .line 901
    array-length v6, p0

    if-ge v5, v6, :cond_7

    add-int/lit8 v6, v5, 0x1

    .line 906
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int v7, v6, v5

    if-gt v7, v3, :cond_6

    .line 908
    array-length v8, p0

    if-gt v7, v8, :cond_6

    .line 913
    new-array v8, v5, [B

    .line 915
    invoke-static {p0, v6, v8, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x80

    if-eq v4, v5, :cond_5

    const/16 v5, 0x82

    if-eq v4, v5, :cond_4

    const/16 v5, 0x83

    if-eq v4, v5, :cond_3

    goto :goto_1

    .line 928
    :cond_3
    invoke-static {v8}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sprint/ms/smf/internal/c/l$a;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 923
    :cond_4
    invoke-virtual {v2, v4, v8}, Lcom/sprint/ms/smf/internal/c/l$a;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 933
    :cond_5
    invoke-static {v8}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sprint/ms/smf/internal/c/l$a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v7

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_0

    :cond_8
    return-object v2

    :catch_0
    :cond_9
    :goto_2
    return-object v1
.end method


# virtual methods
.method final declared-synchronized a(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    monitor-enter p0

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 571
    monitor-exit p0

    return-object v1

    .line 574
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    .line 576
    monitor-exit p0

    return-object v1

    .line 579
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 581
    monitor-exit p0

    return-object v1

    .line 584
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    .line 586
    :goto_0
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 590
    monitor-exit p0

    return-object v1

    .line 593
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    .line 595
    monitor-exit p0

    return-object v1

    .line 602
    :cond_5
    :try_start_5
    iget-object v5, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/16 v7, 0xc0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    move v6, p1

    move-object v11, p2

    invoke-virtual/range {v5 .. v11}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_6

    .line 605
    monitor-exit p0

    return-object v1

    .line 607
    :cond_6
    :try_start_6
    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-static {v2}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_7

    .line 612
    monitor-exit p0

    return-object v1

    :cond_7
    const/4 v2, 0x2

    .line 616
    :try_start_7
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x3

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    add-int v10, v3, v0

    .line 620
    iget-object v5, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/16 v7, 0xb0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v6, p1

    move-object v11, p2

    invoke-virtual/range {v5 .. v11}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p1, :cond_8

    .line 623
    monitor-exit p0

    return-object v1

    .line 625
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object p2

    .line 628
    invoke-static {p2}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;)Z

    move-result p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez p2, :cond_9

    .line 630
    monitor-exit p0

    return-object v1

    .line 633
    :cond_9
    :try_start_9
    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v4, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 377
    monitor-exit p0

    return-object v1

    .line 380
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 382
    monitor-exit p0

    return-object v1

    .line 386
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v4, 0x2

    if-lt v0, v2, :cond_2

    .line 388
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x81

    invoke-virtual {v0, v4, v2, p1}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    const-string v0, "com.android.internal.telephony.PhoneConstants"

    .line 390
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "APPTYPE_USIM"

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 392
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getIccSimChallengeResponse"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 393
    iget-object v5, p0, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    aput-object p1, v4, v3

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 401
    :try_start_4
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 436
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_19

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 441
    :cond_0
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 443
    monitor-exit p0

    return-object v2

    .line 446
    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_2

    .line 448
    monitor-exit p0

    return-object v2

    .line 451
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    .line 453
    monitor-exit p0

    return-object v2

    .line 456
    :cond_3
    :try_start_3
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    .line 458
    :goto_0
    iget-object v6, v1, Lcom/sprint/ms/smf/internal/c/l;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 462
    monitor-exit p0

    return-object v2

    .line 465
    :cond_5
    :try_start_4
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_6

    .line 467
    monitor-exit p0

    return-object v2

    :cond_6
    const/4 v3, -0x1

    .line 475
    :try_start_5
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_7

    .line 477
    monitor-exit p0

    return-object v2

    .line 480
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v3

    .line 481
    invoke-virtual {v0}, Landroid/telephony/IccOpenLogicalChannelResponse;->getSelectResponse()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_9

    if-lez v3, :cond_8

    .line 550
    :try_start_7
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 485
    :cond_8
    monitor-exit p0

    return-object v2

    .line 488
    :cond_9
    :try_start_8
    iget-object v6, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x0

    const/16 v9, 0xa4

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v14, 0x2

    div-int/lit8 v12, v0, 0x2

    move v7, v3

    move-object/from16 v13, p2

    invoke-virtual/range {v6 .. v13}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v15, 0x4

    if-nez v6, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v15, :cond_b

    .line 493
    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_b

    .line 494
    array-length v7, v6

    if-lt v7, v14, :cond_b

    .line 495
    aget-byte v7, v6, v5

    const/16 v8, 0x61

    if-ne v7, v8, :cond_a

    .line 497
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v6, v6, v4

    and-int/lit16 v12, v6, 0xff

    const/4 v13, 0x0

    move-object v6, v0

    move v7, v3

    invoke-virtual/range {v6 .. v13}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 499
    :cond_a
    aget-byte v7, v6, v5

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_b

    .line 501
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x0

    const/16 v9, 0xa4

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v6, v6, v4

    and-int/lit16 v12, v6, 0xff

    const/4 v13, 0x0

    move-object v6, v0

    move v7, v3

    invoke-virtual/range {v6 .. v13}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :cond_b
    :goto_1
    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;)Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v6, :cond_d

    if-lez v3, :cond_c

    .line 550
    :try_start_9
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 509
    :cond_c
    monitor-exit p0

    return-object v2

    .line 512
    :cond_d
    :try_start_a
    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/l;->c(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/c/l$a;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v0, :cond_f

    if-lez v3, :cond_e

    .line 550
    :try_start_b
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 515
    :cond_e
    monitor-exit p0

    return-object v2

    .line 1967
    :cond_f
    :try_start_c
    iget-object v6, v0, Lcom/sprint/ms/smf/internal/c/l$a;->a:Landroid/util/SparseArray;

    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 1973
    check-cast v6, [B

    .line 1974
    array-length v7, v6

    if-lez v7, :cond_10

    .line 1979
    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    and-int/2addr v6, v14

    if-ne v6, v14, :cond_10

    move v6, v4

    goto :goto_2

    :cond_10
    move v6, v5

    :goto_2
    if-eqz v6, :cond_12

    if-gez p3, :cond_11

    goto :goto_3

    :cond_11
    move/from16 v4, p3

    .line 528
    :goto_3
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/16 v6, 0xb2

    move v10, v4

    move v12, v5

    move v9, v6

    move v11, v15

    move-object v6, v0

    goto :goto_5

    .line 532
    :cond_12
    iget-object v4, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    const/16 v6, 0xb0

    .line 1984
    iget-object v0, v0, Lcom/sprint/ms/smf/internal/c/l$a;->a:Landroid/util/SparseArray;

    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    move v10, v5

    move v11, v10

    move v12, v11

    :goto_4
    move v9, v6

    move-object v6, v4

    goto :goto_5

    .line 1990
    :cond_13
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    move v10, v5

    move v11, v10

    goto :goto_4

    :goto_5
    const/4 v8, 0x0

    const/4 v13, 0x0

    move v7, v3

    .line 532
    invoke-virtual/range {v6 .. v13}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;)Z

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v4, :cond_15

    if-lez v3, :cond_14

    .line 550
    :try_start_d
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 537
    :cond_14
    monitor-exit p0

    return-object v2

    .line 540
    :cond_15
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-lez v3, :cond_16

    .line 550
    :try_start_f
    iget-object v2, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(I)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 540
    :cond_16
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 545
    :try_start_10
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-lez v3, :cond_17

    .line 550
    :try_start_11
    iget-object v0, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(I)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 547
    :cond_17
    monitor-exit p0

    return-object v2

    :goto_6
    if-lez v3, :cond_18

    .line 550
    :try_start_12
    iget-object v2, v1, Lcom/sprint/ms/smf/internal/c/l;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(I)Z

    :cond_18
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 438
    :cond_19
    :goto_7
    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    .line 421
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sprint/ms/smf/internal/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
