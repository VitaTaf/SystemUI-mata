.class Lcom/android/systemui/doze/DozeSensors$ProxSensor;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxSensor"
.end annotation


# instance fields
.field final mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

.field mCurrentlyFar:Ljava/lang/Boolean;

.field mLastNear:J

.field final mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field mRegistered:Z

.field mRequested:Z

.field final mSensor:Landroid/hardware/Sensor;

.field final mUsingBrightnessSensor:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;

.field mJustRequested:Z

.field mSleep:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 4

    .line 297
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 299
    new-instance p2, Lcom/android/systemui/util/AlarmTimeout;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$1rrJyrK-R8bANwbetqs61eKIcvs;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$1rrJyrK-R8bANwbetqs61eKIcvs;-><init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    .line 300
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "prox_cooldown"

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    .line 304
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p2

    .line 305
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {p2, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mUsingBrightnessSensor:Z

    if-nez p2, :cond_1

    .line 308
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 310
    :cond_1
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public static synthetic lambda$1rrJyrK-R8bANwbetqs61eKIcvs(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    return-void
.end method

.method private setRegistered(Z)V
    .locals 3

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mJustRequested:Z

    .line 336
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 337
    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v2

    .line 336
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    goto :goto_0

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method private updateRegistered()V
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRegistered(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setRequested$0$DozeSensors$ProxSensor()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 347
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mUsingBrightnessSensor:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 352
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    .line 356
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 359
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-nez p1, :cond_4

    goto :goto_1

    .line 361
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 362
    iput-wide v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mLastNear:J

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_x

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSleep:Z

    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Od;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Od;-><init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12C

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 363
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSleep:Z

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mJustRequested:Z

    if-nez v0, :cond_6

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iput-boolean v0, p1, Lcom/android/systemui/doze/DozeSensors;->mPulseByProxOrSigMotion:Z

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->pulse()V

    :cond_6
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mJustRequested:Z

    return-void

    :cond_x
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    goto :goto_1
.end method

.method setRequested(Z)V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;-><init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 323
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 379
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 380
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v1}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "{registered=%s, requested=%s, coolingDown=%s, currentlyFar=%s, sensor=%s}"

    .line 379
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pulse()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$1200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZFF[F)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSleep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->requestSleep()V

    .line 81
    :cond_0
    return-void
.end method

.method isScreenOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method