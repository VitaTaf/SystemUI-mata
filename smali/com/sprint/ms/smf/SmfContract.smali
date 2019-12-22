.class public Lcom/sprint/ms/smf/SmfContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SMF_PACKAGE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.sprint.ms.smf.services"

    const-string v1, "com.sprint.ms.smf.carrierhub"

    const-string v2, "com.boost.ms.smf.carrierhub"

    const-string v3, "com.vmu.ms.smf.carrierhub"

    .line 37
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/SmfContract;->SMF_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method
