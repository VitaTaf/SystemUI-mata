.class final Lcom/sprint/ms/smf/internal/a/c$c;
.super Lcom/sprint/ms/smf/internal/a/c$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/internal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Lcom/sprint/ms/smf/internal/a/c$b;

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sprint/ms/smf/internal/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/sprint/ms/smf/internal/a/c$e;-><init>()V

    return-void
.end method

.method static a([B)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/SparseArray<",
            "Lcom/sprint/ms/smf/internal/a/c$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 217
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 225
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 226
    new-instance v2, Lcom/sprint/ms/smf/internal/a/c$a;

    invoke-direct {v2}, Lcom/sprint/ms/smf/internal/a/c$a;-><init>()V

    add-int/lit8 v3, v0, 0x1

    .line 228
    aget-byte v0, p0, v0

    iput v0, v2, Lcom/sprint/ms/smf/internal/a/c$a;->a:I

    .line 229
    array-length v0, p0

    if-ge v3, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    .line 234
    aget-byte v3, p0, v3

    mul-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/sprint/ms/smf/internal/a/c$a;->b:I

    .line 235
    iget v3, v2, Lcom/sprint/ms/smf/internal/a/c$a;->b:I

    add-int/lit8 v3, v3, -0x2

    iput v3, v2, Lcom/sprint/ms/smf/internal/a/c$a;->d:I

    .line 236
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 241
    iget v3, v2, Lcom/sprint/ms/smf/internal/a/c$a;->d:I

    add-int v4, v0, v3

    array-length v5, p0

    if-gt v4, v5, :cond_1

    add-int/2addr v3, v0

    .line 248
    invoke-static {p0, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, v2, Lcom/sprint/ms/smf/internal/a/c$a;->c:[B

    .line 249
    iget v3, v2, Lcom/sprint/ms/smf/internal/a/c$a;->d:I

    add-int/2addr v0, v3

    .line 251
    iget v3, v2, Lcom/sprint/ms/smf/internal/a/c$a;->a:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 219
    :cond_2
    :goto_1
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ EAP PACKET { eap-header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/a/c$e;->c:Lcom/sprint/ms/smf/internal/a/c$d;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/internal/a/c$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aka-header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/a/c$c;->a:Lcom/sprint/ms/smf/internal/a/c$b;

    invoke-virtual {v1}, Lcom/sprint/ms/smf/internal/a/c$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type-data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/c$e;->d:[B

    invoke-static {p0}, Lcom/sprint/ms/smf/internal/c/e;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " } ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
