.class final Lcom/sprint/ms/smf/activities/VowifiEnablement$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/activities/VowifiEnablement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/activities/VowifiEnablement;


# direct methods
.method private constructor <init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;B)V
    .locals 0

    .line 490
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;-><init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2500
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->i(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/c;

    move-result-object p1

    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->h(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/oauth/OAuthToken;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sprint/ms/smf/c;->a(Lcom/sprint/ms/smf/oauth/OAuthToken;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 490
    check-cast p1, Ljava/lang/Integer;

    .line 1505
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1507
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->l(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/d;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 1509
    invoke-virtual {v0, v1}, Lcom/sprint/ms/smf/d;->b(Z)V

    .line 1512
    :cond_0
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->d(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .line 493
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 494
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$b;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->c(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    return-void
.end method
