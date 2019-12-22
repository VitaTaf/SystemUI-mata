.class final Lcom/sprint/ms/smf/internal/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:I

.field e:Z

.field private final f:I

.field private final g:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/sprint/ms/smf/internal/c/i;->f:I

    .line 42
    iput p2, p0, Lcom/sprint/ms/smf/internal/c/i;->g:I

    .line 43
    iput p1, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    .line 45
    invoke-virtual {p0}, Lcom/sprint/ms/smf/internal/c/i;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sprint/ms/smf/internal/c/i;->e:Z

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 5

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v2, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    aget-byte v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v2, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v3, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    const/16 v3, 0x80

    if-ge v1, v3, :cond_1

    .line 99
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v3, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    add-int/2addr v3, v4

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    iput v1, p0, Lcom/sprint/ms/smf/internal/c/i;->d:I

    .line 100
    iget v1, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sprint/ms/smf/internal/c/i;->c:I

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v3, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    add-int/2addr v3, v4

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    const/16 v3, 0x81

    if-ne v1, v3, :cond_2

    .line 103
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/c/i;->a:[B

    iget v3, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    iput v1, p0, Lcom/sprint/ms/smf/internal/c/i;->d:I

    .line 104
    iget v1, p0, Lcom/sprint/ms/smf/internal/c/i;->b:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sprint/ms/smf/internal/c/i;->c:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    iget v1, p0, Lcom/sprint/ms/smf/internal/c/i;->d:I

    iget v2, p0, Lcom/sprint/ms/smf/internal/c/i;->c:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sprint/ms/smf/internal/c/i;->f:I

    iget p0, p0, Lcom/sprint/ms/smf/internal/c/i;->g:I

    add-int/2addr v2, p0

    if-gt v1, v2, :cond_2

    return v4

    :catch_0
    :cond_2
    :goto_1
    return v0
.end method
