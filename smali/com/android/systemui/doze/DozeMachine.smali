.class public Lcom/android/systemui/doze/DozeMachine;
.super Ljava/lang/Object;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeMachine$Service;,
        Lcom/android/systemui/doze/DozeMachine$Part;,
        Lcom/android/systemui/doze/DozeMachine$State;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

.field private mPulseReason:I

.field private final mQueuedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/doze/DozeMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/systemui/doze/DozeMachine$State;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWakeLockHeldForCurrentState:Z

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    .line 127
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    .line 133
    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 134
    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 135
    iput-object p4, p0, Lcom/android/systemui/doze/DozeMachine;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 136
    iput-object p3, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method

.method private performTransitionOnComponents(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 266
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/doze/DozeMachine$Part;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    :goto_1
    return-void
.end method

.method private requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 3

    .line 171
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 172
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request: current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "DozeMachine"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 180
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "DozeMachine#requestState"

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private resolveIntermediateState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    .line 338
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 347
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_1

    .line 349
    :cond_2
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_1

    .line 345
    :cond_3
    :goto_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    :goto_1
    const/4 v0, -0x1

    .line 352
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    :goto_2
    return-void
.end method

.method private transitionPolicy(Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    return-object v1

    .line 313
    :cond_0
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const-string v2, "DozeMachine"

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_2

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropping pulse done because current state is already done: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 319
    :cond_2
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine$State;->canPulse()Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropping pulse request because current state can\'t pulse: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    :cond_3
    return-object p1
.end method

.method private transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 5

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->transitionPolicy(Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    .line 233
    sget-boolean v1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transition: old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DozeMachine"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, p1, :cond_1

    return-void

    .line 241
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->validateTransition(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 243
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 244
    iput-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 246
    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->traceState(Lcom/android/systemui/doze/DozeMachine$State;)V

    const-wide/16 v1, 0x1000

    .line 247
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "doze_machine_state"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 249
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/doze/DozeMachine;->updatePulseReason(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;I)V

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeMachine;->performTransitionOnComponents(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->updateWakeLockState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 253
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->resolveIntermediateState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method private updatePulseReason(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 1

    .line 257
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_0

    .line 258
    iput p3, p0, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    goto :goto_0

    .line 259
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_1

    const/4 p1, -0x1

    .line 260
    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWakeLockState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    .line 327
    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->staysAwake()Z

    move-result p1

    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    const-string v1, "DozeMachine#heldForState"

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {p1, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    goto :goto_0

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {p1, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private validateTransition(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 5

    .line 279
    :try_start_0
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    goto :goto_2

    .line 281
    :cond_0
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_2

    .line 284
    :cond_2
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 287
    :goto_2
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x6

    if-eq v0, v4, :cond_a

    const/16 v4, 0xb

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    goto :goto_6

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_6

    .line 289
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t transition to UNINITIALIZED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :cond_9
    :goto_4
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_6

    .line 294
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_b

    goto :goto_5

    :cond_b
    move v2, v3

    :goto_5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    .line 305
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, " state="

    .line 361
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, " wakeLockHeldForCurrentState="

    .line 362
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " wakeLock="

    .line 363
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "Parts:"

    .line 364
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 366
    invoke-interface {v2, p1}, Lcom/android/systemui/doze/DozeMachine$Part;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPulseReason()I
    .locals 3

    .line 213
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must be in pulsing state, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 218
    iget p0, p0, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    return p0
.end method

.method public getState()Lcom/android/systemui/doze/DozeMachine$State;
    .locals 3

    .line 198
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get state because there were pending transitions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExecutingTransition()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public requestPulse(I)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 167
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    return-void
.end method

.method public requestState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    .line 157
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v0, -0x1

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    return-void
.end method

.method public setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 142
    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    return-void
.end method

.method public wakeUp()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeMachine$Service;->requestWakeUp()V

    return-void
.end method
