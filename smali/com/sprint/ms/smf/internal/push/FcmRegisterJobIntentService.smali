.class public Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;
.super Landroid/support/v4/app/JobIntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/JobIntentService;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 216
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "carrierIdentifierGroup"

    .line 217
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 221
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1a

    const-string v4, "serial"

    if-lt v2, v3, :cond_0

    .line 222
    :try_start_1
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 224
    :cond_0
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "androidIdentifierGroup"

    .line 226
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 232
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 238
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "androidProfile"

    .line 239
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->c()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "events"

    .line 242
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "registrationId"

    .line 245
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "gcmRegistrant"

    .line 246
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 250
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "versionName"

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "versionCode"

    .line 253
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 260
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    invoke-static {v2}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const-string v2, "androidAppVersion"

    .line 265
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 271
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    const/4 v3, 0x1

    if-lt p1, v2, :cond_4

    const-string p1, "phone"

    .line 272
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_3

    .line 273
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 278
    :try_start_3
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "hiddenSMS"

    .line 279
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "deviceAttributes"

    .line 280
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 286
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 294
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->d()Ljava/lang/String;

    move-result-object p0

    const-string p1, "preferredLocaleId"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 110
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "manufacturer"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v1, "versionIncremental"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "versionRelease"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "versionSdkInt"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 50
    const-class v0, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;

    const/16 v1, 0x7d4

    invoke-static {p0, v0, v1, p1}, Landroid/support/v4/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private b()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 124
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v1

    .line 126
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 127
    invoke-virtual {v1}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_start_0
    const-string v3, "mdn"

    .line 130
    invoke-virtual {v1}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 136
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "mcc"

    .line 142
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 148
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {p0, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-static {v1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "mnc"

    .line 154
    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 160
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    :try_start_3
    const-string v0, "phone"

    .line 166
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    :goto_3
    const/4 v1, 0x1

    const-string v3, "phoneType"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    .line 178
    :try_start_4
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 170
    :cond_4
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 174
    :cond_5
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 186
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 187
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-object v2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    .line 359
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 374
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 380
    new-instance v4, Lcom/sprint/ms/smf/internal/b/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sprint/ms/smf/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/device/android/v1/registrations"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/sprint/ms/smf/internal/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    .line 381
    invoke-virtual {v4, v5, v6}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string v5, "x-spr-date"

    sget-object v6, Lcom/sprint/ms/smf/internal/b/a;->a:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 382
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 383
    invoke-virtual {v4, p1}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    const-string p1, "POST"

    .line 384
    invoke-virtual {v4, p1}, Lcom/sprint/ms/smf/internal/b/a;->b(Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 386
    invoke-static {v4}, Lcom/sprint/ms/smf/internal/c/e;->a(Lcom/sprint/ms/smf/internal/b/a;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "Authorization"

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SPWS1 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HmacSHA1"

    .line 388
    invoke-static {v7, v3, p1}, Lcom/sprint/ms/smf/internal/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {v4, v5, p1}, Lcom/sprint/ms/smf/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ms/smf/internal/b/a;

    .line 390
    invoke-virtual {v4}, Lcom/sprint/ms/smf/internal/b/a;->e()Lcom/sprint/ms/smf/internal/b/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3050
    iget v3, p1, Lcom/sprint/ms/smf/internal/b/b;->b:I

    const/16 v4, 0x190

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    .line 4041
    iget-object p1, p1, Lcom/sprint/ms/smf/internal/b/b;->c:Ljava/lang/String;

    .line 396
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "standardResponse"

    .line 397
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "success"

    .line 399
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "deviceIdentifier"

    .line 400
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-static {v2}, Lcom/sprint/ms/smf/internal/c/b;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/b;

    move-result-object v2

    .line 402
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->e()J

    move-result-wide v3

    .line 404
    invoke-virtual {v0, p1}, Lcom/sprint/ms/smf/d;->h(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sprint/ms/smf/d;->f(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2}, Lcom/sprint/ms/smf/internal/c/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sprint/ms/smf/d;->g(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/d;->a(Z)V

    .line 408
    invoke-virtual {v0, v3, v4}, Lcom/sprint/ms/smf/d;->a(J)V

    .line 409
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sprint/ms/smf/d;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

.method private c()Lorg/json/JSONArray;
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    const/4 p0, 0x0

    .line 208
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 209
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .line 303
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 310
    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    if-eqz p0, :cond_2

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v3, 0x5f

    if-lt v0, v1, :cond_1

    .line 315
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2d

    .line 317
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 320
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 325
    :try_start_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_3

    .line 329
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 336
    :cond_3
    :goto_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "en_US"

    :cond_4
    return-object p0
.end method

.method private e()J
    .locals 2

    .line 347
    new-instance p0, Lcom/sprint/a/a/a/b/a;

    invoke-direct {p0}, Lcom/sprint/a/a/a/b/a;-><init>()V

    .line 349
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1045
    iput-object v0, p0, Lcom/sprint/a/a/a/b/a;->a:Ljava/lang/String;

    .line 350
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1060
    iput-object v0, p0, Lcom/sprint/a/a/a/b/a;->b:Ljava/lang/String;

    .line 351
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 1075
    iput-object v0, p0, Lcom/sprint/a/a/a/b/a;->c:Ljava/lang/String;

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1105
    iput-object v0, p0, Lcom/sprint/a/a/a/b/a;->e:Ljava/lang/Integer;

    .line 353
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2090
    iput-object v0, p0, Lcom/sprint/a/a/a/b/a;->d:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/sprint/a/a/a/b/a;->a()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 7

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 59
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "com.sprint.ms.smf.action.GCM_REGISTER"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.sprint.ms.smf.action.QUV_REPORT"

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/sprint/ms/smf/internal/push/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    invoke-static {p0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->h()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->e()Z

    move-result v5

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "smf_event_state_changed"

    .line 74
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v5, v3

    .line 76
    invoke-virtual {v1, v5}, Lcom/sprint/ms/smf/d;->a(Z)V

    .line 86
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 88
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 91
    invoke-virtual {v1, p1}, Lcom/sprint/ms/smf/d;->e(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->b(Ljava/lang/String;)Z

    return-void

    :cond_4
    if-nez v5, :cond_5

    .line 95
    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->p()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->q()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->e()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->g()J

    move-result-wide v5

    cmp-long p1, v2, v5

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sprint/ms/smf/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 97
    :cond_5
    invoke-direct {p0, v4}, Lcom/sprint/ms/smf/internal/push/FcmRegisterJobIntentService;->b(Ljava/lang/String;)Z

    :cond_6
    return-void
.end method
