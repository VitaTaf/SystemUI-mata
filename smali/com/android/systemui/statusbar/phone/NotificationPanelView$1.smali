.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 185
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget p2, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 188
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 190
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 p1, 0x168

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;J)V

    :cond_2
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    return-void
.end method
