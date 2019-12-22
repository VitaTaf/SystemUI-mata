.class Lcom/android/keyguard/KeyguardUpdateMonitor$7;
.super Landroid/content/BroadcastReceiver;
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

    .line 1019
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1023
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_TICK"

    .line 1026
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "android.intent.action.TIME_SET"

    .line 1027
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 1029
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x153

    const-string v1, "time-zone"

    .line 1031
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1030
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1032
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 1033
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const-string p1, "status"

    .line 1034
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string p1, "plugged"

    .line 1035
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string p1, "level"

    .line 1036
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string p1, "health"

    .line 1037
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string p1, "max_charging_current"

    .line 1039
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "max_charging_voltage"

    .line 1040
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-gtz p2, :cond_2

    const p2, 0x4c4b40

    :cond_2
    if-lez p1, :cond_3

    .line 1049
    div-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p2, p2, 0x3e8

    mul-int v2, p1, p2

    :cond_3
    move v9, v2

    .line 1054
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x12e

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIII)V

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1057
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_4
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 1058
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1059
    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v0

    const-string v2, "rebroadcastOnUnlock"

    .line 1064
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1066
    iget-object p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_5

    .line 1067
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x152

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void

    .line 1072
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ss"

    .line 1073
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " slotId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subid: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardUpdateMonitor"

    .line 1072
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x130

    iget p2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1077
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_7
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 1078
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1079
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x131

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    .line 1080
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1079
    invoke-virtual {p0, v0, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 1081
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "state"

    .line 1082
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1083
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x132

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_9
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 1084
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1085
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x149

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_a
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 1086
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1087
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto :goto_1

    :cond_b
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 1088
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1089
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    const-string v0, "subscription"

    .line 1090
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1096
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1097
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x14a

    invoke-virtual {p0, v1, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1096
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_c
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 1098
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1099
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x148

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_d
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1102
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x151

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1028
    :cond_e
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x12d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    :goto_1
    return-void
.end method
