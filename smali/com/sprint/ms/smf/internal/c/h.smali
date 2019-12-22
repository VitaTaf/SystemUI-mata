.class public Lcom/sprint/ms/smf/internal/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/c/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/c/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 190
    array-length v1, p1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 194
    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    .line 155
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 156
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string p1, "SHA-1"

    .line 157
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/4 v1, 0x0

    .line 159
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    aget-object v2, p0, v1

    .line 165
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, v0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 84
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p2, v1, :cond_2

    const-string p2, "phone"

    .line 85
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 4

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1236
    invoke-static {v0, v1}, Lcom/sprint/ms/smf/internal/c/h;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 131
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 132
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "com.google.firebase.messaging.FirebaseMessagingService"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v0

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

.method private static a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 627
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, p0, v3

    .line 630
    array-length v6, p1

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p1, v7

    .line 631
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 633
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_2
    and-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_3
    return v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 216
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_3

    if-lez p1, :cond_2

    const-string v1, ","

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 14

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SHA-1"

    .line 254
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 260
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 261
    invoke-static {v2}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    .line 270
    :cond_1
    sget-object v2, Lcom/sprint/ms/smf/SmfContract;->SMF_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_9

    aget-object v6, v2, v5

    const/16 v7, 0x40

    .line 273
    :try_start_1
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_5

    .line 279
    :cond_2
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_8

    if-nez p1, :cond_3

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_3

    goto :goto_5

    .line 285
    :cond_3
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v7, :cond_4

    goto :goto_5

    .line 293
    :cond_4
    array-length v8, v7

    const/4 v9, 0x1

    move v10, v4

    move v11, v9

    :goto_2
    if-ge v10, v8, :cond_7

    aget-object v12, v7, v10

    .line 294
    invoke-virtual {v12}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    invoke-static {v12}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object v12

    const-string v13, "f86014539f4897a81f264f411cea45eeedd98594"

    .line 296
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "3cb73c29104206dc8429559272aedd18dee65dca"

    .line 297
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    move v12, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v12, v9

    :goto_4
    and-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    if-eqz v11, :cond_8

    return-object v6

    :catch_1
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return-object v1
.end method

.method private static c(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SHA-1"

    .line 328
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 334
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/c/h;->d(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 335
    invoke-static {v2}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "com.sprint.ms.cdm"

    const/16 v3, 0x40

    .line 348
    :try_start_1
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 354
    :cond_2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6

    if-nez p1, :cond_3

    iget-object p1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_3

    goto :goto_2

    .line 360
    :cond_3
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez p1, :cond_4

    return-object v1

    .line 367
    :cond_4
    array-length v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1
    if-ge v3, v0, :cond_5

    aget-object v5, p1, v3

    .line 368
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "f86014539f4897a81f264f411cea45eeedd98594"

    .line 370
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    return-object v2

    :catch_1
    :cond_6
    :goto_2
    return-object v1
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 2236
    :cond_0
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 404
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 405
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 410
    :cond_2
    array-length p1, p0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_4

    aget-object v3, p0, v2

    .line 411
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static d(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 432
    :cond_0
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 437
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 438
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 444
    :cond_2
    array-length p1, p0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_4

    aget-object v3, p0, v2

    .line 445
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static e(Landroid/content/Context;I)Z
    .locals 7

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v1, "android"

    const/16 v2, 0x40

    .line 473
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 475
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 480
    :cond_1
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 482
    invoke-virtual {p0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 483
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lcom/sprint/ms/smf/internal/c/h;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return v0
.end method

.method public static f(Landroid/content/Context;I)Z
    .locals 8

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3236
    :try_start_0
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    .line 516
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 518
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return v0

    .line 523
    :cond_1
    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 525
    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 526
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6, v7}, Lcom/sprint/ms/smf/internal/c/h;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 535
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 541
    :cond_3
    invoke-static {p0, p1}, Lcom/sprint/ms/smf/internal/c/h;->e(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method
