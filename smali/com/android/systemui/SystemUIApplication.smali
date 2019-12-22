.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;
    }
.end annotation


# instance fields
.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContextAvailableCallback:Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;

.field private mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    const-string p0, "SystemUIService"

    const-string v0, "SystemUIApplication constructed."

    .line 67
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object p0
.end method

.method private startServicesIfNeeded([Ljava/lang/String;)V
    .locals 12

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "sys.boot_completed"

    .line 169
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting SystemUI services for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemUIService"

    .line 177
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-wide/16 v3, 0x1000

    const-string v5, "SystemUIBootTiming"

    invoke-direct {v0, v5, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v3, "StartServices"

    .line 181
    invoke-virtual {v0, v3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 182
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 184
    aget-object v6, p1, v5

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 190
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 192
    instance-of v10, v9, Lcom/android/systemui/SystemUI$Injector;

    if-eqz v10, :cond_2

    .line 193
    check-cast v9, Lcom/android/systemui/SystemUI$Injector;

    invoke-interface {v9, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 195
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    check-cast v9, Lcom/android/systemui/SystemUI;

    aput-object v9, v10, v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iget-object v9, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v10, v9, v5

    iput-object p0, v10, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 205
    aget-object v10, v9, v5

    iget-object v11, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v11, v10, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 207
    aget-object v9, v9, v5

    invoke-virtual {v9}, Lcom/android/systemui/SystemUI;->start()V

    .line 208
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/16 v7, 0x3e8

    cmp-long v7, v9, v7

    if-lez v7, :cond_3

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialization of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " took "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v6, :cond_4

    .line 216
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 197
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 219
    :cond_5
    const-class p1, Lcom/android/systemui/InitController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/InitController;

    invoke-virtual {p1}, Lcom/android/systemui/InitController;->executePostInitTasks()V

    .line 220
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 221
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/SystemUIApplication$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/SystemUIApplication$3;-><init>(Lcom/android/systemui/SystemUIApplication;Landroid/os/Handler;)V

    const-class p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0, v2, p1, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 281
    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 299
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 286
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-static {p1}, Lcom/android/systemui/Dependency;->staticOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 291
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "SystemUIService"

    const-string v1, "SystemUIApplication created."

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemUIBootTiming"

    const-wide/16 v2, 0x1000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "DependencyInjection"

    .line 78
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;

    invoke-interface {v1, p0}, Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 85
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    invoke-virtual {p0, v0}, Landroid/app/Application;->setTheme(I)V

    .line 87
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 90
    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v1, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    :goto_0
    return-void
.end method

.method setContextAvailableCallback(Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;

    return-void
.end method

.method startSecondaryUserServicesIfNeeded()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_systemUIServiceComponentsPerUser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_systemUIServiceComponents:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    return-void
.end method
