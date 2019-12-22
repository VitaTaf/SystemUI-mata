.class public final Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.super Ljava/lang/Object;
.source "NotificationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;
    }
.end annotation


# instance fields
.field public ambient:Z

.field public aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public autoRedacted:Z

.field public canBubble:Z

.field public centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public channel:Landroid/app/NotificationChannel;

.field public editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

.field public expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private hasSentReply:Z

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public importance:I

.field private initializationTime:J

.field private interruption:Z

.field public final key:Ljava/lang/String;

.field public lastAudiblyAlertedMs:J

.field private lastFullScreenIntentLaunchTime:J

.field public lastRemoteInputSent:J

.field public mActiveAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoHeadsUp:Z

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mDebugThrowable:Ljava/lang/Throwable;

.field private mHighPriority:Z

.field public mIsSystemNotification:Ljava/lang/Boolean;

.field private mIsTopBucket:Z

.field private mOnSensitiveChangedListener:Ljava/lang/Runnable;

.field private mPulseSupressed:Z

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field private mSensitive:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field private parent:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public remoteInputTextWhenReset:Ljava/lang/CharSequence;

.field private row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public snoozeCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public suppressedVisualEffects:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public suspended:Z

.field public systemGeneratedSmartActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

.field public targetSdk:I

.field public userSentiment:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 4

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x7d0

    .line 102
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const/4 v2, 0x0

    .line 105
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->userSentiment:I

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartActions:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 110
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    .line 127
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 128
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    const/4 v3, 0x0

    .line 129
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 132
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    const-wide/16 v0, -0x1

    .line 137
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 177
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    :cond_0
    return-void
.end method

