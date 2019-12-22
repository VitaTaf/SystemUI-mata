.class public Lcom/android/systemui/wificalling/SmfActivity;
.super Landroid/app/Activity;
.source "SmfActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;
    }
.end annotation


# instance fields
.field private mImsMgr:Lcom/android/ims/ImsManager;

.field private servicesHelper:Lcom/sprint/ms/smf/ServicesHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/wificalling/SmfActivity;->mImsMgr:Lcom/android/ims/ImsManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wificalling/SmfActivity;)Lcom/sprint/ms/smf/ServicesHelper;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/wificalling/SmfActivity;->servicesHelper:Lcom/sprint/ms/smf/ServicesHelper;

    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    const/4 p1, -0x1

    const-string p2, "smf_vowifi_status"

    .line 50
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "SmfActivity"

    if-eqz p2, :cond_0

    const-string p1, "Wi-Fi calling was unprovisioned or had an issue, setting wfc back to factory default settings."

    .line 59
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 60
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 61
    iget-object p3, p0, Lcom/android/systemui/wificalling/SmfActivity;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {p3, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Wi-Fi calling enabled."

    .line 53
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    .line 54
    invoke-static {p0, p3}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/wificalling/SmfActivity;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p3}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "net.lte.ims.wfc.provisioned"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lcom/sprint/ms/smf/ServicesHelper;->get(Landroid/content/Context;)Lcom/sprint/ms/smf/ServicesHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wificalling/SmfActivity;->servicesHelper:Lcom/sprint/ms/smf/ServicesHelper;

    const/4 p1, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, p1

    .line 41
    :goto_0
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wificalling/SmfActivity;->mImsMgr:Lcom/android/ims/ImsManager;

    .line 43
    new-instance v0, Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;-><init>(Lcom/android/systemui/wificalling/SmfActivity;Lcom/android/systemui/wificalling/SmfActivity$1;)V

    new-array p0, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
