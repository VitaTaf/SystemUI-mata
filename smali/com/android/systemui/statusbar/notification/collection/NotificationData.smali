.class public Lcom/android/systemui/statusbar/notification/collection/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;
    }
.end annotation


# instance fields
.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

.field private final mFilteredForUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field protected final mRankingComparator:Ljava/util/Comparator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    .line 62
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 63
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 66
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 458
    iget-object v0, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] key="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " icon="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    iget-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 462
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      pkg="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " importance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 464
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "      notification="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    if-nez v0, :cond_0

    .line 143
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    return-object p0
.end method

.method private getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-nez v0, :cond_0

    .line 150
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method private hasHighPriorityCharacteristics(Landroid/app/NotificationChannel;Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 270
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isImportantOngoing(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 271
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->hasPerson(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->hasStyle(Landroid/app/Notification;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private hasPerson(Landroid/app/Notification;)Z
    .locals 0

    .line 298
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p1, "android.people.list"

    .line 299
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 300
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_1

    .line 301
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private hasStyle(Landroid/app/Notification;Ljava/lang/Class;)Z
    .locals 0

    .line 292
    invoke-virtual {p1}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object p0

    .line 293
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isImportantOngoing(Landroid/app/Notification;)Z
    .locals 0

    .line 287
    invoke-virtual {p1}, Landroid/app/Notification;->isForegroundService()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 288
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 470
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    .line 471
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 370
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 371
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 375
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 379
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 381
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v4}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 382
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 385
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isHighPriority(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsHighPriority(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 389
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->filterAndSort()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void

    :catchall_0
    move-exception p0

    .line 192
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 435
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active notifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 439
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 440
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 444
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inactive notifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v1, v3, :cond_2

    .line 448
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 449
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 450
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 454
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public filterAndSort()V
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 413
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 415
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, v1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_2

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 421
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNotificationsForCurrentUser()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 175
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    return-object p0

    :catchall_0
    move-exception p0

    .line 181
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 331
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRank(Ljava/lang/String;)I
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 402
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result p0

    return p0
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 315
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e8

    return p0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHighPriority(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 251
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    .line 250
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->hasHighPriorityCharacteristics(Landroid/app/NotificationChannel;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 256
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 258
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isHighPriority(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 205
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 202
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 215
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 216
    iput-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public updateAppOp(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 228
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 229
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    if-ne p2, v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 230
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 231
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p5, :cond_0

    .line 233
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_0
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method
