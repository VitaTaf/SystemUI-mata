.class public Lcom/android/systemui/usb/UsbPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPermissionGranted:Z

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 63
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const-string v0, "accessory"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const-string v0, "android.intent.extra.INTENT"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    const-string v0, "android.hardware.usb.extra.PACKAGE"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    .line 71
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 85
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 86
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_0

    .line 87
    sget v3, Lcom/android/systemui/R$string;->usb_accessory_permission_prompt:I

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v0

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 88
    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 87
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 89
    new-instance v3, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_0

    .line 91
    :cond_0
    sget v6, Lcom/android/systemui/R$string;->usb_device_permission_prompt:I

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v0

    .line 92
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    .line 91
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 93
    new-instance v3, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    :goto_0
    const v3, 0x104000a

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v3, 0x1040000

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 97
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_3

    .line 100
    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz p1, :cond_3

    :cond_1
    const-string p1, "layout_inflater"

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v3, 0x1090032

    const/4 v6, 0x0

    .line 104
    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 105
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x10201b2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 106
    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    sget v3, Lcom/android/systemui/R$string;->always_use_accessory:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 108
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    .line 107
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    sget v6, Lcom/android/systemui/R$string;->always_use_device:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    .line 111
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    .line 110
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v0, 0x102020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    .line 117
    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "UsbPermissionActivity"

    const-string v1, "unable to look up package name"

    .line 78
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 6

    const-string v0, "UsbPermissionActivity"

    const-string v1, "usb"

    .line 125
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    .line 129
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v3, :cond_0

    const-string v3, "device"

    .line 132
    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    iget-boolean v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v1, v3, v4}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 135
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    iget v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 137
    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v3}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v3, :cond_1

    const-string v3, "accessory"

    .line 142
    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    iget-boolean v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v1, v3, v4}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 145
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 147
    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v3}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    :cond_1
    const-string v1, "permission"

    .line 151
    iget-boolean v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IUsbService connection failed"

    .line 156
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    const-string v1, "PendingIntent was cancelled"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    :cond_2
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
