.class final Lcom/sprint/ms/smf/activities/VowifiEnablement$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ms/smf/activities/VowifiEnablement;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/activities/VowifiEnablement;


# direct methods
.method constructor <init>(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I

    move-result v0

    const/16 v1, -0x258

    if-eq v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    sget v1, Lcom/sprint/ms/smf/R$string;->sprint_smf_activity_error_loading:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->b(Lcom/sprint/ms/smf/activities/VowifiEnablement;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(IZ)V

    return-void

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->c(Lcom/sprint/ms/smf/activities/VowifiEnablement;)V

    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    .line 203
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->d(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    new-instance v1, Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    invoke-direct {v1}, Lcom/sprint/ms/smf/activities/AddressEntryFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Lcom/sprint/ms/smf/activities/AddressEntryFragment;)Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    .line 208
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->e(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/sprint/ms/smf/R$id;->sprint_smf_main_content:I

    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$1;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    .line 210
    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->d(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/activities/AddressEntryFragment;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
