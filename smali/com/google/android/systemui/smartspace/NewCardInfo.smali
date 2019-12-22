.class public Lcom/google/android/systemui/smartspace/NewCardInfo;
.super Ljava/lang/Object;
.source "NewCardInfo.java"


# instance fields
.field private final mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field private final mIntent:Landroid/content/Intent;

.field private final mIsPrimary:Z

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mPublishTime:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 51
    iput-boolean p3, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIsPrimary:Z

    .line 52
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIntent:Landroid/content/Intent;

    .line 53
    iput-wide p4, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPublishTime:J

    .line 54
    iput-object p6, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method static createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p0, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 126
    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static retrieveFromIntent(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getUserId()I
    .locals 2

    .line 135
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isPrimary()Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIsPrimary:Z

    return p0
.end method

.method public retrieveIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->icon:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIntent:Landroid/content/Intent;

    invoke-static {v2, p0}, Lcom/google/android/systemui/smartspace/NewCardInfo;->retrieveFromIntent(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    return-object p0

    .line 72
    :cond_1
    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 73
    iget-object p0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 76
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 77
    new-instance p0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {p0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 78
    iput-object v2, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 79
    iget-object v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 80
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 83
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "retrieving bitmap uri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " gsaRes="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NewCardInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method

.method public shouldDiscard()Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->shouldDiscard:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toWrapper(Landroid/content/Context;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 4

    .line 95
    new-instance v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {v0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->retrieveIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iput-object p1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 103
    iget-wide v1, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPublishTime:J

    iput-wide v1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 104
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_1

    .line 105
    iget p1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 106
    iget-wide p0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide p0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    :cond_1
    return-object v0
.end method
