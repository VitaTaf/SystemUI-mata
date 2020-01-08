.class final Lcom/sprint/ms/smf/activities/VowifiEnablement$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ms/smf/activities/VowifiEnablement;->b()V
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

    .line 276
    iput-object p1, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;I)I

    .line 282
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->f(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/activities/AddressLoadingFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    new-instance v1, Lcom/sprint/ms/smf/activities/AddressLoadingFragment;

    invoke-direct {v1}, Lcom/sprint/ms/smf/activities/AddressLoadingFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->a(Lcom/sprint/ms/smf/activities/VowifiEnablement;Lcom/sprint/ms/smf/activities/AddressLoadingFragment;)Lcom/sprint/ms/smf/activities/AddressLoadingFragment;

    .line 287
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    invoke-static {v0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->e(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/sprint/ms/smf/R$id;->sprint_smf_main_content:I

    iget-object p0, p0, Lcom/sprint/ms/smf/activities/VowifiEnablement$2;->a:Lcom/sprint/ms/smf/activities/VowifiEnablement;

    .line 289
    invoke-static {p0}, Lcom/sprint/ms/smf/activities/VowifiEnablement;->f(Lcom/sprint/ms/smf/activities/VowifiEnablement;)Lcom/sprint/ms/smf/activities/AddressLoadingFragment;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
