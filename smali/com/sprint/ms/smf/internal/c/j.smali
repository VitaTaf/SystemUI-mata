.class public Lcom/sprint/ms/smf/internal/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/sprint/ms/smf/internal/c/j;


# instance fields
.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/c/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/c/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/j;->e:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.sprint.internal.SystemProperties"

    .line 76
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 77
    const-class v3, Landroid/content/Context;

    aput-object v3, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/sprint/ms/smf/internal/c/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/ms/smf/internal/c/j;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "com.sprint.internal.OMADM"

    .line 84
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 85
    const-class v3, Landroid/content/Context;

    aput-object v3, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/c/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/j;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sprint/ms/smf/internal/c/j;
    .locals 2

    .line 56
    sget-object v0, Lcom/sprint/ms/smf/internal/c/j;->b:Lcom/sprint/ms/smf/internal/c/j;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/sprint/ms/smf/internal/c/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/internal/c/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/ms/smf/internal/c/j;->b:Lcom/sprint/ms/smf/internal/c/j;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, v0, Lcom/sprint/ms/smf/internal/c/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/sprint/ms/smf/internal/c/j;->b:Lcom/sprint/ms/smf/internal/c/j;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/sprint/ms/smf/internal/c/j;->e:Ljava/lang/ref/WeakReference;

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lcom/sprint/ms/smf/internal/c/j;->b:Lcom/sprint/ms/smf/internal/c/j;

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/j;->c:Ljava/lang/Object;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x6

    .line 107
    sget-object p1, Lcom/sprint/ms/smf/internal/c/j;->a:Ljava/lang/String;

    const-string v0, "Context is empty"

    invoke-static {p0, p1, v0}, Lcom/google/firebase/crash/FirebaseCrash;->logcat(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-static {v0, v2}, Lcom/sprint/ms/smf/internal/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 117
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/j;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getString"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/j;->c:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method
