.class Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl$1;
.super Landroid/os/Handler;
.source "WifiCallingControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wificalling/ImsReceiver;->wfcNeedsAttention(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_wfc_on:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_wfc_off:I

    .line 41
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedsAttention: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " IMS_STATE_CHANGED-wfc available: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiCallingController"

    invoke-static {v2, v0}, Lcom/android/systemui/wificalling/ImsReceiver;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiCallingControllerImpl;->fireCallback(Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;)V

    :goto_2
    return-void
.end method
