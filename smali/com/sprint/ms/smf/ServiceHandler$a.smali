.class final Lcom/sprint/ms/smf/ServiceHandler$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/ServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sprint/ms/smf/ServiceHandler;


# direct methods
.method constructor <init>(Lcom/sprint/ms/smf/ServiceHandler;Landroid/os/Looper;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/sprint/ms/smf/ServiceHandler$a;->a:Lcom/sprint/ms/smf/ServiceHandler;

    .line 249
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    const/16 v0, 0xa

    .line 254
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 255
    iget-object p0, p0, Lcom/sprint/ms/smf/ServiceHandler$a;->a:Lcom/sprint/ms/smf/ServiceHandler;

    invoke-static {p0, p1}, Lcom/sprint/ms/smf/ServiceHandler;->a(Lcom/sprint/ms/smf/ServiceHandler;Landroid/os/Message;)V

    return-void
.end method
