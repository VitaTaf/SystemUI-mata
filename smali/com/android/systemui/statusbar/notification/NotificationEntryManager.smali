.class public Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/NotificationUpdateHandler;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field protected mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotificationEntryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryListener;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLifetimeExtenders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

.field protected final mPendingNotifications:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

.field private final mRetainedNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotificationEntryMgr"

    const/4 v1, 0x3

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    .line 84
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    .line 127
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    return-void
.end method

.method private abortExistingInflation(Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 209
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    :cond_1
    return-void
.end method

.method private addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 387
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 388
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNotification key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationEntryMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 393
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 394
    invoke-virtual {p2, v0, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 396
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 398
    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v1, p2, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    .line 403
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 407
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 542
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 544
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_0
    return-void
.end method

.method private extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 v1, 0x0

    .line 535
    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 537
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 538
    invoke-interface {p2, p1, p0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method private getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    if-nez v0, :cond_0

    .line 145
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;)V
    .locals 7

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 355
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 365
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 367
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    .line 370
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForSmartReplyHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    :goto_3
    if-nez v4, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 377
    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setKeepInParent(Z)V

    .line 380
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    const/4 v2, 0x1

    .line 203
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    return-object p0
.end method

.method private removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p1, p6}, Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;->onNotificationRemoveRequested(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_2

    .line 290
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 291
    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 300
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    :cond_3
    if-eqz p6, :cond_7

    .line 306
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v2

    if-nez p4, :cond_5

    if-nez v2, :cond_5

    .line 308
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 309
    invoke-interface {v3, p6}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 310
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 311
    invoke-direct {p0, p6, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    move v0, v1

    :cond_5
    if-nez v0, :cond_7

    .line 322
    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 324
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 325
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    .line 329
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleGroupSummaryRemoved(Ljava/lang/String;)V

    .line 331
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 333
    const-class p1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p1, p6}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    or-int p1, p5, v2

    .line 336
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 337
    invoke-interface {p2, p6, p3, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;
    .locals 1

    .line 549
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    if-eqz p0, :cond_0

    return-object p0

    .line 550
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "You must initialize NotificationEntryManager by callingsetRowBinder() before using."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 423
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    const-string v1, "NotificationEntryMgr"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 434
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 436
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v2, v0, p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/StatusBarNotification;)V

    .line 438
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 439
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object p2

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$RJEcTAo4cuGvAgvl2zrMgzSF4kM;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$RJEcTAo4cuGvAgvl2zrMgzSF4kM;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {p2, v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 446
    sget-boolean p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz p2, :cond_4

    .line 448
    const-class p2, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    .line 449
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    const-string p1, "not "

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for you"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 454
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 516
    :cond_0
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 517
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 518
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 519
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 415
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$B9Rprc7VWCrqKYHxmFbKGPst6oI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$B9Rprc7VWCrqKYHxmFbKGPst6oI;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V

    return-void
.end method

.method public addNotificationLifetimeExtenders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "NotificationEntryManager state:"

    .line 104
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mPendingNotifications="

    .line 105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 110
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "  Lifetime-extended notifications:"

    .line 113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "    None"

    .line 115
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 118
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " retained by "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    return-object p0
.end method

.method public getPendingNotificationsIterator()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 7

    .line 227
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    .line 226
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 230
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onInflationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$addNotificationInternal$1$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x2

    .line 400
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public synthetic lambda$addNotificationLifetimeExtender$0$NotificationEntryManager(Ljava/lang/String;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public synthetic lambda$updateNotificationInternal$2$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x2

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 244
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    .line 246
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->add(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 247
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 248
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onBeforeNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 251
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 252
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    .line 255
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 256
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public onReorderingAllowed()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 8

    .line 192
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v4

    .line 194
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v7, p2

    .line 193
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 7

    .line 265
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    return-void
.end method

.method public setNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    return-void
.end method

.method public setRowBinder(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 462
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 464
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 483
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 486
    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v5

    .line 487
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 493
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 499
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 500
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    .line 501
    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v7

    .line 497
    invoke-interface {v4, v3, v5, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->onNotificationRankingUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)V

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 506
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 507
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public updateNotifications()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->filterAndSort()V

    .line 470
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz p0, :cond_0

    .line 471
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    :cond_0
    return-void
.end method
