.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSystemGestureExclusionChanged$0$EdgeBackGestureHandler$2(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;

    move-result-object p0

    if-eqz p2, :cond_0

    move-object p1, p2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;Landroid/graphics/Region;Landroid/graphics/Region;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
