.class final Lcom/sprint/ms/smf/internal/c/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/internal/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sprint/ms/smf/internal/c/l$a;->a:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 953
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/c/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Object;)V
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/c/l$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
