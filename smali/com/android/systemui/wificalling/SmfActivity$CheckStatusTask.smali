.class Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;
.super Landroid/os/AsyncTask;
.source "SmfActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wificalling/SmfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckStatusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wificalling/SmfActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wificalling/SmfActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;->this$0:Lcom/android/systemui/wificalling/SmfActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wificalling/SmfActivity;Lcom/android/systemui/wificalling/SmfActivity$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;-><init>(Lcom/android/systemui/wificalling/SmfActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;->this$0:Lcom/android/systemui/wificalling/SmfActivity;

    invoke-static {p1}, Lcom/android/systemui/wificalling/SmfActivity;->access$100(Lcom/android/systemui/wificalling/SmfActivity;)Lcom/sprint/ms/smf/ServicesHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;->this$0:Lcom/android/systemui/wificalling/SmfActivity;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p1, v0, p0, v1}, Lcom/sprint/ms/smf/ServicesHelper;->requestManageWifiCalling(Lcom/sprint/ms/smf/oauth/OAuthToken;Landroid/app/Activity;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wificalling/SmfActivity$CheckStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
