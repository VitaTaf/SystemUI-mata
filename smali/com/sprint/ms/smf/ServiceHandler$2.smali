.class final Lcom/sprint/ms/smf/ServiceHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Lcom/sprint/ms/smf/ServiceHandler;


# direct methods
.method constructor <init>(Lcom/sprint/ms/smf/ServiceHandler;ILandroid/os/Message;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->c:Lcom/sprint/ms/smf/ServiceHandler;

    iput p2, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->a:I

    iput-object p3, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 378
    iget v0, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->c:Lcom/sprint/ms/smf/ServiceHandler;

    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Lcom/sprint/ms/smf/ServiceHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->b:Landroid/os/Message;

    invoke-static {v0, p0}, Lcom/sprint/ms/smf/ServiceHandler;->d(Landroid/content/Context;Landroid/os/Message;)V

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->c:Lcom/sprint/ms/smf/ServiceHandler;

    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Lcom/sprint/ms/smf/ServiceHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->b:Landroid/os/Message;

    invoke-static {v0, p0}, Lcom/sprint/ms/smf/ServiceHandler;->c(Landroid/content/Context;Landroid/os/Message;)V

    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->c:Lcom/sprint/ms/smf/ServiceHandler;

    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Lcom/sprint/ms/smf/ServiceHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler$2;->b:Landroid/os/Message;

    invoke-static {v0, p0}, Lcom/sprint/ms/smf/ServiceHandler;->b(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method
