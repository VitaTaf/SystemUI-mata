.class final Lcom/sprint/ms/smf/ServiceHandler$1;
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
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/sprint/ms/smf/ServiceHandler;


# direct methods
.method constructor <init>(Lcom/sprint/ms/smf/ServiceHandler;Landroid/os/Message;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/sprint/ms/smf/ServiceHandler$1;->b:Lcom/sprint/ms/smf/ServiceHandler;

    iput-object p2, p0, Lcom/sprint/ms/smf/ServiceHandler$1;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/sprint/ms/smf/ServiceHandler$1;->b:Lcom/sprint/ms/smf/ServiceHandler;

    invoke-static {v0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Lcom/sprint/ms/smf/ServiceHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler$1;->a:Landroid/os/Message;

    invoke-static {v0, p0}, Lcom/sprint/ms/smf/ServiceHandler;->a(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method
