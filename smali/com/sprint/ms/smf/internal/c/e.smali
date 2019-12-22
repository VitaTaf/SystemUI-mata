.class public Lcom/sprint/ms/smf/internal/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/c/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/c/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 343
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x2

    .line 344
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;)Ljava/security/Key;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x2

    .line 145
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 146
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 150
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/16 v6, 0x15

    const/4 v7, 0x0

    if-lt v4, v5, :cond_2

    .line 151
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/ms/smf/d;->r()Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 161
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 162
    new-array v5, v4, [B

    .line 163
    invoke-virtual {v3, v5, v7, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 165
    new-array v8, v4, [B

    .line 166
    invoke-virtual {v3, v8, v7, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 168
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v3, p1, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const-string p1, "AES/GCM/NoPadding"

    .line 169
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v3, p1

    move-object p1, v8

    goto :goto_0

    .line 171
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_3

    const-string v3, "DESede/ECB/NoPadding"

    .line 174
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 175
    invoke-virtual {v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 179
    new-array v4, p1, [B

    .line 180
    invoke-virtual {v3, v4, v7, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 182
    new-array v5, p1, [B

    .line 183
    invoke-virtual {v3, v5, v7, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 185
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "AES/CBC/PKCS7Padding"

    .line 186
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 187
    invoke-virtual {v3, v2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object p1, v5

    .line 190
    :goto_0
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 197
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v6, :cond_5

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    .line 207
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 208
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_6
    return-object v1
.end method

.method public static a(Lcom/sprint/ms/smf/internal/b/a;)Ljava/lang/String;
    .locals 8

    .line 1353
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/b/a;->d:Ljava/util/HashMap;

    .line 474
    new-instance v1, Lcom/sprint/a/a/a/a/c;

    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 477
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sprint/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/b/a;->e:Ljava/util/HashMap;

    .line 481
    new-instance v2, Lcom/sprint/a/a/a/a/b;

    invoke-direct {v2}, Lcom/sprint/a/a/a/a/b;-><init>()V

    .line 482
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 484
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 485
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_1

    .line 486
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 490
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/sprint/a/a/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 493
    :cond_2
    new-instance v3, Lcom/sprint/a/a/a/a/d;

    invoke-direct {v3}, Lcom/sprint/a/a/a/a/d;-><init>()V

    const-string v4, "Content-MD5"

    .line 494
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 495
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 496
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 3040
    iput-object v4, v3, Lcom/sprint/a/a/a/a/d;->b:Ljava/lang/String;

    :cond_3
    const-string v4, "Content-Type"

    .line 499
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 500
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 501
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3099
    iput-object v0, v3, Lcom/sprint/a/a/a/a/d;->c:Ljava/lang/String;

    .line 3280
    :cond_4
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/b/a;->c:Ljava/lang/String;

    .line 4024
    iput-object p0, v3, Lcom/sprint/a/a/a/a/d;->a:Ljava/lang/String;

    .line 4056
    iput-object v2, v3, Lcom/sprint/a/a/a/a/d;->d:Lcom/sprint/a/a/a/a/b;

    .line 4072
    iput-object v1, v3, Lcom/sprint/a/a/a/a/d;->e:Lcom/sprint/a/a/a/a/c;

    const-string p0, "line.separator"

    .line 4076
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4079
    iget-object v1, v3, Lcom/sprint/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sprint/a/a/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4080
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sprint/a/a/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v3, Lcom/sprint/a/a/a/a/d;->d:Lcom/sprint/a/a/a/a/b;

    .line 4081
    invoke-virtual {p0}, Lcom/sprint/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v3, Lcom/sprint/a/a/a/a/d;->e:Lcom/sprint/a/a/a/a/c;

    .line 5082
    iget-object v1, p0, Lcom/sprint/a/a/a/a/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 5083
    invoke-virtual {p0, v1}, Lcom/sprint/a/a/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    .line 4082
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4083
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 404
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 410
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 411
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 412
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 413
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const-string v5, "0123456789abcdef"

    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 110
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a([BII)Ljava/lang/String;
    .locals 5

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 79
    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    const/16 v4, 0x9

    if-gt v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    if-gt v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/security/Key;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    .line 600
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 602
    new-instance v1, Ljavax/crypto/spec/DESedeKeySpec;

    const-string v2, "b633a981c40a247e38cb93a5e1510da3d7f0d45c"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string v2, "DESede"

    .line 603
    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 604
    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    .line 607
    :cond_0
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v1

    const-string v2, "AndroidKeyStore"

    .line 608
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 609
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 611
    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;Ljava/security/KeyStore;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 619
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x17

    const-string v5, "AES"

    const-string v6, "sprfw01"

    if-lt v3, v4, :cond_2

    .line 620
    :try_start_1
    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->r()Z

    move-result v3

    if-nez v3, :cond_2

    .line 621
    invoke-virtual {v2, v6, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    .line 622
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    const-string v3, "private"

    const-string v4, "stored_key"

    .line 5376
    invoke-virtual {v1, v3, v4}, Lcom/sprint/ms/smf/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "RSA/ECB/PKCS1Padding"

    const/4 v8, 0x2

    if-nez v4, :cond_4

    .line 633
    :try_start_2
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 634
    invoke-virtual {v2, v6, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 635
    invoke-static {v3, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 637
    array-length v3, v2

    if-lez v3, :cond_3

    .line 639
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_3
    const-string v2, ""

    .line 642
    invoke-virtual {v1, v2}, Lcom/sprint/ms/smf/d;->i(Ljava/lang/String;)V

    .line 643
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;)Ljava/security/Key;

    move-result-object p0

    return-object p0

    .line 647
    :cond_4
    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    const/16 v4, 0x100

    .line 648
    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 649
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 651
    invoke-virtual {v2, v6}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_5

    return-object v0

    .line 656
    :cond_5
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    .line 657
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 659
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 660
    invoke-static {v2, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/ms/smf/d;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .line 668
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 669
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_6
    return-object v0
.end method

.method private static a([B[I[I)V
    .locals 17

    const/16 v0, 0x50

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x4

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_0

    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v4

    .line 716
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v4, 0x8

    rsub-int/lit8 v7, v7, 0x18

    shl-int/2addr v6, v7

    .line 717
    aget v7, v1, v3

    or-int/2addr v6, v7

    aput v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v3, 0x1

    if-ge v4, v0, :cond_2

    add-int/lit8 v6, v4, -0x3

    .line 722
    aget v6, v1, v6

    add-int/lit8 v7, v4, -0x8

    aget v7, v1, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v4, -0xe

    aget v7, v1, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x10

    aget v7, v1, v7

    xor-int/2addr v6, v7

    invoke-static {v6, v3}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v3

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 725
    :cond_2
    aget v4, p1, v2

    .line 726
    aget v6, p1, v3

    const/4 v7, 0x2

    .line 727
    aget v8, p1, v7

    const/4 v9, 0x3

    .line 728
    aget v10, p1, v9

    .line 729
    aget v11, p1, v5

    move v12, v11

    move v11, v10

    move v10, v8

    move v8, v4

    move v4, v2

    :goto_3
    const/16 v13, 0x14

    const/16 v14, 0x1e

    const/4 v15, 0x5

    if-ge v4, v13, :cond_3

    and-int v13, v6, v10

    not-int v5, v6

    and-int/2addr v5, v11

    or-int/2addr v5, v13

    .line 736
    invoke-static {v8, v15}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v13, v12

    aget v5, p2, v2

    add-int/2addr v13, v5

    aget v5, v1, v4

    add-int/2addr v5, v13

    .line 737
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget v13, p2, v2

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 740
    invoke-static {v6, v14}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    move v12, v11

    move v11, v10

    move v10, v6

    move v6, v8

    move v8, v5

    const/4 v5, 0x4

    goto :goto_3

    :cond_3
    move v4, v12

    move v12, v11

    move v11, v10

    :goto_4
    const/16 v5, 0x28

    if-ge v13, v5, :cond_4

    xor-int v5, v6, v11

    xor-int/2addr v5, v12

    .line 748
    invoke-static {v8, v15}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v4

    aget v4, p2, v3

    add-int/2addr v10, v4

    aget v4, v1, v13

    add-int/2addr v4, v10

    .line 749
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget v10, p2, v3

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 752
    invoke-static {v6, v14}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v5

    add-int/lit8 v13, v13, 0x1

    move v6, v8

    move v8, v4

    move v4, v12

    move v12, v11

    move v11, v5

    goto :goto_4

    :cond_4
    move v10, v4

    move v4, v12

    move v12, v11

    :goto_5
    const/16 v11, 0x3c

    if-ge v5, v11, :cond_5

    and-int v11, v6, v12

    and-int v13, v6, v4

    or-int/2addr v11, v13

    and-int v13, v12, v4

    or-int/2addr v11, v13

    .line 760
    invoke-static {v8, v15}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v13

    add-int/2addr v13, v11

    add-int/2addr v13, v10

    aget v10, p2, v7

    add-int/2addr v13, v10

    aget v10, v1, v5

    add-int/2addr v10, v13

    .line 763
    invoke-static {v6, v14}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v10

    move v10, v4

    move v4, v12

    move v12, v6

    move v6, v8

    move/from16 v8, v16

    goto :goto_5

    :cond_5
    move v5, v10

    move v10, v4

    move v4, v6

    move v6, v8

    :goto_6
    if-ge v11, v0, :cond_6

    xor-int v8, v4, v12

    xor-int/2addr v8, v10

    .line 771
    invoke-static {v6, v15}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v13

    add-int/2addr v13, v8

    add-int/2addr v13, v5

    aget v5, p2, v9

    add-int/2addr v13, v5

    aget v5, v1, v11

    add-int/2addr v5, v13

    .line 774
    invoke-static {v4, v14}, Lcom/sprint/ms/smf/internal/c/e;->a(II)I

    move-result v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v12

    move v12, v4

    move v4, v6

    move v6, v5

    move v5, v10

    move/from16 v10, v16

    goto :goto_6

    .line 779
    :cond_6
    aget v0, p1, v2

    add-int/2addr v0, v6

    aput v0, p1, v2

    .line 780
    aget v0, p1, v3

    add-int/2addr v0, v4

    aput v0, p1, v3

    .line 781
    aget v0, p1, v7

    add-int/2addr v0, v12

    aput v0, p1, v7

    .line 782
    aget v0, p1, v9

    add-int/2addr v0, v10

    aput v0, p1, v9

    const/4 v0, 0x4

    .line 783
    aget v1, p1, v0

    add-int/2addr v1, v5

    aput v1, p1, v0

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/security/KeyStore;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "sprfw01"

    .line 527
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ge v1, v3, :cond_0

    return v2

    .line 532
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    .line 537
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x17

    const-string v4, "AndroidKeyStore"

    if-lt p1, v3, :cond_2

    :try_start_1
    const-string p1, "AES"

    .line 539
    invoke-static {p1, v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1

    .line 540
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    .line 543
    invoke-virtual {v3, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v3, "GCM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v3, "NoPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    .line 540
    invoke-virtual {p1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 547
    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    goto :goto_0

    .line 552
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 553
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, 0x20

    .line 554
    invoke-virtual {v3, v1, v5}, Ljava/util/Calendar;->add(II)V

    const-string v5, "RSA"

    .line 555
    invoke-static {v5, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    .line 557
    new-instance v5, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v5, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    invoke-virtual {v5, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    const/16 v3, 0x800

    .line 560
    invoke-virtual {v0, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    const-wide/16 v5, 0x539

    .line 561
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v3, "CN=Sprint Mobile Framework"

    invoke-direct {v0, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    .line 557
    invoke-virtual {v4, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 565
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 569
    :goto_0
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sprint/ms/smf/d;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 576
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 577
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_3
    return v2
.end method

.method static a(Ljava/lang/String;)[B
    .locals 7

    .line 355
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 359
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 360
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 362
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 363
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;[B[B)[B
    .locals 3

    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    .line 383
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 384
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 385
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 386
    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v1, [B

    return-object p0
.end method

.method private static a([BI)[B
    .locals 4

    .line 689
    div-int/lit8 p1, p1, 0x8

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 693
    array-length v2, p0

    if-lt p1, v2, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge p1, v0, :cond_1

    .line 696
    aput-byte v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;)Ljava/security/Key;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 244
    :cond_1
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v2

    .line 246
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/16 v5, 0x17

    if-lt v3, v5, :cond_2

    .line 247
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->r()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "AES/GCM/NoPadding"

    .line 249
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    goto :goto_1

    .line 250
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_4

    .line 254
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v3, "DESede/ECB/NoPadding"

    .line 258
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, "AES/CBC/PKCS7Padding"

    .line 261
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    :goto_1
    const/4 v6, 0x1

    .line 263
    invoke-virtual {v3, v6, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    if-nez p1, :cond_5

    return-object v1

    .line 271
    :cond_5
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 274
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_6

    .line 275
    invoke-virtual {v2}, Lcom/sprint/ms/smf/d;->r()Z

    move-result v2

    if-nez v2, :cond_6

    .line 276
    const-class v2, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 277
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v2

    .line 278
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v0

    .line 280
    array-length v3, v2

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x4

    array-length v4, p1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 281
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v3, v2

    .line 282
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p1

    .line 283
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_2

    .line 284
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_7

    .line 287
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 288
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    .line 289
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 290
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p1

    .line 291
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    :cond_7
    :goto_2
    const/4 v0, 0x2

    .line 294
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 300
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 301
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_8
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 430
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 436
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 438
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 440
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static b([B)[B
    .locals 2

    const/16 v0, 0xa0

    .line 322
    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/e;->a([BI)[B

    move-result-object p0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 323
    fill-array-data v0, :array_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 324
    fill-array-data v1, :array_1

    .line 326
    invoke-static {p0, v0, v1}, Lcom/sprint/ms/smf/internal/c/e;->a([B[I[I)V

    const/16 p0, 0x14

    .line 327
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 329
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 332
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data

    :array_1
    .array-data 4
        0x5a827999
        0x6ed9eba1
        -0x70e44324
        -0x359d3e2a    # -3715189.5f
    .end array-data
.end method

.method public static c([B)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA-1"

    .line 456
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 457
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
