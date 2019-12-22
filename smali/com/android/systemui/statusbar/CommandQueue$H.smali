.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 831
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .locals 0

    .line 829
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 835
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_39

    :sswitch_0
    move v0, v1

    .line 1090
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 1091
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRecentsAnimationStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1080
    :goto_2
    :sswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 1081
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1075
    :goto_3
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1070
    :goto_4
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1065
    :goto_5
    :sswitch_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 1066
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1060
    :goto_6
    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricError(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1055
    :goto_7
    :sswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricHelp(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1045
    :sswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1046
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 1048
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1047
    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricAuthenticated(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1051
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_39

    .line 1029
    :sswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x2a0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x290000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x280000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1032
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1033
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 1038
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1034
    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1041
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_39

    :sswitch_9
    move v0, v1

    .line 1024
    :goto_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 1025
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_b

    :cond_3
    move v5, v1

    :goto_b
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :sswitch_a
    move v0, v1

    .line 1019
    :goto_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 1020
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_d

    :cond_4
    move v4, v1

    :goto_d
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :sswitch_b
    move v0, v1

    .line 1014
    :goto_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 1015
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_f

    :cond_5
    move v4, v1

    :goto_f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 872
    :goto_10
    :sswitch_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 873
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1009
    :goto_11
    :sswitch_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 1010
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1004
    :goto_12
    :sswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 922
    :goto_13
    :sswitch_f
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 923
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 959
    :goto_14
    :sswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 999
    :goto_15
    :sswitch_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 1000
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 994
    :goto_16
    :sswitch_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 989
    :goto_17
    :sswitch_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 990
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 984
    :goto_18
    :sswitch_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 985
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 979
    :goto_19
    :sswitch_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 980
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 927
    :goto_1a
    :sswitch_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 974
    :goto_1b
    :sswitch_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 975
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 969
    :goto_1c
    :sswitch_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 964
    :goto_1d
    :sswitch_19
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 965
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 952
    :sswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 953
    :goto_1e
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 954
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 955
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_6

    move v10, v2

    goto :goto_1f

    :cond_6
    move v10, v1

    .line 954
    :goto_1f
    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(IJJZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 947
    :goto_20
    :sswitch_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :sswitch_1c
    move v0, v1

    .line 942
    :goto_21
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 943
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_22

    :cond_7
    move v5, v1

    :goto_22
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 937
    :goto_23
    :sswitch_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :sswitch_1e
    move v0, v1

    .line 902
    :goto_24
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 903
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_25

    :cond_8
    move v4, v1

    :goto_25
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_26

    :cond_9
    move v5, v1

    :goto_26
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :sswitch_1f
    move v0, v1

    .line 897
    :goto_27
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 898
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_28

    :cond_a
    move v4, v1

    :goto_28
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 932
    :goto_29
    :sswitch_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 917
    :goto_2a
    :sswitch_21
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 918
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 912
    :goto_2b
    :sswitch_22
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 913
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 907
    :goto_2c
    :sswitch_23
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 908
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 891
    :sswitch_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 892
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/os/IBinder;

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget p0, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz p0, :cond_b

    move v8, v2

    goto :goto_2d

    :cond_b
    move v8, v1

    :goto_2d
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZ)V

    goto/16 :goto_39

    .line 1085
    :goto_2e
    :sswitch_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayReady(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 882
    :sswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 883
    :goto_2f
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 884
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v9, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi6:I

    if-ne v3, v2, :cond_c

    move v12, v2

    goto :goto_30

    :cond_c
    move v12, v1

    :goto_30
    invoke-interface/range {v4 .. v12}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 888
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_39

    .line 877
    :goto_31
    :sswitch_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :sswitch_28
    move v0, v1

    .line 867
    :goto_32
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 868
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_33

    :cond_e
    move v5, v1

    :goto_33
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 862
    :goto_34
    :sswitch_29
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 863
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 855
    :sswitch_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 856
    :goto_35
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 857
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v7, :cond_f

    move v7, v2

    goto :goto_36

    :cond_f
    move v7, v1

    :goto_36
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 838
    :sswitch_2b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    goto :goto_39

    .line 847
    :cond_10
    :goto_37
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 840
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 841
    :goto_38
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_12
    :goto_39
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2b
        0x20000 -> :sswitch_2a
        0x30000 -> :sswitch_29
        0x40000 -> :sswitch_28
        0x50000 -> :sswitch_27
        0x60000 -> :sswitch_26
        0x70000 -> :sswitch_25
        0x80000 -> :sswitch_24
        0x90000 -> :sswitch_23
        0xa0000 -> :sswitch_22
        0xb0000 -> :sswitch_21
        0xc0000 -> :sswitch_20
        0xd0000 -> :sswitch_1f
        0xe0000 -> :sswitch_1e
        0x120000 -> :sswitch_1d
        0x130000 -> :sswitch_1c
        0x140000 -> :sswitch_1b
        0x150000 -> :sswitch_1a
        0x160000 -> :sswitch_19
        0x170000 -> :sswitch_18
        0x180000 -> :sswitch_17
        0x190000 -> :sswitch_16
        0x1a0000 -> :sswitch_15
        0x1b0000 -> :sswitch_14
        0x1c0000 -> :sswitch_13
        0x1d0000 -> :sswitch_12
        0x1e0000 -> :sswitch_11
        0x1f0000 -> :sswitch_10
        0x200000 -> :sswitch_f
        0x210000 -> :sswitch_e
        0x220000 -> :sswitch_d
        0x230000 -> :sswitch_c
        0x240000 -> :sswitch_b
        0x250000 -> :sswitch_a
        0x260000 -> :sswitch_9
        0x270000 -> :sswitch_8
        0x280000 -> :sswitch_7
        0x290000 -> :sswitch_6
        0x2a0000 -> :sswitch_5
        0x2b0000 -> :sswitch_4
        0x2c0000 -> :sswitch_3
        0x2d0000 -> :sswitch_2
        0x2e0000 -> :sswitch_1
        0x2f0000 -> :sswitch_0
    .end sparse-switch
.end method
