.class Lcom/android/keyguard/KeyguardSimPukView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$3;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$3;II)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1300(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1300(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 411
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:I

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 413
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$202(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_5

    .line 417
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_2

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$202(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 421
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:I

    if-ne v0, v3, :cond_4

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$attemptsRemaining:I

    invoke-static {v0, v3, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1200(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 425
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1400(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v3, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 431
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1200(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-interface {v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 435
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_password_puk_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1500(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 443
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1602(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-void
.end method
