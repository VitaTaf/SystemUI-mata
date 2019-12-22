.class public final Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# instance fields
.field public code:I

.field public friendlyDescription:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public system:Ljava/lang/String;

.field public systemCode:Ljava/lang/String;

.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->values:Ljava/util/Map;

    return-void
.end method
