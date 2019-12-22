.class public Lcom/sprint/ms/smf/activities/CallingPlusQuickStartActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;


# instance fields
.field private a:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartActivity;->a:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lcom/sprint/ms/smf/R$layout;->activity_sprint_smf_content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 25
    new-instance p1, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

    invoke-direct {p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;-><init>()V

    iput-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartActivity;->a:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/sprint/ms/smf/R$id;->sprint_smf_main_content:I

    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartActivity;->a:Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;

    .line 27
    invoke-virtual {p1, v0, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onDoneClicked()V
    .locals 1

    const/4 v0, -0x1

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSkipClicked()V
    .locals 1

    const/4 v0, -0x1

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
