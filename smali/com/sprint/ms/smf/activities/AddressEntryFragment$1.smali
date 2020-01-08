.class final Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ms/smf/activities/AddressEntryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;


# direct methods
.method constructor <init>(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p1}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p1

    sget p2, Lcom/sprint/ms/smf/R$string;->sprint_smf_activity_error_loading:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p0

    const/16 p1, 0x66

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IZ)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p1}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p1

    sget p2, Lcom/sprint/ms/smf/R$string;->sprint_smf_activity_error_loading:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p0

    const/16 p1, 0x66

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IZ)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".pdf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 108
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 114
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-static {p0, p2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 115
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".pdf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 79
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-static {p0, p2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
