.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

.field private final synthetic f$1:Landroid/graphics/Region;

.field private final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;->f$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;->f$1:Landroid/graphics/Region;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;->f$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;->f$1:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$2$bflo4-0OxOxhTzQub5WRfHDxuRU;->f$2:Landroid/graphics/Region;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->lambda$onSystemGestureExclusionChanged$0$EdgeBackGestureHandler$2(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method
