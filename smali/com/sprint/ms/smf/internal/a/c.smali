.class Lcom/sprint/ms/smf/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/internal/a/c$e;,
        Lcom/sprint/ms/smf/internal/a/c$c;,
        Lcom/sprint/ms/smf/internal/a/c$b;,
        Lcom/sprint/ms/smf/internal/a/c$d;,
        Lcom/sprint/ms/smf/internal/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 323
    array-length v0, p0

    add-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    .line 325
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 326
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p0

    add-int/lit8 v3, v3, 0x5

    int-to-short v3, v3

    .line 327
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 328
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 329
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 331
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;[B)[B
    .locals 12

    .line 359
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    .line 363
    aget-byte v3, p1, v0

    add-int/2addr v3, v1

    .line 367
    array-length v4, p1

    if-ge v4, v3, :cond_1

    return-object v2

    .line 371
    :cond_1
    aget-byte v4, p1, v3

    .line 373
    array-length v5, p1

    add-int/2addr v3, v0

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v6, v3

    if-ge v5, v6, :cond_2

    return-object v2

    :cond_2
    add-int/2addr v4, v3

    .line 377
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 382
    array-length v5, p1

    if-ge v5, v4, :cond_3

    return-object v2

    .line 386
    :cond_3
    aget-byte v5, p1, v4

    .line 388
    array-length v6, p1

    add-int/2addr v4, v0

    add-int/lit8 v7, v5, -0x1

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_4

    return-object v2

    :cond_4
    add-int/2addr v5, v4

    .line 392
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 398
    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 399
    array-length v5, p0

    const/4 v6, 0x0

    invoke-static {p0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    array-length v5, p0

    array-length v7, p1

    invoke-static {p1, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    array-length p0, p0

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, v3

    invoke-static {v3, v6, v4, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    invoke-static {v4}, Lcom/sprint/ms/smf/internal/c/e;->c([B)[B

    move-result-object p0

    .line 409
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-wide/16 v3, 0x2

    .line 413
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 v3, 0xa0

    .line 414
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    const/4 v4, 0x4

    new-array v5, v4, [[B

    move-object v7, p1

    move p1, v6

    :goto_0
    if-ge p1, v4, :cond_7

    new-array v8, v1, [[B

    move-object v9, v7

    move v7, v6

    :goto_1
    if-ge v7, v1, :cond_6

    .line 423
    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 424
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    .line 425
    aget-byte v11, v10, v6

    if-nez v11, :cond_5

    .line 427
    array-length v11, v10

    invoke-static {v10, v0, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 430
    :cond_5
    invoke-static {v10}, Lcom/sprint/ms/smf/internal/c/e;->b([B)[B

    move-result-object v10

    aput-object v10, v8, v7

    .line 431
    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Ljava/math/BigInteger;

    aget-object v11, v8, v7

    invoke-direct {v10, v0, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 435
    :cond_6
    aget-object v7, v8, v6

    array-length v7, v7

    aget-object v10, v8, v0

    array-length v10, v10

    add-int/2addr v7, v10

    new-array v7, v7, [B

    aput-object v7, v5, p1

    .line 436
    aget-object v7, v8, v6

    aget-object v10, v5, p1

    aget-object v11, v8, v6

    array-length v11, v11

    invoke-static {v7, v6, v10, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    aget-object v7, v8, v0

    aget-object v10, v5, p1

    aget-object v11, v8, v6

    array-length v11, v11

    aget-object v8, v8, v0

    array-length v8, v8

    invoke-static {v7, v6, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    move-object v7, v9

    goto :goto_0

    :cond_7
    move p0, v6

    move p1, p0

    :goto_2
    if-ge p0, v4, :cond_8

    .line 443
    aget-object v0, v5, p0

    array-length v0, v0

    add-int/2addr p1, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 446
    :cond_8
    new-array p0, p1, [B

    move v0, v6

    move v1, v0

    :goto_3
    if-ge v0, v4, :cond_9

    .line 449
    aget-object v7, v5, v0

    aget-object v8, v5, v0

    array-length v8, v8

    invoke-static {v7, v6, p0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    aget-object v7, v5, v0

    array-length v7, v7

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    if-ge p1, v3, :cond_a

    return-object v2

    :cond_a
    const/16 p1, 0x10

    const/16 v0, 0x20

    .line 461
    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method
