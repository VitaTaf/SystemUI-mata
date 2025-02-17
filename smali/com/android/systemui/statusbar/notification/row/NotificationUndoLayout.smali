.class public Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;
.super Landroid/widget/FrameLayout;
.source "NotificationUndoLayout.java"


# instance fields
.field private mConfirmationTextView:Landroid/view/View;

.field private mIsMultiline:Z

.field private mMultilineTopMargin:I

.field private mUndoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mIsMultiline:Z

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    sget v0, Lcom/android/systemui/R$id;->confirmation_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->undo:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mMultilineTopMargin:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mIsMultiline:Z

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    .line 114
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    .line 115
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mMultilineTopMargin:I

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr p3, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mMultilineTopMargin:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    .line 124
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 120
    invoke-virtual {p5, v0, v1, p3, v2}, Landroid/view/View;->layout(IIII)V

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p3

    const/4 p5, 0x1

    if-ne p3, p5, :cond_0

    .line 128
    iget p2, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 129
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, p3

    .line 130
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int p5, p1, p5

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p5, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p2

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, p4

    .line 130
    invoke-virtual {p3, p2, p5, p0, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 136
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v1, p1

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    if-le v1, v0, :cond_0

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mIsMultiline:Z

    .line 93
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mMultilineTopMargin:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mConfirmationTextView:Landroid/view/View;

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mUndoView:Landroid/view/View;

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    .line 99
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationUndoLayout;->mIsMultiline:Z

    :goto_0
    return-void
.end method
