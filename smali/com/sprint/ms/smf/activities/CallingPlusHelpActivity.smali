.class public Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$ContentFragment;,
        Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$CallingPlusHelpListFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/sprint/ms/smf/R$layout;->activity_sprint_smf_content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const/4 p1, -0x1

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    sget p1, Lcom/sprint/ms/smf/R$id;->sprint_smf_main_content:I

    new-instance v0, Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$CallingPlusHelpListFragment;

    invoke-direct {v0}, Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$CallingPlusHelpListFragment;-><init>()V

    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method
