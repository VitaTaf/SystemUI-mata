.class Lcom/android/systemui/biometrics/BiometricDialogView$2;
.super Landroid/os/Handler;
.source "BiometricDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$2;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricDialogView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$2;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->handleResetMessage()V

    :goto_0
    return-void
.end method
