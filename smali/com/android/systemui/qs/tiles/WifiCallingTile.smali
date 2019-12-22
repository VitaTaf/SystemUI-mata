.class public Lcom/android/systemui/qs/tiles/WifiCallingTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final WIFI_CALLING_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mImsMgr:Lcom/android/ims/ImsManager;

.field private final mWFCSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiCallingSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFI_CALLING_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mImsMgr:Lcom/android/ims/ImsManager;

    .line 175
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWFCSettingsObserver:Landroid/database/ContentObserver;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "wfc_ims_enabled"

    .line 79
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWFCSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 78
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_wfc_on:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 85
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_wfc_off:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 90
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mImsMgr:Lcom/android/ims/ImsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mImsMgr:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private isSprint()Z
    .locals 1

    const-string p0, "ro.boot.carrier.sku"

    const-string v0, "FAILED"

    .line 169
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPRINT"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_wfc_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_wfc_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 113
    sget-object p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFI_CALLING_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1f3

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_wfc_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const-string v0, "WifiCallingTile"

    const-string v1, "Wi-Fi Calling toggle clicked"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wificalling/ImsReceiver;->wfcNeedsAttention(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/wificalling/SmfActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mImsMgr:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 144
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {p2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result p2

    .line 145
    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_wfc_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    .line 147
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_1
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 148
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 149
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isSprint()Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 108
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