.method private static isCategory(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 0

    .line 797
    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isNotificationBlockedByPolicy(Landroid/app/Notification;)Z
    .locals 1

    const-string v0, "call"

    .line 789
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "msg"

    .line 790
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alarm"

    .line 791
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    .line 792
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reminder"

    .line 793
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result p0

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

.method private shouldSuppressVisualEffect(I)Z
    .locals 2

    .line 727
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isExemptFromDndVisualSuppression()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 730
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suppressedVisualEffects:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public abortTask()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    :cond_0
    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public areGutsExposed()Z
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public closeRemoteInput()V
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->closeRemoteInput()V

    :cond_0
    return-void
.end method

.method public createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 303
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 311
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/0x"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 316
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIncreasedSize(Z)V

    .line 326
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 327
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 328
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 332
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationEntry$-qQWpuXv2gxu8--zPidD9i3gPVE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationEntry$-qQWpuXv2gxu8--zPidD9i3gPVE;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 353
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 355
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 357
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t update centered icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 336
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 337
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 338
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 339
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t create icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_3
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No small icon in notification from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public freeContentViewWhenSafe(I)V
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->freeContentViewWhenSafe(I)V

    :cond_0
    return-void
.end method

.method public getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 269
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 271
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getContrastedColor(Landroid/content/Context;ZI)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->color:I

    .line 416
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 419
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result p1

    .line 421
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    .line 422
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 423
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    return p0
.end method

.method public getDebugThrowable()Ljava/lang/Throwable;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDebugThrowable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 452
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object p0
.end method

.method public hasFinishedInitialization()Z
    .locals 6

    .line 291
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

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

.method public hasInterrupted()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    return p0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasJustSentRemoteInput()Z
    .locals 6

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoHeadsUp()Z
    .locals 0

    .line 602
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAutoHeadsUp:Z

    return p0
.end method

.method public isBubble()Z
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChildInGroup()Z
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->parent:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isClearable()Z
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 691
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 692
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 693
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 694
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method isExemptFromDndVisualSuppression()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isNotificationBlockedByPolicy(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 720
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public isGroupNotFullyVisible()Z
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupNotFullyVisible()Z

    move-result p0

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

.method public isHighPriority()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mHighPriority:Z

    return p0
.end method

.method public isLastMessageFromReply()Z
    .locals 4

    .line 478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.remoteInputHistory"

    .line 482
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 484
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v0, "android.messages"

    .line 487
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 488
    array-length v3, v0

    if-lez v3, :cond_3

    .line 489
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    .line 490
    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 491
    check-cast v0, Landroid/os/Bundle;

    .line 492
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string v1, "android.messagingUser"

    .line 499
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/Person;

    .line 500
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public isMediaNotification()Z
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isMediaRow()Z

    move-result p0

    return p0
.end method

.method public isPulseSuppressed()Z
    .locals 0

    .line 825
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    return p0
.end method

.method public isRemoved()Z
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

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

.method public isRowDismissed()Z
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDismissed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRowHeadsUp()Z
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRowPinned()Z
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRowRemoved()Z
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSensitive()Z
    .locals 0

    .line 817
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    return p0
.end method

.method public isSummaryWithChildren()Z
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopBucket()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsTopBucket:Z

    return p0
.end method

.method public isTopLevelChild()Z
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isTopLevelChild()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$createIcons$0$NotificationEntry(I)V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 345
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconsVisible(Z)V

    :cond_1
    return-void
.end method

.method public mustStayOnScreen()Z
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInterruption()V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    return-void
.end method

.method public notifyHeightChanged(Z)V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onInflationTaskFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-void
.end method

.method public onRemoteInputInserted()V
    .locals 2

    const-wide/16 v0, -0x7d0

    .line 469
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    return-void
.end method

.method public populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 2

    .line 185
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->channel:Landroid/app/NotificationChannel;

    .line 186
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastAudiblyAlertedMs:J

    .line 187
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    .line 188
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->ambient:Z

    .line 189
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->snoozeCriteria:Ljava/util/List;

    .line 190
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getUserSentiment()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->userSentiment:I

    .line 191
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartActions:Ljava/util/List;

    .line 193
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/CharSequence;

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

    .line 196
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suppressedVisualEffects:I

    .line 197
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suspended:Z

    .line 198
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble:Z

    return-void
.end method

.method public removeRow()V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setRemoved()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reset()V

    :cond_0
    return-void
.end method

.method public resetUserExpansion()V
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetUserExpansion()V

    :cond_0
    return-void
.end method

.method public rowExists()Z
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 515
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setAutoHeadsUp(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAutoHeadsUp:Z

    return-void
.end method

.method public setDebugThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDebugThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    :cond_0
    return-void
.end method

.method public setHasSentReply()V
    .locals 1

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUp(Z)V

    :cond_0
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_0
    return-void
.end method

.method public setHeadsUpIsVisible()V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpIsVisible()V

    :cond_0
    return-void
.end method

.method public setIconTag(ILjava/lang/Object;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 372
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p0, :cond_2

    .line 373
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    .line 440
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    .line 441
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz p0, :cond_0

    .line 442
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/InflationTask;->supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V

    :cond_0
    return-void
.end method

.method public setInitializationTime(J)V
    .locals 4

    .line 508
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 509
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    return-void
.end method

.method public setIsHighPriority(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mHighPriority:Z

    return-void
.end method

.method public setIsTopBucket(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsTopBucket:Z

    return-void
.end method

.method public setKeepInParent(Z)V
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setKeepInParent(Z)V

    :cond_0
    return-void
.end method

.method public setOnSensitiveChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitiveChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setPulseSuppressed(Z)V
    .locals 0

    .line 829
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    return-void
.end method

.method public setRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public setRowPinned(Z)V
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setPinned(Z)V

    :cond_0
    return-void
.end method

.method public setSensitive(ZZ)V
    .locals 1

    .line 807
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 808
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    if-eq p1, p2, :cond_0

    .line 809
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 810
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitiveChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 811
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    return-void
.end method

.method public shouldSuppressAmbient()Z
    .locals 1

    const/16 v0, 0x80

    .line 762
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressFullScreenIntent()Z
    .locals 1

    const/4 v0, 0x4

    .line 738
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressNotificationDot()Z
    .locals 1

    const/16 v0, 0x40

    .line 780
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressNotificationList()Z
    .locals 1

    const/16 v0, 0x100

    .line 770
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressPeek()Z
    .locals 1

    const/16 v0, 0x10

    .line 746
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressStatusBar()Z
    .locals 1

    const/16 v0, 0x20

    .line 754
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public showingPulsing()Z
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 389
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 390
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 391
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 395
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 396
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 397
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 398
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 405
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t update centered icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_1
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t update icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
