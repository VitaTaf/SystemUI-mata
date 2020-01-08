.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 23
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    new-array v0, v0, [I

    .line 31
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_1:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_2:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_3:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4:I

    const/4 v5, 0x4

    aput v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    new-array v0, v4, [[I

    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x108053f
        0x1080540
        0x1080541
        0x1080542
        0x1080543
    .end array-data
.end method
