.class public Lcom/android/systemui/doze/DozeWallpaperState;
.super Ljava/lang/Object;
.source "DozeWallpaperState.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mIsAmbientMode:Z

.field private final mWallpaperManagerService:Landroid/app/IWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeWallpaperState"

    const/4 v1, 0x3

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 1

    const-string v0, "wallpaper"

    .line 48
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    .line 47
    invoke-direct {p0, v0, p2, p1}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "DozeWallpaperState:"

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isAmbientMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 5

    const-string v0, "DozeWallpaperState"

    .line 64
    sget-object v1, Lcom/android/systemui/doze/DozeWallpaperState$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    goto :goto_2

    .line 82
    :cond_0
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v4, :cond_1

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    .line 84
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_2

    .line 85
    iget-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->unlockedByWakeAndUnlock()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    .line 89
    :goto_2
    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    if-eq v1, p2, :cond_7

    .line 90
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    if-eqz p1, :cond_5

    const-wide/16 p1, 0x1f4

    goto :goto_3

    :cond_5
    const-wide/16 p1, 0x0

    .line 93
    :goto_3
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOD wallpaper state changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animationDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 100
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot notify state to WallpaperManagerService: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
