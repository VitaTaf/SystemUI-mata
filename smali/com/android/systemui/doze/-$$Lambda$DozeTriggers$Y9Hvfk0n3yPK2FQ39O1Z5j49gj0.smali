.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeSensors;
.field private final synthetic f$1:I
.field private final synthetic f$2:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;ILcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;->f$0:Lcom/android/systemui/doze/DozeSensors;

    iput p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;->f$2:Lcom/android/systemui/doze/DozeTriggers;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;->f$0:Lcom/android/systemui/doze/DozeSensors;

    iget v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;->f$2:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->lambda$new$0(Lcom/android/systemui/doze/DozeSensors;ILcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method
