.class Lcom/android/keyguard/KeyguardUpdateMonitor$12;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    .line 1210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1205
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3900(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 1188
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1200
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3800(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 1

    const-string v0, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 1193
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1194
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1195
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
