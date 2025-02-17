.class public Lcom/android/systemui/keyguard/KeyguardSliceProvider2;
.super Landroidx/slice/SliceProvider;
.source "KeyguardSliceProvider.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field static final ALARM_VISIBILITY_HOURS:I = 0xc
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final BOLD_STYLE:Landroid/text/style/StyleSpan;

.field private static sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;


# instance fields
.field protected mAlarmManager:Landroid/app/AlarmManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mAlarmUri:Landroid/net/Uri;

.field protected mContentResolver:Landroid/content/ContentResolver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Landroid/icu/text/DateFormat;

.field private mDatePattern:Ljava/lang/String;

.field protected final mDateUri:Landroid/net/Uri;

.field protected final mDndUri:Landroid/net/Uri;

.field private mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field protected mDozing:Z

.field private final mHandler:Landroid/os/Handler;

.field protected final mHeaderUri:Landroid/net/Uri;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastText:Ljava/lang/String;

.field private mMediaArtist:Ljava/lang/CharSequence;

.field private mMediaIsVisible:Z

.field protected mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mMediaTitle:Ljava/lang/CharSequence;

.field private final mMediaToken:Ljava/lang/Object;

.field protected final mMediaUri:Landroid/net/Uri;

.field protected mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNextAlarm:Ljava/lang/String;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRegistered:Z

.field protected final mSliceUri:Landroid/net/Uri;

.field private mStatusBarState:I

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

.field protected mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->BOLD_STYLE:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 181
    invoke-direct {p0}, Landroidx/slice/SliceProvider;-><init>()V

    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mCurrentTime:Ljava/util/Date;

    .line 106
    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$IhzByd8TsqFuOrSyuGurVskyPLo;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$IhzByd8TsqFuOrSyuGurVskyPLo;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider2;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaToken:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider2;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider2;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 182
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHandler:Landroid/os/Handler;

    const-string p1, "content://com.android.systemui.keyguard/main"

    .line 183
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mSliceUri:Landroid/net/Uri;

    const-string p1, "content://com.android.systemui.keyguard/header"

    .line 184
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHeaderUri:Landroid/net/Uri;

    const-string p1, "content://com.android.systemui.keyguard/date"

    .line 185
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDateUri:Landroid/net/Uri;

    const-string p1, "content://com.android.systemui.keyguard/alarm"

    .line 186
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mAlarmUri:Landroid/net/Uri;

    const-string p1, "content://com.android.systemui.keyguard/dnd"

    .line 187
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDndUri:Landroid/net/Uri;

    const-string p1, "content://com.android.systemui.keyguard/media"

    .line 188
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaUri:Landroid/net/Uri;

    return-void
.end method

.method public static getAttachedInstance()Lcom/android/systemui/keyguard/KeyguardSliceProvider2;
    .locals 1

    .line 177
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    return-object v0
.end method

