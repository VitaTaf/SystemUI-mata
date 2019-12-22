.class public Lcom/google/android/systemui/smartspace/SmartSpaceCard;
.super Ljava/lang/Object;
.source "SmartSpaceCard.java"


# static fields
.field private static sRequestCode:I


# instance fields
.field private final mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconProcessed:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mIsIconGrayscale:Z

.field private final mIsWeather:Z

.field private final mPublishTime:J

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJ)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 67
    iput-boolean p4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIsWeather:Z

    .line 68
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIntent:Landroid/content/Intent;

    .line 69
    iput-object p5, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    .line 70
    iput-wide p7, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mPublishTime:J

    .line 71
    iput-boolean p6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIsIconGrayscale:Z

    .line 72
    sget p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    const p2, 0x7ffffffe

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 73
    sput p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    .line 75
    :cond_0
    sget p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mRequestCode:I

    return-void
.end method

.method static fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 367
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->intent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->intent:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 369
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    iget-object v3, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 370
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->header_icon_size:I

    .line 371
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v1, :cond_3

    .line 372
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 373
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x1

    .line 374
    invoke-static {v1, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    move-object v6, v1

    .line 376
    new-instance v10, Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    iget-object v3, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-boolean v7, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    iget-wide v8, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    move-object v1, v10

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;-><init>(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception p0

    const-string p1, "SmartspaceCard"

    const-string p2, "from proto"

    .line 379
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private getDurationText(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;
    .locals 7

    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMinutesToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I

    move-result p1

    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    .line 308
    div-int/lit8 v3, p1, 0x3c

    .line 309
    rem-int/2addr p1, v0

    .line 310
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$plurals;->smartspace_hours:I

    new-array v5, v2, [Ljava/lang/Object;

    .line 311
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_1

    .line 313
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$plurals;->smartspace_minutes:I

    new-array v5, v2, [Ljava/lang/Object;

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->smartspace_hours_mins:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    .line 316
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$plurals;->smartspace_minutes:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getFormattedText(Z)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMessage()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMessage()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 7

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v3, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    .line 217
    iget-wide v5, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventDurationMillis:J

    add-long/2addr v5, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 218
    iget-object v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->preEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->postEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz v0, :cond_1

    return-object v0

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->duringEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMinutesToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I
    .locals 2

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMillisToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private getTextArgs([Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 282
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 283
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 284
    aget-object v2, p1, v1

    iget v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    const-string v4, ""

    if-eq v2, v3, :cond_0

    .line 298
    aput-object v4, v0, v1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 286
    aget-object v2, p1, v1

    iget v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->truncateLocation:I

    if-eqz v2, :cond_1

    .line 288
    aput-object p2, v0, v1

    goto :goto_1

    .line 290
    :cond_1
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    iget-object v4, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    :cond_2
    aput-object v4, v0, v1

    goto :goto_1

    .line 295
    :cond_3
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getDurationText(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private hasParams(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    iget-object p0, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private substitute(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private substitute(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 328
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getFormattedText(Z)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 329
    iget-object v0, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->hasParams(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object p1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTextArgs([Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 332
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getExpiration()J
    .locals 2

    .line 347
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->expiryCriteria:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    if-eqz p0, :cond_0

    .line 348
    iget-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->expirationTimeMillis:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFormattedTitle()Ljava/lang/CharSequence;
    .locals 13

    .line 118
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMessage()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-eqz v2, :cond_b

    .line 124
    iget-object v3, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_2

    .line 129
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->hasParams(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move v4, v5

    .line 135
    :goto_0
    iget-object v8, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    array-length v9, v8

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v4, v9, :cond_6

    .line 136
    aget-object v8, v8, v4

    if-eqz v8, :cond_5

    .line 138
    iget v9, v8, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    if-eq v9, v12, :cond_4

    if-eq v9, v11, :cond_4

    if-eq v9, v10, :cond_3

    goto :goto_1

    .line 144
    :cond_3
    iget-object v6, v8, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    goto :goto_1

    .line 141
    :cond_4
    invoke-direct {p0, v8}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getDurationText(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_6
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardType:I

    if-ne v2, v10, :cond_7

    array-length v2, v8

    if-ne v2, v11, :cond_7

    .line 153
    aget-object v2, v8, v5

    iget-object v7, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    .line 154
    aget-object v2, v8, v12

    iget-object v6, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    :cond_7
    if-nez v6, :cond_8

    return-object v1

    :cond_8
    if-nez v7, :cond_a

    .line 160
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->duringEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eq v0, v1, :cond_9

    return-object v3

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->smartspace_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    :cond_a
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->smartspace_pill_text_format:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v7, v1, v5

    aput-object v6, v1, v12

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_2
    return-object v1
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method getMillisToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J
    .locals 2

    .line 265
    iget p1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    iget-wide p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventDurationMillis:J

    add-long/2addr v0, p0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    .line 269
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 270
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 415
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 416
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->actionType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-object v1

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mRequestCode:I

    invoke-static {v1, p0, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_2
    const/high16 v1, 0x10000000

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mRequestCode:I

    invoke-static {v1, p0, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isExpired()Z
    .locals 4

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconProcessed()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    return p0
.end method

.method public performCardAction(Landroid/view/View;)V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    const-string v1, "SmartspaceCard"

    if-nez v0, :cond_0

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no tap action available: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 390
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->actionType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 p1, 0x2

    if-eq v2, p1, :cond_1

    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unrecognized tap action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->actionType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/high16 p0, 0x10000000

    .line 392
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "com.google.android.googlequicksearchbox"

    .line 393
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Cannot perform click action"

    .line 399
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconProcessed(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subtitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expires:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " published:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mPublishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
