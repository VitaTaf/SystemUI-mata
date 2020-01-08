.class public Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;
.super Ljava/lang/Object;
.source "WifiCallingControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/WifiCallingController;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/WifiCallingController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Lcom/android/systemui/wificalling/ImsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/WifiCallingController$Callback;)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "WifiCallingController"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/wificalling/ImsReceiver;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mReceiver:Lcom/android/systemui/wificalling/ImsReceiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/wificalling/ImsReceiver;->setListening(Z)V

    .line 71
    monitor-exit v0

    return-void

    .line 67
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected fireCallback(Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiCallingController$Callback;

    .line 97
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/WifiCallingController$Callback;->setWifiIndicators(Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;)V

    goto :goto_0

    .line 99
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Lcom/android/systemui/wificalling/ImsReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mHandler:Landroid/os/Handler;

    const-string v2, "WifiCallingController"

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/wificalling/ImsReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->mReceiver:Lcom/android/systemui/wificalling/ImsReceiver;

    return-void
.end method
