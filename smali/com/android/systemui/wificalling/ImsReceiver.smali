.class public Lcom/android/systemui/wificalling/ImsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private isWifiCallingAvaible:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ImsReceiver"

    .line 19
    iput-object v0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->isWifiCallingAvaible:Z

    .line 30
    iput-object p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/wificalling/ImsReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->TAG:Ljava/lang/String;

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mRegistered:Z

    .line 34
    iget-object p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private isWifiCallingAvailable()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result p0

    return p0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wfcNeedsAttention(Landroid/content/Context;)Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "net.lte.ims.wfc.provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "essential.intent.action.IMS_CAPABILITY_CHANGED"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/wificalling/ImsReceiver;->isWifiCallingAvailable()Z

    move-result p1

    .line 57
    iget-object p2, p0, Lcom/android/systemui/wificalling/ImsReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiCallingAvaible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->isWifiCallingAvaible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " incoming wifiCallingAvaible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/wificalling/ImsReceiver;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-boolean p2, p0, Lcom/android/systemui/wificalling/ImsReceiver;->isWifiCallingAvaible:Z

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->isWifiCallingAvaible:Z

    const/16 p1, 0x64

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->isWifiCallingAvaible:Z

    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 40
    iget-object p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Registering receiver"

    invoke-static {p1, v0}, Lcom/android/systemui/wificalling/ImsReceiver;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "essential.intent.action.IMS_CAPABILITY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 45
    iget-boolean p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Unregistering receiver"

    invoke-static {p1, v0}, Lcom/android/systemui/wificalling/ImsReceiver;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/wificalling/ImsReceiver;->mRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
