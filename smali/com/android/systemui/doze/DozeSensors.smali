.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$PluginSensor;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;,
        Lcom/android/systemui/doze/DozeSensors$ProxSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field final mContext:Landroid/content/Context;

.field private mDebounceFrom:J

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mPaused:Z

.field private final mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field protected mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private mSettingRegistered:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field mPulseByProxOrSigMotion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 246
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$1;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p1

    .line 86
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    .line 87
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p3

    .line 88
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v13, p4

    .line 89
    iput-object v13, v12, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v14, p5

    .line 90
    iput-object v14, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v0, p6

    .line 91
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move-object/from16 v0, p8

    .line 92
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 93
    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    .line 95
    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v15

    const/4 v0, 0x7

    new-array v11, v0, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 96
    new-instance v8, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x11

    .line 98
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 100
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/16 v16, 0x0

    aput-object v8, v11, v16

    new-instance v10, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x19

    .line 104
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 107
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v5

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 111
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupPerformsProxCheck()Z

    move-result v17

    const-string v3, "doze_pulse_on_pick_up"

    const/4 v4, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v19, v10

    move/from16 v10, v17

    move-object v13, v11

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZLcom/android/systemui/doze/DozeSensors$1;)V

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v9, 0x1

    aput-object v0, v13, v9

    new-instance v8, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 113
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 117
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->doubleTapReportsTouchCoordinates()Z

    move-result v6

    const-string v3, "doze_pulse_on_double_tap"

    const/4 v5, 0x4

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v10, 0x2

    aput-object v8, v13, v10

    new-instance v8, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 120
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_tap_gesture"

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x3

    aput-object v8, v13, v0

    new-instance v11, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 127
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_pulse_on_long_press"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v8, 0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZ)V

    const/4 v0, 0x4

    aput-object v11, v13, v0

    new-instance v8, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v10}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 137
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v15, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move/from16 v4, v16

    :goto_0
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "doze_wake_display_gesture"

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v10, 0x6

    new-instance v11, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v9}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 144
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v4

    const/16 v5, 0x8

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 147
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->getWakeLockScreenDebounce()J

    move-result-wide v8

    const-string v3, "doze_wake_screen_gesture"

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJ)V

    aput-object v11, v13, v10

    iput-object v13, v12, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 150
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v1, p9

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v0, p7

    .line 151
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/doze/DozeSensors;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 3

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    .line 170
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 171
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 172
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "  Sensor: "

    .line 274
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "  ProxSensor: "

    .line 276
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isProximityCurrentlyFar()Ljava/lang/Boolean;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onUserSwitched()V
    .locals 3

    .line 237
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 238
    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestTemporaryDisable()V
    .locals 2

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-void
.end method

.method public setDisableSensorsInterferingWithProximity(Z)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setDisabled(Z)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 186
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 198
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    return-void
.end method

.method public setProxListening(Z)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRequested(Z)V

    return-void
.end method

.method public setTouchscreenSensorsListening(Z)V
    .locals 4

    .line 229
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 230
    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->access$100(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v2, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateListening()V
    .locals 8

    .line 207
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 210
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->performsProxCheck()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    .line 211
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    if-eqz v6, :cond_2

    move v4, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 218
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_3

    .line 219
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    if-nez v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 221
    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 224
    :cond_5
    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    return-void
.end method

.method public requestSleep()V
    .locals 3
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPulseByProxOrSigMotion:Z

    if-eqz v0, :cond_return

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPulseByProxOrSigMotion:Z

    .line 111
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 112
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 113
    :cond_return
    return-void
.end method

.method public isKeyguard()Z
    .locals 2

    .line 111
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 112
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 113
    return v0
.end method
