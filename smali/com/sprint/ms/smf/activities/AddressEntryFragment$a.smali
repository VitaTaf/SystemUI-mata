.class final Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/activities/AddressEntryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;


# direct methods
.method private constructor <init>(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/ms/smf/activities/AddressEntryFragment;B)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;-><init>(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)V

    return-void
.end method


# virtual methods
.method public final cancelButtonPressed()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 220
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p0

    const/16 v0, 0x65

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IZ)V

    return-void
.end method

.method public final phoneServicesAccountStatusChanged()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 213
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/AddressEntryFragment$a;->a:Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;->a(Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/VowifiEnablement;

    move-result-object p0

    .line 1179
    new-instance v0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;-><init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;B)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
