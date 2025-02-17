.class abstract Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field private mUsingBrightnessSensor:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3

    .line 487
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 490
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 492
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$500(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    .line 493
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    .line 495
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->onProximityResult(I)V

    if-eqz v0, :cond_2

    .line 497
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    const-string v0, "DozeTriggers"

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    .line 499
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 10

    .line 439
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    const-string v0, "DozeTriggers"

    if-nez v6, :cond_2

    .line 442
    sget-boolean v2, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ProxCheck: No sensor found"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    return-void

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$500(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    .line 448
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    .line 449
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v4

    const/4 v7, 0x3

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 450
    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v9

    move-object v5, p0

    .line 449
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 451
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 453
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 461
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const-string v1, "DozeTriggers"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 462
    sget-boolean p1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ProxCheck: Event has no values!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    goto :goto_3

    .line 465
    :cond_1
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxCheck: Event: value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mUsingBrightnessSensor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 472
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    :goto_0
    move v2, v1

    goto :goto_1

    .line 474
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    iget v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    .line 476
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    :goto_3
    return-void
.end method

.method public run()V
    .locals 2

    .line 482
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "ProxCheck: No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 483
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    return-void
.end method
