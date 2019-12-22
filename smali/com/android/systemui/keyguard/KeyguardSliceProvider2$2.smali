.class Lcom/android/systemui/keyguard/KeyguardSliceProvider2$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    .line 156
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->updateClockLocked()V

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider2;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider2;->cleanDateFormatLocked()V

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
