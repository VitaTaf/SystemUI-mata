.class abstract Lcom/sprint/ms/smf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Lcom/sprint/ms/smf/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/a;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sprint/ms/smf/e;->a(Landroid/content/Context;)Lcom/sprint/ms/smf/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/a;->a:Lcom/sprint/ms/smf/e;

    return-void
.end method