.method public static synthetic lambda$IhzByd8TsqFuOrSyuGurVskyPLo(Lcom/android/systemui/keyguard/KeyguardSliceProvider2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->updateNextAlarm()V

    return-void
.end method

.method private updateMediaStateLocked(Landroid/media/MediaMetadata;I)V
    .locals 3

    .line 483
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 486
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 487
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->music_controls_no_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.media.metadata.ARTIST"

    .line 491
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 494
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaIsVisible:Z

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaArtist:Ljava/lang/CharSequence;

    .line 495
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 498
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaTitle:Ljava/lang/CharSequence;

    .line 499
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaArtist:Ljava/lang/CharSequence;

    .line 500
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaIsVisible:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    return-void
.end method

.method private updateNextAlarm()V
    .locals 3

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->withinNHoursLocked(Landroid/app/AlarmManager$AlarmClockInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 364
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HH:mm"

    goto :goto_0

    :cond_0
    const-string v0, "h:mm"

    .line 366
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 367
    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    .line 366
    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarm:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 369
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarm:Ljava/lang/String;

    .line 371
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    return-void

    :catchall_0
    move-exception v0

    .line 371
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private withinNHoursLocked(Landroid/app/AlarmManager$AlarmClockInfo;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 380
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v1, p1

    .line 381
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected addMediaLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHeaderUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaArtist:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 249
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaArtist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 252
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    const/4 p0, 0x0

    .line 256
    invoke-virtual {v0, v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 259
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :cond_4
    return-void
.end method

.method protected addNextAlarmLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->ic_access_alarms_big:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 281
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mAlarmUri:Landroid/net/Uri;

    invoke-direct {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarm:Ljava/lang/String;

    .line 282
    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const/4 p0, 0x0

    .line 283
    invoke-virtual {v1, v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 284
    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method protected addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 266
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->ic_access_alarms_big:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mLastText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 270
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    const-string v1, "content://com.android.systemui.keyguard/action"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 271
    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 272
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method protected addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->isDndOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDndUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 296
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd:I

    .line 297
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 299
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, p0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 301
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method cleanDateFormatLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDateFormat:Landroid/icu/text/DateFormat;

    return-void
.end method

.method protected getFormattedDateLocked()Ljava/lang/String;
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDateFormat:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 424
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 425
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDateFormat:Landroid/icu/text/DateFormat;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 454
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    return-object p0
.end method

.method public initDependencies(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 204
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    .line 205
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 206
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 207
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 208
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method protected isDndOn()Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRegistered()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mRegistered:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 409
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$onMetadataOrStateChanged$0$KeyguardSliceProvider(Landroid/media/MediaMetadata;I)V
    .locals 0

    .line 472
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->updateMediaStateLocked(Landroid/media/MediaMetadata;I)V

    .line 473
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    return-void
.end method

.method protected needsMediaLocked()Z
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 237
    :goto_0
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mStatusBarState:I

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaIsVisible:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 238
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaIsVisible:Z

    if-eqz v4, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDozing:Z

    if-nez p0, :cond_3

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method protected notifyChange()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mSliceUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 4

    const-string p1, "KeyguardSliceProvider#onBindSlice"

    .line 214
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    new-instance p1, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mSliceUri:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->needsMediaLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addMediaLocked(Landroidx/slice/builders/ListBuilder;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDateUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 223
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addNextAlarmLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 226
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    .line 227
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 227
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    return-void
.end method

.method public onCreateSliceProvider()Z
    .locals 3

    .line 313
    monitor-enter p0

    .line 314
    :try_start_0
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->onDestroy()V

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    .line 320
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mContentResolver:Landroid/content/ContentResolver;

    .line 321
    new-instance v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 322
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 323
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 324
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->system_ui_aod_date_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDatePattern:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mPendingIntent:Landroid/app/PendingIntent;

    .line 327
    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "media"

    invoke-static {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 329
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->registerClockUpdate()V

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->updateClockLocked()V

    .line 332
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDestroy()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 344
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mRegistered:Z

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 346
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDozingChanged(Z)V
    .locals 1

    .line 511
    monitor-enter p0

    .line 512
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->needsMediaLocked()Z

    move-result v0

    .line 513
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mDozing:Z

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->needsMediaLocked()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 515
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 515
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 4

    .line 463
    monitor-enter p0

    .line 464
    :try_start_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 466
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaIsVisible:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mStatusBarState:I

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider2;Landroid/media/MediaMetadata;I)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaToken:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->updateMediaStateLocked(Landroid/media/MediaMetadata;I)V

    .line 479
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 9

    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 440
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 442
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    move-wide v4, v0

    goto :goto_1

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 442
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    .line 443
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    .line 445
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-string v6, "lock_screen_next_alarm"

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 448
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->updateNextAlarm()V

    return-void

    :catchall_0
    move-exception p1

    .line 448
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 524
    monitor-enter p0

    .line 525
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->needsMediaLocked()Z

    move-result v0

    .line 526
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mStatusBarState:I

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->needsMediaLocked()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 528
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 528
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onZenChanged(I)V
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    return-void
.end method

.method protected registerClockUpdate()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 392
    monitor-exit p0

    return-void

    .line 395
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mRegistered:Z

    .line 402
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateClockLocked()V
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->getFormattedDateLocked()Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->mLastText:Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->notifyChange()V

    :cond_0
    return-void
.end method
