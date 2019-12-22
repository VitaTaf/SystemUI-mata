.class Lcom/android/systemui/keyguard/KeyguardSliceProvider2$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSliceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardSliceProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider2;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->updateClockLocked()V

    .line 145
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    monitor-enter p0

    .line 148
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->cleanDateFormatLocked()V

    .line 149
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
