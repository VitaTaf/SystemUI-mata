.class public Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHiSyncId:J

.field private mIsActiveDeviceA2dp:Z

.field private mIsActiveDeviceHeadset:Z

.field private mIsActiveDeviceHearingAid:Z

.field mJustDiscovered:Z

.field private final mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private final mProfileLock:Ljava/lang/Object;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field mRssi:S

.field private mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 97
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 99
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 100
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 101
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    const-wide/16 p1, 0x0

    .line 102
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 5

    .line 252
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 258
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 263
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CachedBluetoothDevice"

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No profiles. Maybe we will connect later for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 234
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz p1, :cond_2

    .line 235
    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->accessProfileEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 236
    :cond_2
    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_3
    const-string p1, "CachedBluetoothDevice"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preferred profiles = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    .line 246
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    .line 248
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address:"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, " Profile:"

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensurePaired()Z
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private fetchActiveDevices()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    :cond_2
    return-void
.end method

.method private fillData()V
    .locals 0

    .line 344
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 345
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    .line 346
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 347
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 349
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "bluetooth_message_permission"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 777
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 781
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v2

    if-nez v2, :cond_2

    .line 782
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 783
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 785
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 787
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 791
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 792
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 793
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "bluetooth_phonebook_permission"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 753
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 757
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    if-nez v2, :cond_2

    .line 758
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 759
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 761
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 763
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 767
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 768
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 769
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private processPhonebookAccess()V
    .locals 5

    .line 797
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 800
    sget-object v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    if-nez v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x408

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 806
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x404

    if-ne v0, v1, :cond_2

    :cond_1
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "138529441"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 808
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 810
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    :cond_3
    return-void
.end method

.method private updateProfiles()Z
    .locals 10

    .line 560
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    if-nez v3, :cond_1

    return v8

    .line 569
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->processPhonebookAccess()V

    .line 571
    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v9

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 574
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating profiles for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p0, "CachedBluetoothDevice"

    const-string v1, "UUID:"

    .line 581
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    array-length p0, v0

    :goto_0
    if-ge v8, p0, :cond_3

    aget-object v1, v0, v8

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 574
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 5

    .line 724
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 728
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 729
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    .line 733
    :cond_3
    iget-boolean v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v0

    .line 737
    :cond_4
    iget-short v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    .line 741
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public connect(Z)V
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 194
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    return-void
.end method

.method declared-synchronized connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 280
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CachedBluetoothDevice"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disconnect()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 167
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 169
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 169
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command sent successfully:DISCONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CachedBluetoothDevice"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method dispatchAttributesChanged()V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 696
    invoke-interface {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 698
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 708
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getBondState()I
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    return p0
.end method

.method public getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    return-object p0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getHiSyncId()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    return-wide v0
.end method

.method public getMaxConnectionState()I
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 819
    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v3

    if-le v3, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 824
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 338
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSubDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isActiveDevice(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActiveDevice: unknown profile "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CachedBluetoothDevice"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 507
    :cond_0
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    return p0

    .line 503
    :cond_1
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    return p0

    .line 505
    :cond_2
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    return p0
.end method

.method public isConnected()Z
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 530
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    .line 532
    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 536
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 537
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHearingAidDevice()Z
    .locals 4

    .line 209
    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActiveDeviceChanged(ZI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/16 v2, 0x15

    if-eq p2, v2, :cond_0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveDeviceChanged: unknown profile "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isActive "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CachedBluetoothDevice"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_0
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    if-eq p2, p1, :cond_1

    move v1, v0

    .line 475
    :cond_1
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    goto :goto_0

    .line 466
    :cond_2
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    if-eq p2, p1, :cond_3

    move v1, v0

    .line 467
    :cond_3
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    goto :goto_0

    .line 470
    :cond_4
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eq p2, p1, :cond_5

    move v1, v0

    .line 471
    :cond_5
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    :goto_0
    if-eqz v1, :cond_6

    .line 483
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_6
    return-void
.end method

.method onAudioModeChanged()V
    .locals 0

    .line 491
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method onBondingDockConnect()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 639
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 641
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 642
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 639
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 645
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 648
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    goto :goto_1

    .line 650
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileStateChanged: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newProfileState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const-string p0, "CachedBluetoothDevice"

    const-string p1, " BT Turninig Off...Profile conn state change ignored..."

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 136
    :try_start_0
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 137
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 140
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 143
    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0

    .line 148
    :cond_2
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 150
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 151
    :cond_3
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 152
    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    const-string p2, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    .line 154
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 159
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    return-void

    :catchall_0
    move-exception p0

    .line 159
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method onUuidChanged()V
    .locals 7

    .line 608
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 609
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 612
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x7530

    goto :goto_0

    .line 614
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HearingAid:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3a98

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1388

    .line 619
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUuidChanged: Time since last connect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CachedBluetoothDevice"

    .line 619
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v2, v0

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 629
    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method refresh()V
    .locals 0

    .line 442
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method refreshName()V
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 683
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 684
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setHiSyncId(J)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHiSyncId: mDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    return-void
.end method

.method public setJustDiscovered(Z)V
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    if-eq v0, p1, :cond_0

    .line 447
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 448
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method setRssi(S)V
    .locals 1

    .line 516
    iget-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 517
    iput-short p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 518
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method public setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public startPairing()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public switchSubDeviceContent()V
    .locals 5

    .line 1101
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1102
    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 1103
    iget-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 1105
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1106
    iget-short v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iput-short v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 1107
    iget-boolean v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iput-boolean v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 1109
    iput-object v0, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1110
    iput-short v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 1111
    iput-boolean v2, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 1112
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unpair()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CachedBluetoothDevice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
