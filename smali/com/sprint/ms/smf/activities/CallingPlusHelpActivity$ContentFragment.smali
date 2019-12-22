.class public Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$ContentFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 p3, 0x0

    const-string v0, "display"

    .line 132
    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 134
    sget v0, Lcom/sprint/ms/smf/R$layout;->fragment_sprint_smf_web_content:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    sget p2, Lcom/sprint/ms/smf/R$id;->sprint_smf_content_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    if-eqz p0, :cond_3

    const/4 p3, 0x1

    if-eq p0, p3, :cond_2

    const/4 p3, 0x2

    if-eq p0, p3, :cond_1

    const/4 p3, 0x3

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "file:///android_asset/wfc_faq.html"

    .line 148
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "file:///android_asset/wfc_overview.html"

    .line 145
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "file:///android_asset/calling_plus_faq.html"

    .line 142
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "file:///android_asset/calling_plus_overview.html"

    .line 139
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
