.class Lcom/android/systemui/qs/QSDetail$2;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$2;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object p1, p1, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$2;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)V

    return-void
.end method
