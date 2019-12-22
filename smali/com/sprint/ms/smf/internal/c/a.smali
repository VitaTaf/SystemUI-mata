.class public final Lcom/sprint/ms/smf/internal/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/internal/c/a$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private b:I

.field private final c:I


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/a;->a:[B

    .line 58
    array-length p1, p1

    shl-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/sprint/ms/smf/internal/c/a;->c:I

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/ms/smf/internal/c/a$a;
        }
    .end annotation

    .line 79
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v2, v0, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, p1

    if-ltz p1, :cond_1

    const/16 v3, 0x8

    if-gt p1, v3, :cond_1

    add-int/2addr v0, p1

    .line 81
    iget v4, p0, Lcom/sprint/ms/smf/internal/c/a;->c:I

    if-gt v0, v4, :cond_1

    .line 85
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/c/a;->a:[B

    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 86
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v4, v0

    :cond_0
    ushr-int v0, v4, v2

    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 89
    iget v1, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    return v0

    .line 82
    :cond_1
    new-instance v0, Lcom/sprint/ms/smf/internal/c/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal read (pos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sprint/ms/smf/internal/c/a;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bits "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/internal/c/a$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/ms/smf/internal/c/a$a;
        }
    .end annotation

    .line 117
    iget v0, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/sprint/ms/smf/internal/c/a;->c:I

    if-gt v1, v2, :cond_0

    add-int/2addr v0, p1

    .line 121
    iput v0, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/sprint/ms/smf/internal/c/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal skip (pos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sprint/ms/smf/internal/c/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sprint/ms/smf/internal/c/a;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bits "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sprint/ms/smf/internal/c/a$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
