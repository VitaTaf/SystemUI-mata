.class public Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->f:I

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    int-to-float p1, p1

    .line 94
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private b(I)V
    .locals 10

    .line 98
    iget-object v0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    iget-object v1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    iget-boolean v2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->g:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xd7

    const/4 v7, 0x4

    const/16 v8, 0xfc

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v7, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;

    invoke-interface {p0}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;->onDoneClicked()V

    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_start_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_desc_started:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_get_started_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_get_started_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-direct {p0, v8}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p1, 0xe1

    .line 174
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 176
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_done:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_intl_calls_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_desc_intl:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_intl_calls_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_intl_calls_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 p1, 0x10e

    .line 157
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p1, 0xde

    .line 158
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 160
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_next:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 164
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_stay_connected_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_desc_stay_connected:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_stay_connected_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_stay_connected_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 p1, 0xd2

    .line 141
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p1, 0xdd

    .line 142
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 144
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_next:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 148
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_enjoy_browsing_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_desc_browsing:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_browse_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_browse_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-direct {p0, v8}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 126
    invoke-direct {p0, v6}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 128
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_next:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 132
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 104
    :cond_5
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_calling_plus_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_desc_logo:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_more_ways_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_more_ways_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-direct {p0, v8}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 110
    invoke-direct {p0, v6}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 112
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_next:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 116
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 188
    :cond_6
    iget p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->f:I

    if-eqz p1, :cond_b

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v7, :cond_7

    goto :goto_1

    .line 254
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;

    invoke-interface {p0}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;->onDoneClicked()V

    :goto_1
    return-void

    .line 238
    :cond_8
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_start_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_desc_started:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_get_started_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_get_started_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 p1, 0xb4

    .line 243
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 244
    invoke-direct {p0, v6}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 246
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_done:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 250
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 222
    :cond_9
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_intl_calls_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_desc_intl:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_intl_calls_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_intl_calls_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 p1, 0x111

    .line 227
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p1, 0xdc

    .line 228
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 230
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_next:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 234
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 206
    :cond_a
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_wifi_calling_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_desc_wifi:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_free_wifi_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_free_wifi_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-direct {p0, v8}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p1, 0xe3

    .line 212
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 214
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_next:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 218
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 190
    :cond_b
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$drawable;->ic_qs_more_ways_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_desc_smartphone:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_more_ways_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    sget v2, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_more_ways_summary:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    invoke-direct {p0, v8}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p1, 0xed

    .line 196
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 198
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_next:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 202
    iget-object p0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->f:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->f:I

    .line 84
    iget v0, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->f:I

    invoke-direct {p0, v0}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b(I)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 68
    sget v0, Lcom/sprint/ms/smf/R$id;->sprint_smf_qs_content_skip:I

    if-ne p1, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;

    invoke-interface {p0}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment$a;->onSkipClicked()V

    return-void

    .line 70
    :cond_0
    sget v0, Lcom/sprint/ms/smf/R$id;->sprint_smf_qs_primary_action:I

    if-ne p1, v0, :cond_1

    .line 71
    iget p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->f:I

    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sprint/ms/smf/internal/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->g:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 49
    sget p3, Lcom/sprint/ms/smf/R$layout;->fragment_sprint_smf_qs_content:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    sget p2, Lcom/sprint/ms/smf/R$id;->sprint_smf_qs_content_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->a:Landroid/widget/ImageView;

    .line 52
    sget p2, Lcom/sprint/ms/smf/R$id;->sprint_smf_qs_content_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b:Landroid/widget/TextView;

    .line 53
    sget p2, Lcom/sprint/ms/smf/R$id;->sprint_smf_qs_content_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->c:Landroid/widget/TextView;

    .line 55
    sget p2, Lcom/sprint/ms/smf/R$id;->sprint_smf_qs_content_skip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    .line 56
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->e:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p2, Lcom/sprint/ms/smf/R$id;->sprint_smf_qs_primary_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    .line 58
    iget-object p2, p0, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->d:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/sprint/ms/smf/activities/CallingPlusQuickStartFragment;->b(I)V

    return-object p1
.end method
