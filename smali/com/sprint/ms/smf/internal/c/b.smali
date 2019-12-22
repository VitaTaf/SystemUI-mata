.class public Lcom/sprint/ms/smf/internal/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static f:Lcom/sprint/ms/smf/internal/c/b;


# instance fields
.field public final a:Lcom/sprint/ms/smf/internal/c/l;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/c/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/c/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/sprint/ms/smf/internal/c/b;->f:Lcom/sprint/ms/smf/internal/c/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/l;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v0, "phone"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private a(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x6f

    .line 1226
    rem-int/lit8 p0, p1, 0xa

    if-nez p0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 1227
    :cond_0
    div-int/lit8 p0, p1, 0xa

    rem-int/lit8 p0, p0, 0xa

    if-nez p0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 1228
    :cond_1
    div-int/lit8 p0, p1, 0x64

    rem-int/lit8 p0, p0, 0xa

    if-nez p0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    :cond_2
    return p1
.end method

.method public static a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;
    .locals 1

    .line 48
    sget-object v0, Lcom/sprint/ms/smf/internal/c/b;->f:Lcom/sprint/ms/smf/internal/c/b;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/sprint/ms/smf/internal/c/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/internal/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/ms/smf/internal/c/b;->f:Lcom/sprint/ms/smf/internal/c/b;

    .line 52
    :cond_0
    sget-object p0, Lcom/sprint/ms/smf/internal/c/b;->f:Lcom/sprint/ms/smf/internal/c/b;

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .line 1423
    new-instance v0, Lcom/sprint/ms/smf/internal/c/i;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/sprint/ms/smf/internal/c/i;-><init>([BI)V

    .line 2067
    :cond_0
    iget-boolean p0, v0, Lcom/sprint/ms/smf/internal/c/i;->e:Z

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_0

    .line 2068
    :cond_1
    iget-object p0, v0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v2, v0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    :goto_0
    const/16 v2, 0x80

    const/4 v3, 0x0

    if-ne p0, v2, :cond_3

    .line 1426
    new-instance p0, Ljava/lang/String;

    .line 2077
    iget-boolean v2, v0, Lcom/sprint/ms/smf/internal/c/i;->e:Z

    if-nez v2, :cond_2

    goto :goto_1

    .line 2079
    :cond_2
    iget v2, v0, Lcom/sprint/ms/smf/internal/c/i;->d:I

    new-array v3, v2, [B

    .line 2080
    iget-object v4, v0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v0, v0, Lcom/sprint/ms/smf/internal/c/i;->c:I

    invoke-static {v4, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const-string v0, "UTF-8"

    .line 1426
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 3049
    :cond_3
    iget-boolean p0, v0, Lcom/sprint/ms/smf/internal/c/i;->e:Z

    if-nez p0, :cond_4

    goto :goto_2

    .line 3050
    :cond_4
    iget p0, v0, Lcom/sprint/ms/smf/internal/c/i;->c:I

    iget v1, v0, Lcom/sprint/ms/smf/internal/c/i;->d:I

    add-int/2addr p0, v1

    iput p0, v0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    .line 3051
    invoke-virtual {v0}, Lcom/sprint/ms/smf/internal/c/i;->a()Z

    move-result p0

    iput-boolean p0, v0, Lcom/sprint/ms/smf/internal/c/i;->e:Z

    .line 3052
    iget-boolean v1, v0, Lcom/sprint/ms/smf/internal/c/i;->e:Z

    :goto_2
    if-nez v1, :cond_0

    return-object v3
.end method

.method private static a(II)Z
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 11

    .line 1444
    new-instance v0, Lcom/sprint/ms/smf/internal/c/a;

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/internal/c/a;-><init>([B)V

    const/16 p0, 0x8

    const/4 v1, 0x0

    .line 1446
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    .line 1449
    invoke-static {v2, v3}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v1

    .line 1454
    :cond_0
    invoke-virtual {v0, v3}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v4

    add-int/lit8 v2, v2, -0x1

    if-ne v4, v3, :cond_2

    const/16 v4, 0xb

    .line 1457
    invoke-static {v2, v4}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v1

    .line 1460
    :cond_1
    invoke-virtual {v0, v4}, Lcom/sprint/ms/smf/internal/c/a;->b(I)V

    add-int/lit8 v2, v2, -0xb

    :cond_2
    const/4 v4, 0x4

    .line 1464
    invoke-static {v2, v4}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v5

    if-nez v5, :cond_3

    return-object v1

    .line 1469
    :cond_3
    invoke-virtual {v0, v4}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v5

    add-int/lit8 v2, v2, -0x4

    const/4 v6, 0x0

    move v7, v2

    move v2, v6

    :goto_0
    if-ge v2, v5, :cond_f

    .line 1474
    invoke-static {v7, v4}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_4

    return-object v1

    .line 1477
    :cond_4
    invoke-virtual {v0, v4}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v8

    add-int/lit8 v7, v7, -0x4

    .line 1479
    invoke-static {v7, p0}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v9

    if-nez v9, :cond_5

    return-object v1

    .line 1482
    :cond_5
    invoke-virtual {v0, p0}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v9

    add-int/lit8 v7, v7, -0x8

    if-nez v8, :cond_8

    shl-int/lit8 v2, v9, 0x3

    .line 1486
    invoke-static {v7, v2}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    .line 1489
    :cond_6
    new-array v2, v9, [C

    :goto_1
    if-ge v6, v9, :cond_7

    .line 1491
    invoke-virtual {v0, p0}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1493
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_8
    shl-int/lit8 v8, v9, 0x3

    add-int/lit8 v9, v8, 0x66

    .line 1496
    invoke-static {v7, v9}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v10

    if-nez v10, :cond_9

    return-object v1

    :cond_9
    add-int/lit8 v8, v8, 0x65

    .line 1499
    invoke-virtual {v0, v8}, Lcom/sprint/ms/smf/internal/c/a;->b(I)V

    .line 1500
    invoke-virtual {v0, v3}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v8

    sub-int/2addr v7, v9

    const/16 v9, 0x20

    if-ne v8, v3, :cond_b

    .line 1503
    invoke-static {v7, v9}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_a

    return-object v1

    .line 1506
    :cond_a
    invoke-virtual {v0, v9}, Lcom/sprint/ms/smf/internal/c/a;->b(I)V

    add-int/lit8 v7, v7, -0x20

    :cond_b
    const/4 v8, 0x5

    .line 1510
    invoke-static {v7, v8}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_c

    return-object v1

    .line 1513
    :cond_c
    invoke-virtual {v0, v4}, Lcom/sprint/ms/smf/internal/c/a;->b(I)V

    add-int/lit8 v7, v7, -0x4

    .line 1515
    invoke-virtual {v0, v3}, Lcom/sprint/ms/smf/internal/c/a;->a(I)I

    move-result v8

    add-int/lit8 v7, v7, -0x1

    if-ne v8, v3, :cond_e

    .line 1518
    invoke-static {v7, v9}, Lcom/sprint/ms/smf/internal/c/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_d

    return-object v1

    .line 1521
    :cond_d
    invoke-virtual {v0, v9}, Lcom/sprint/ms/smf/internal/c/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, -0x20

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_f
    return-object v1
.end method

.method private static c([B)V
    .locals 5

    .line 1539
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    .line 1542
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 1543
    aget-byte v4, p0, v0

    aput-byte v4, p0, v1

    add-int/lit8 v1, v0, -0x1

    .line 1544
    aput-byte v2, p0, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 85
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 86
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v0, v3}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 87
    invoke-static {v0, v3}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v0

    .line 100
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-static {v3, v4, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getCdmaMdn"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 110
    :catch_0
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v0

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    return-object v0

    .line 125
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v4, "A0000003431002F310FFFF89020000FF"

    const-string v5, "6F44"

    invoke-virtual {v3, v4, v5}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 128
    invoke-static {v3}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_7

    .line 129
    array-length v4, v3

    if-lez v4, :cond_7

    .line 130
    aget-byte v4, v3, v1

    and-int/lit16 v4, v4, 0xff

    .line 132
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 133
    array-length v3, v2

    invoke-static {v2, v1, v3}, Lcom/sprint/ms/smf/internal/c/e;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 141
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 142
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 147
    :cond_7
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const-string p0, ""

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 970
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    invoke-virtual {p0, p1}, Lcom/sprint/ms/smf/internal/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 11

    const-string v0, "%03d"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 173
    :try_start_0
    iget-object v4, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-static {v4, v5, v1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getCdmaMin"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 175
    iget-object v5, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    .line 181
    iget-object v5, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    invoke-static {v4}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 187
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object v3

    const/16 v4, 0x23

    .line 193
    invoke-virtual {v3, v4}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    .line 201
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v5, "A0000003431002F310FFFF89020000FF"

    const-string v6, "6F22"

    invoke-virtual {v4, v5, v6}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 204
    invoke-static {v4}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_4

    .line 205
    array-length v5, v4

    if-lez v5, :cond_4

    const/4 v5, 0x2

    .line 208
    aget-byte v6, v4, v5

    const/4 v7, 0x3

    and-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x8

    aget-byte v8, v4, v1

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    const/4 v8, 0x5

    .line 210
    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    const/4 v9, 0x4

    aget-byte v10, v4, v9

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    shr-int/lit8 v8, v8, 0x6

    .line 211
    aget-byte v10, v4, v9

    shr-int/lit8 v5, v10, 0x2

    and-int/lit8 v5, v5, 0xf

    const/16 v10, 0x9

    if-le v5, v10, :cond_3

    move v5, v2

    .line 214
    :cond_3
    aget-byte v9, v4, v9

    and-int/2addr v9, v7

    shl-int/lit8 v9, v9, 0x8

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v9

    .line 216
    invoke-direct {p0, v6}, Lcom/sprint/ms/smf/internal/c/b;->a(I)I

    move-result v6

    .line 217
    invoke-direct {p0, v8}, Lcom/sprint/ms/smf/internal/c/b;->a(I)I

    move-result v7

    .line 218
    invoke-direct {p0, v4}, Lcom/sprint/ms/smf/internal/c/b;->a(I)I

    move-result v4

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-static {v9, v0, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v2

    invoke-static {v6, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v2

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, p0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 229
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 230
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 235
    :cond_4
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v3

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 263
    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 264
    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getNai"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 272
    :catch_0
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object v0

    const/4 v1, 0x2

    .line 278
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 286
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v2, "A0000003431002F310FFFF89020000FF"

    const-string v3, "6F4D"

    invoke-virtual {v1, v2, v3}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 288
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 290
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/b;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 298
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 299
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 304
    :cond_4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v2, "A0000003431002F310FFFF89020000FF"

    const-string v3, "6F74"

    invoke-virtual {v1, v2, v3}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    array-length v2, v1

    if-lez v2, :cond_0

    .line 328
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/b;->c([B)V

    .line 329
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 337
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 338
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 343
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    const-string v0, "/system/bin/getprop"

    .line 363
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object p0

    const/16 v1, 0x1a4

    .line 364
    invoke-virtual {p0, v1}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 372
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ro.home.operator.carrierid"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 373
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :catch_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    .line 384
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "op.carrierid"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 385
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :catch_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 413
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 414
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 415
    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 419
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 423
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 429
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v2, "A0000000871002F310FFFF89080000FF"

    const-string v3, "6F3E"

    invoke-virtual {v1, v2, v3}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 435
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 436
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 441
    :cond_4
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v1, "A0000000871002F310FFFF89080000FF"

    const-string v2, "6F3F"

    invoke-virtual {v0, v1, v2}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 468
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 469
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    .line 474
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 499
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 500
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 501
    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 509
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 515
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const/16 v2, 0x2fe2

    const-string v3, "3F00"

    invoke-virtual {v1, v2, v3}, Lcom/sprint/ms/smf/internal/c/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 517
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 518
    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 519
    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/sprint/ms/smf/internal/c/e;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 527
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 528
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 533
    :cond_4
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 555
    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 556
    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 558
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getImei"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 561
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 569
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 570
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 575
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    :try_start_0
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v3, "A0000000871002F310FFFF89080000FF"

    const-string v4, "6F07"

    invoke-virtual {v2, v3, v4}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    invoke-static {v2}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 602
    array-length v3, v2

    if-lez v3, :cond_0

    .line 604
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v3}, Lcom/sprint/ms/smf/internal/c/e;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 616
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    invoke-static {v2}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 622
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 628
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const/16 v3, 0x6f07

    const-string v4, "3F007FFF"

    invoke-virtual {v2, v3, v4}, Lcom/sprint/ms/smf/internal/c/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 630
    invoke-static {v2}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 631
    array-length v3, v2

    if-lez v3, :cond_2

    .line 633
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v3}, Lcom/sprint/ms/smf/internal/c/e;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 636
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 645
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 646
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 651
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    .line 660
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    .line 661
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 662
    invoke-static {v0, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 663
    :cond_4
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 666
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 670
    :cond_6
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    .line 695
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/16 v3, 0x1a

    if-lt v1, v2, :cond_2

    .line 696
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 697
    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 698
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 699
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-lt v1, v3, :cond_3

    .line 706
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 713
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 715
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xe

    if-le p0, v1, :cond_5

    const/4 p0, 0x0

    .line 716
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    .line 721
    :cond_6
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object p0

    const/16 v0, 0x1e

    .line 722
    invoke-virtual {p0, v0}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 724
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 748
    :try_start_0
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 749
    invoke-static {v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 750
    invoke-static {v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    :cond_0
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getMsisdn"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 752
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 758
    :catch_0
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 764
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v3, "A0000000871002F310FFFF89080000FF"

    const-string v4, "6F40"

    invoke-virtual {v2, v3, v4}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 766
    invoke-static {v2}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 767
    array-length v3, v2

    if-lez v3, :cond_3

    .line 768
    array-length v3, v2

    add-int/lit8 v3, v3, -0xe

    .line 769
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v4, v3

    .line 772
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 773
    array-length v3, v2

    invoke-static {v2, v0, v3}, Lcom/sprint/ms/smf/internal/c/e;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 781
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 782
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 787
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 809
    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getIsimImpi"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 811
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 818
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 824
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "sip:"

    if-nez v1, :cond_2

    .line 825
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 826
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object v0

    const/16 v1, 0x2a6

    .line 834
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 837
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 838
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    .line 846
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v4, "A0000000871004F310FFFF89080000FF"

    const-string v5, "6F02"

    invoke-virtual {v1, v4, v5}, Lcom/sprint/ms/smf/internal/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 848
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 849
    array-length v4, v1

    if-lez v4, :cond_5

    .line 850
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/b;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 858
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {p0, v4}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 859
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 864
    :cond_5
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 865
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 866
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 867
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 889
    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getIsimImpu"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 891
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->e:Landroid/telephony/TelephonyManager;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 892
    array-length v2, v1

    if-lez v2, :cond_0

    .line 893
    aget-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 901
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 902
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 907
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "sip:"

    if-nez v1, :cond_2

    .line 908
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 909
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprint/ms/smf/internal/c/j;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;

    move-result-object v0

    const/16 v1, 0x2a7

    .line 917
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/internal/c/j;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 920
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 921
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    .line 930
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/b;->a:Lcom/sprint/ms/smf/internal/c/l;

    const-string v4, "A0000000871004F310FFFF89080000FF"

    const-string v5, "6F04"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/sprint/ms/smf/internal/c/l;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 932
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 933
    array-length v4, v1

    if-lez v4, :cond_5

    .line 934
    invoke-static {v1}, Lcom/sprint/ms/smf/internal/c/b;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 942
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/b;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {p0, v4}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 943
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 948
    :cond_5
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 949
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 950
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 951
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method
