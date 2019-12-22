.class public Lcom/sprint/ms/smf/activities/AddressEntryFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/webkit/WebView;

.field private d:Lcom/sprint/ms/smf/activities/VowifiEnablement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->d:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/sprint/ms/smf/activities/VowifiEnablement;

    iput-object p1, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->d:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .line 60
    sget p3, Lcom/sprint/ms/smf/R$layout;->fragment_sprint_smf_address_entry:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    sget p2, Lcom/sprint/ms/smf/R$id;->sprint_smf_vowifi_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    .line 63
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object p3, Lcom/sprint/ms/smf/internal/b/a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 69
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 70
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    new-instance p3, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;

    invoke-direct {p3, p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment$1;-><init>(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 153
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    new-instance p3, Lcom/sprint/ms/smf/activities/AddressEntryFragment$2;

    invoke-direct {p3, p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment$2;-><init>(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 183
    new-instance p2, Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;

    invoke-direct {p2, p0, v0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;-><init>(Lcom/sprint/ms/smf/activities/AddressEntryFragment;B)V

    .line 184
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p3, v0, :cond_0

    .line 185
    iget-object p3, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    const-string v0, "WiFiCallingWebViewController"

    invoke-virtual {p3, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->d:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    .line 1172
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a:Ljava/lang/String;

    .line 188
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object p1
.end method
