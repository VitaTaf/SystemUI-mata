.class public abstract Lcom/sprint/ms/smf/exceptions/BaseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;


# direct methods
.method public constructor <init>(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/sprint/ms/smf/exceptions/BaseException;->a:Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    return-void
.end method


# virtual methods
.method public getErrorResponse()Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sprint/ms/smf/exceptions/BaseException;->a:Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    return-object p0
.end method
