.class Lcom/android/systemui/screenshot/GlobalScreenshot$9;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 790
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    .line 792
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const v2, 0x3e8ccccc    # 0.27499998f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 794
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 795
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 796
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 797
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
