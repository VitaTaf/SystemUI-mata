.class public Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "NotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$NotificationSnoozeOption;
    }
.end annotation


# static fields
.field private static final OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

.field private static final OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

.field private static final UNDO_LOG:Landroid/metrics/LogMaker;

.field private static final sAccessibilityActions:[I


# instance fields
.field private mCollapsedHeight:I

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDivider:Landroid/view/View;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpanded:Z

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mParser:Landroid/util/KeyValueListParser;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSelectedOptionText:Landroid/widget/TextView;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z

.field private mUndoButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x476

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    .line 72
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    .line 74
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    .line 75
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x475

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 77
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    new-array v0, v3, [I

    .line 96
    sget v3, Lcom/android/systemui/R$id;->action_snooze_shorter:I

    const/4 v4, 0x0

    aput v3, v0, v4

    sget v3, Lcom/android/systemui/R$id;->action_snooze_short:I

    aput v3, v0, v2

    sget v2, Lcom/android/systemui/R$id;->action_snooze_long:I

    aput v2, v0, v1

    sget v1, Lcom/android/systemui/R$id;->action_snooze_longer:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->sAccessibilityActions:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 107
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)Landroid/view/ViewGroup;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private animateSnoozeOptions(Z)V
    .locals 10

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDivider:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    const/4 v8, 0x1

    aput v7, v3, v8

    .line 311
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    .line 314
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v9

    aput v9, v7, v5

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    aput v4, v7, v8

    .line 313
    invoke-static {v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 315
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 317
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v8

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 10

    .line 251
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-lt p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 254
    sget v5, Lcom/android/systemui/R$plurals;->snoozeHourOptions:I

    goto :goto_1

    .line 255
    :cond_1
    sget v5, Lcom/android/systemui/R$plurals;->snoozeMinuteOptions:I

    :goto_1
    if-eqz v1, :cond_2

    .line 256
    div-int/lit8 v1, p1, 0x3c

    goto :goto_2

    :cond_2
    move v1, p1

    :goto_2
    new-array v6, v2, [Ljava/lang/Object;

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 258
    sget v1, Lcom/android/systemui/R$string;->snoozed_for_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 259
    new-instance v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v7, p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 262
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v8

    .line 264
    :cond_3
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 266
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 265
    invoke-virtual {v8, v1, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 267
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, p0

    move v3, p1

    move-object v4, v5

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v9
.end method

.method private createOptionViews()V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 273
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    move v2, v1

    .line 275
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 277
    sget v4, Lcom/android/systemui/R$layout;->notification_snooze_option:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 279
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hideSelectedOption()V
    .locals 6

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 289
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-ne v4, v5, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 352
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    invoke-direct {p2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 354
    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x474

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 356
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 v0, 0x473

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V
    .locals 2

    .line 340
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 342
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->hideSelectedOption()V

    const/16 v0, 0x20

    .line 344
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    if-eqz p2, :cond_0

    const/16 p2, 0x472

    .line 346
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    :cond_0
    return-void
.end method

.method private showSnoozeOptions(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x108034c

    goto :goto_0

    :cond_0
    const v0, 0x1080388

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    if-eq v0, p1, :cond_1

    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    .line 300
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->animateSnoozeOptions(Z)V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->onHeightChanged()V

    :cond_1
    return-void
.end method

.method private undoSnooze(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 383
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 384
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 387
    aget v4, v2, v0

    aget v5, v1, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v3, 0x1

    .line 388
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 389
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, v4, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mCollapsedHeight:I

    :goto_0
    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return-object p0
.end method

.method getDefaultOption()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    return-object p0
.end method

.method getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_snooze_options"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "NotificationSnooze"

    const-string v3, "Bad snooze constants"

    .line 231
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    sget v3, Lcom/android/systemui/R$integer;->config_notification_snooze_time_default:I

    .line 235
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string v4, "default"

    .line 234
    invoke-virtual {v2, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 236
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    sget v4, Lcom/android/systemui/R$array;->config_notification_snooze_times:I

    .line 237
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string v4, "options_array"

    .line 236
    invoke-virtual {v3, v4, v0}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 239
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    sget-object v4, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->sAccessibilityActions:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 240
    aget v5, v0, v3

    .line 241
    aget v4, v4, v3

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v4

    if-eqz v3, :cond_0

    if-ne v5, v2, :cond_1

    .line 243
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 245
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public handleCloseControls(ZZ)Z
    .locals 2

    .line 417
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 419
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->showSnoozeOptions(Z)V

    return v0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz p2, :cond_1

    .line 423
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozing:Z

    .line 424
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return v0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return v1
.end method

.method public isExpanded()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    return p0
.end method

.method public isLeavebehind()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 145
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/16 v1, 0x471

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 364
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 367
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    goto :goto_1

    .line 368
    :cond_1
    sget v1, Lcom/android/systemui/R$id;->notification_snooze:I

    if-ne v0, v1, :cond_3

    .line 370
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 371
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_1

    .line 374
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->undoSnooze(Landroid/view/View;)V

    .line 375
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->snooze_snackbar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mCollapsedHeight:I

    .line 125
    sget v0, Lcom/android/systemui/R$id;->notification_snooze:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v0, Lcom/android/systemui/R$id;->snooze_option_default:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->undo:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget v0, Lcom/android/systemui/R$id;->expand_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDivider:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 132
    sget v0, Lcom/android/systemui/R$id;->snooze_options:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->createOptionViews()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 161
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 162
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_snooze_undo:I

    .line 163
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->snooze_undo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    .line 175
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 178
    :cond_0
    sget p2, Lcom/android/systemui/R$id;->action_snooze_undo:I

    if-ne p1, p2, :cond_1

    .line 179
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->undoSnooze(Landroid/view/View;)V

    return v0

    :cond_1
    const/4 p2, 0x0

    move v1, p2

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 184
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 185
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 186
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method setKeyValueListParser(Landroid/util/KeyValueListParser;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    return-void
.end method

.method public setSnoozeOptions(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 201
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/service/notification/SnoozeCriterion;

    .line 202
    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_snooze_assistant_suggestion_1:I

    .line 203
    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    new-instance v10, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$NotificationSnoozeOption;

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v7

    .line 205
    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 204
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->createOptionViews()V

    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    .line 400
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mSnoozing:Z

    return p0
.end method
