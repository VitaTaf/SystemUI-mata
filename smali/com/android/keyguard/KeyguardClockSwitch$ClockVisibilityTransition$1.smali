.class Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;
.super Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->createAnimator(Landroid/view/View;FIIFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field final synthetic val$startVisibility:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->this$1:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$startVisibility:I

    invoke-direct {p0, p2}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 637
    invoke-super {p0, p1}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 638
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 631
    invoke-super {p0, p1}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 632
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$startVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
