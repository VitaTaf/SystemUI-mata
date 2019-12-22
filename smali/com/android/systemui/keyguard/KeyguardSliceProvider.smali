.class public Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;
.super Lcom/android/systemui/keyguard/KeyguardSliceProvider2;
.source "KeyguardSliceProvider.java"

# interfaces
.implements Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCalendarUri:Landroid/net/Uri;

.field private mHideSensitiveContent:Z

.field private mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field private final mWeatherUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KeyguardSliceProvider"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;-><init>()V

    const-string v0, "content://com.android.systemui.keyguard/smartSpace/weather"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/smartSpace/calendar"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mCalendarUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    return-void
.end method

.method private addWeather(Landroidx/slice/builders/ListBuilder;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherUri:Landroid/net/Uri;

    invoke-direct {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 151
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    .line 157
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, 0x1

    .line 158
    invoke-virtual {v1, p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 160
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 6

    const-string p1, "KeyguardSliceProvider#onBindSlice"

    .line 86
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 87
    new-instance p1, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mSliceUri:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    .line 91
    iget-boolean v1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mHideSensitiveContent:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v1

    if-nez v1, :cond_7

    .line 92
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 93
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 95
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v3, v1, v4, v2}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    .line 100
    :cond_2
    :goto_1
    new-instance v3, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHeaderUri:Landroid/net/Uri;

    invoke-direct {v3, v5}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroid/net/Uri;)V

    .line 101
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getFormattedTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    .line 105
    :cond_3
    invoke-virtual {p1, v3}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v5, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mCalendarUri:Landroid/net/Uri;

    invoke-direct {v3, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    if-eqz v1, :cond_4

    .line 111
    invoke-virtual {v3, v1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_4
    if-eqz v2, :cond_5

    .line 114
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 116
    :cond_5
    invoke-virtual {p1, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 118
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->addWeather(Landroidx/slice/builders/ListBuilder;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 121
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 122
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 125
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->needsMediaLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addMediaLocked(Landroidx/slice/builders/ListBuilder;)V

    goto :goto_2

    .line 129
    :cond_8
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDateUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->getFormattedDateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 129
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 133
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->addWeather(Landroidx/slice/builders/ListBuilder;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addNextAlarmLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 140
    sget-boolean p1, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->DEBUG:Z

    if-eqz p1, :cond_9

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Binding slice: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSliceProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p1

    .line 137
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->onCreateSliceProvider()Z

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->get(Landroid/content/Context;)Lcom/google/android/systemui/smartspace/SmartSpaceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->addListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V

    .line 80
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    return v0
.end method

.method public onSensitiveModeChanged(Z)V
    .locals 4

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mHideSensitiveContent:Z

    if-eq v0, p1, :cond_0

    .line 169
    iput-boolean p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mHideSensitiveContent:Z

    const/4 v0, 0x1

    .line 171
    sget-boolean v1, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardSliceProvider"

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Public mode changed, hide data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V
    .locals 2

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iput-object p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 185
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isIconProcessed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->setIconProcessed(Z)V

    .line 191
    new-instance v1, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;-><init>(Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    new-array p0, v0, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 185
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected updateClockLocked()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    return-void
.end method
