.class Lcom/android/systemui/qs/QSAnimator$2;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/QSAnimator;->access$100(Lcom/android/systemui/qs/QSAnimator;)V

    .line 438
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/QSAnimator;->access$200(Lcom/android/systemui/qs/QSAnimator;)V

    return-void
.end method
