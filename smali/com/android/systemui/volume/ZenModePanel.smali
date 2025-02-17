.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/FrameLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;,
        Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttached:Z

.field private mAttachedZen:I

.field private mAutoRule:Landroid/view/View;

.field private mAutoTitle:Landroid/widget/TextView;

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mEdit:Landroid/view/ViewGroup;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExpanded:Z

.field private final mForeverId:Landroid/net/Uri;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private final mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

.field private mVoiceCapable:Z

.field private mZenAlarmWarning:Landroid/widget/TextView;

.field protected mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field protected final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field protected mZenConditions:Landroid/widget/LinearLayout;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionCustomize:Landroid/widget/TextView;

.field private mZenIntroductionMessage:Landroid/widget/TextView;

.field protected mZenModeButtonLayoutId:I

.field protected mZenModeConditionLayoutId:I

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field private mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModePanel"

    const/4 v1, 0x3

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    .line 83
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 84
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 85
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    sput v1, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const/16 v1, 0x3c

    .line 86
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p2, Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    .line 103
    new-instance p2, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZenModePanel/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const/4 p2, -0x1

    .line 122
    iput p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 p2, 0x0

    .line 138
    iput p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    .line 842
    new-instance p2, Lcom/android/systemui/volume/ZenModePanel$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 978
    new-instance p2, Lcom/android/systemui/volume/ZenModePanel$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 1006
    new-instance p2, Lcom/android/systemui/volume/ZenModePanel$8;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 144
    new-instance p1, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 145
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "forever"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    .line 147
    new-instance p1, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object p2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 148
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    .line 149
    sget p1, Lcom/android/systemui/R$layout;->zen_mode_condition:I

    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeConditionLayoutId:I

    .line 150
    sget p1, Lcom/android/systemui/R$layout;->zen_mode_button:I

    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeButtonLayoutId:I

    .line 151
    sget-boolean p1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string p1, "new ZenModePanel"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/ZenModePanel;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 72
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    .line 72
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/ZenModePanel;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 6

    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    return-void

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->interruption_level_alarms:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->interruption_level_priority:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 764
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->zen_mode_and_condition:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    iget-object p1, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 765
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    .line 764
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v1, :cond_13

    .line 645
    iget v4, v1, Landroid/service/notification/Condition;->state:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 647
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    invoke-direct {v7}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>()V

    .line 648
    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 649
    iget-object v8, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v8, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v6

    .line 650
    :goto_2
    iget-object v9, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v9, :cond_3

    .line 651
    iget-object v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 653
    :cond_3
    iput-object v1, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 654
    iget-object v9, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v9}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v9

    .line 655
    sget-boolean v10, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bind i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " first="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " condition="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_4
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v10, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 658
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v11, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v11, v0, v7, v9}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 671
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    if-nez v10, :cond_5

    const v10, 0x1020002

    .line 672
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    .line 674
    :cond_5
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v10, :cond_6

    const v10, 0x1020014

    .line 675
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 676
    iget-object v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v11, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 678
    :cond_6
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v10, :cond_7

    const v10, 0x1020015

    .line 679
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    .line 680
    iget-object v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v11, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 682
    :cond_7
    iget-object v10, v1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_3

    .line 683
    :cond_8
    iget-object v10, v1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 684
    :goto_3
    iget-object v11, v1, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 685
    iget-object v12, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v12, 0x8

    if-eqz v10, :cond_9

    .line 687
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 689
    :cond_9
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    :goto_4
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 693
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    if-eqz v4, :cond_a

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    const v4, 0x3ecccccd    # 0.4f

    :goto_5
    invoke-virtual {v10, v4}, Landroid/view/View;->setAlpha(F)V

    const v4, 0x1020019

    .line 695
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 696
    new-instance v10, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v10, v0, v2, v7, v3}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x102001a

    .line 703
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 704
    new-instance v13, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v13, v0, v2, v7, v3}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v13, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    new-instance v14, Lcom/android/systemui/volume/ZenModePanel$4;

    invoke-direct {v14, v0, v7}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v13

    const/4 v9, 0x2

    if-eq v3, v9, :cond_11

    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-lez v3, :cond_11

    .line 719
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v9, -0x1

    if-le v3, v9, :cond_d

    if-lez v3, :cond_b

    move v1, v5

    goto :goto_6

    :cond_b
    move v1, v6

    .line 722
    :goto_6
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 723
    iget v1, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    sget-object v3, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v3, v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_c

    goto :goto_7

    :cond_c
    move v5, v6

    :goto_7
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_9

    .line 725
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 726
    sget v3, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v9, 0xea60

    mul-int/2addr v3, v9

    int-to-long v11, v3

    cmp-long v3, v13, v11

    if-lez v3, :cond_e

    move v3, v5

    goto :goto_8

    :cond_e
    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 727
    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 728
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 727
    invoke-static {v3, v11, v12}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v3

    .line 729
    iget-object v1, v1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v3, v3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 732
    :goto_9
    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    const/high16 v11, 0x3f000000    # 0.5f

    if-eqz v1, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_f
    move v1, v11

    :goto_a
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 733
    invoke-virtual {v10}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_10
    move v9, v11

    :goto_b
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_c

    .line 735
    :cond_11
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    if-eqz v8, :cond_12

    .line 740
    iget-object v1, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 741
    iget-object v1, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 742
    iget-object v1, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v4, v1}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 743
    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v10, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 745
    :cond_12
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 644
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "condition must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bindGenericCountdown()V
    .locals 3

    .line 549
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 550
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v1, v1, v2

    .line 551
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 550
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 553
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private bindNextAlarm(Landroid/service/notification/Condition;)V
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    if-eqz p1, :cond_1

    .line 563
    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_1

    .line 564
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 567
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 568
    iget-object p1, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 569
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x4

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    move v1, v2

    .line 571
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private checkForAttachedZenChange()V
    .locals 4

    const/4 v0, -0x1

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 348
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_2

    .line 350
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 352
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->trackNoneSelected()V

    :cond_2
    return-void
.end method

.method private computeAlarmWarningText(Z)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 488
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 489
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    return-object v0

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 497
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v6

    cmp-long p1, v6, v1

    if-lez p1, :cond_3

    cmp-long p1, v3, v6

    if-gez p1, :cond_3

    .line 499
    sget p1, Lcom/android/systemui/R$string;->zen_alarm_warning:I

    goto :goto_1

    :cond_3
    move p1, v5

    goto :goto_1

    .line 495
    :cond_4
    :goto_0
    sget p1, Lcom/android/systemui/R$string;->zen_alarm_warning_indef:I

    :goto_1
    if-nez p1, :cond_5

    return-object v0

    :cond_5
    sub-long v0, v3, v1

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v0, v6

    const/4 v1, 0x1

    if-gez v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v5

    .line 506
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v0, :cond_8

    if-eqz v2, :cond_7

    const-string v2, "Hm"

    goto :goto_3

    :cond_7
    const-string v2, "hma"

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    const-string v2, "EEEHm"

    goto :goto_3

    :cond_9
    const-string v2, "EEEhma"

    .line 508
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v0, :cond_a

    .line 510
    sget v0, Lcom/android/systemui/R$string;->alarm_template:I

    goto :goto_4

    :cond_a
    sget v0, Lcom/android/systemui/R$string;->alarm_template_far:I

    .line 511
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private confirmZenIntroduction()V
    .locals 3

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->prefKeyForConfirmation(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmZenIntroduction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModePanel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private createCondition(Landroid/net/Uri;)Landroid/service/notification/Condition;
    .locals 7

    .line 421
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 423
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 424
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 423
    invoke-static {p0, v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0

    .line 426
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    long-to-int v4, v0

    .line 430
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 431
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x0

    .line 430
    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method

.method private fireExpanded()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 838
    iget-boolean p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 0

    .line 831
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz p0, :cond_0

    .line 832
    invoke-interface {p0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    :cond_0
    return-void
.end method

.method private forever()Landroid/service/notification/Condition;
    .locals 9

    .line 575
    new-instance v8, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/volume/ZenModePanel;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v8
.end method

.method private static foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x10407c1

    .line 580
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    .line 394
    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .locals 5

    .line 585
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 586
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    .line 587
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 590
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 591
    invoke-virtual {v3, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 592
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    .line 594
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 595
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 596
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 595
    invoke-static {p0, v1, v2, v0}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    return-object p0

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    return-object p0

    .line 251
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    return-object p0
.end method

.method private handleUpdateZen(I)V
    .locals 2

    .line 439
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 440
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method private hideAllConditions()V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 627
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isAlarm(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 632
    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCountdown(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 636
    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 640
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$transitionFrom$4(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$transitionFrom$5(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$YCGXBCe2GBC47ckivA_D9jTXkLc;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$YCGXBCe2GBC47ckivA_D9jTXkLc;-><init>(Landroid/view/View;)V

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private onAttach()V
    .locals 5

    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 292
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 294
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttach "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 296
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 297
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 298
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setAttached(Z)V

    return-void
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 769
    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/16 v4, 0xa3

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 771
    sget-object v3, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v3, v3

    .line 772
    iget v4, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v4, v6, :cond_5

    .line 774
    iget-object v4, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v4}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v4

    .line 775
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :goto_0
    if-ge v5, v3, :cond_4

    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v5

    .line 779
    :goto_1
    sget-object v6, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v15, v6, v4

    const v6, 0xea60

    mul-int/2addr v6, v15

    int-to-long v12, v6

    add-long v13, v10, v12

    if-eqz v2, :cond_1

    cmp-long v6, v13, v8

    if-gtz v6, :cond_2

    :cond_1
    if-nez v2, :cond_3

    cmp-long v6, v13, v8

    if-gez v6, :cond_3

    .line 782
    :cond_2
    iput v4, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 783
    iget-object v12, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 784
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x0

    .line 783
    invoke-static/range {v12 .. v17}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v2

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_7

    .line 790
    sget v2, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 791
    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v4, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v3, v3, v4

    .line 792
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 791
    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v2

    goto :goto_3

    :cond_5
    sub-int/2addr v3, v7

    if-eqz v2, :cond_6

    move v6, v7

    :cond_6
    add-int/2addr v4, v6

    .line 796
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 797
    iget-object v2, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v4, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v3, v3, v4

    .line 798
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 797
    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v2

    :cond_7
    :goto_3
    move/from16 v3, p4

    move-object v4, v2

    move-object/from16 v2, p1

    .line 800
    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 801
    iget-object v2, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 802
    invoke-direct {v0, v4}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 803
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method private onDetach()V
    .locals 2

    .line 306
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 307
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setAttached(Z)V

    const/4 v0, -0x1

    .line 310
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 311
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 312
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 314
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    return-void
.end method

.method private static prefKeyForConfirmation(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "DndConfirmedAlarmIntroduction"

    return-object p0

    :cond_1
    const-string p0, "DndConfirmedSilenceIntroduction"

    return-object p0

    :cond_2
    const-string p0, "DndConfirmedPriorityIntroduction"

    return-object p0
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 3

    .line 807
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_1

    goto :goto_1

    .line 812
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .line 813
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v2, :cond_2

    .line 814
    new-instance v2, Lcom/android/systemui/volume/ZenModePanel$5;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 821
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    if-nez v0, :cond_3

    .line 823
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    goto :goto_0

    .line 824
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v0, v1, :cond_5

    .line 825
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    .line 827
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    return-void

    .line 809
    :cond_6
    :goto_1
    sget-boolean p1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string p1, "Ignoring condition selection outside of manual zen"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 389
    sget-boolean p1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExitCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method private setExpanded(Z)V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 359
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    return-void
.end method

.method private setSessionExitCondition(Landroid/service/notification/Condition;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSessionExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-void
.end method

.method private setToMidnight(Ljava/util/Calendar;)V
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0xb

    .line 603
    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 604
    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 605
    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 606
    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private transitionFrom(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 235
    new-instance p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateWidgets()V
    .locals 8

    .line 453
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->pendingUpdateWidgets()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz v3, :cond_4

    .line 461
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$300(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 462
    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$400(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 463
    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$500(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    .line 465
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-boolean v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_4

    :cond_8
    move v6, v0

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    if-eqz v2, :cond_9

    move v6, v0

    goto :goto_5

    :cond_9
    move v6, v7

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_e

    if-eqz v3, :cond_a

    .line 469
    sget v1, Lcom/android/systemui/R$string;->zen_priority_introduction:I

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    .line 471
    sget v1, Lcom/android/systemui/R$string;->zen_alarms_introduction:I

    goto :goto_6

    .line 472
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    if-eqz v1, :cond_c

    .line 473
    sget v1, Lcom/android/systemui/R$string;->zen_silence_introduction_voice:I

    goto :goto_6

    .line 474
    :cond_c
    sget v1, Lcom/android/systemui/R$string;->zen_silence_introduction:I

    .line 475
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 476
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 477
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    move v2, v0

    goto :goto_7

    :cond_d
    move v2, v7

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_e
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->computeAlarmWarningText(Z)Ljava/lang/String;

    move-result-object v1

    .line 480
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    move v0, v7

    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected addZenConditions(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeButtonLayoutId:I

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 369
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeConditionLayoutId:I

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    add-int v3, v1, p1

    .line 371
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 372
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected createZenButtons()V
    .locals 4

    .line 170
    sget v0, Lcom/android/systemui/R$id;->zen_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    sget v1, Lcom/android/systemui/R$string;->interruption_level_none_twoline:I

    sget v2, Lcom/android/systemui/R$string;->interruption_level_none_with_warning:I

    const/4 v3, 0x2

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 171
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    sget v1, Lcom/android/systemui/R$string;->interruption_level_alarms_twoline:I

    sget v2, Lcom/android/systemui/R$string;->interruption_level_alarms:I

    const/4 v3, 0x3

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    sget v1, Lcom/android/systemui/R$string;->interruption_level_priority_twoline:I

    sget v2, Lcom/android/systemui/R$string;->interruption_level_priority:I

    const/4 v3, 0x1

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    return-void
.end method

.method getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 611
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object p0
.end method

.method getSelectedZen(I)I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 448
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 449
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method getVisibleConditions()I
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 619
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method handleUpdateConditions(Landroid/service/notification/Condition;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    if-nez p1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->bindGenericCountdown()V

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->bindGenericCountdown()V

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 532
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->bindGenericCountdown()V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    const/4 p1, 0x2

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 536
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 542
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid manual condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModePanel"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    .line 411
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 414
    :cond_1
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_1

    .line 415
    :cond_2
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->createCondition(Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object p1

    .line 416
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions(Landroid/service/notification/Condition;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2

    .line 377
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 p1, 0x3

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->addZenConditions(I)V

    const/4 p1, -0x1

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 381
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 382
    sget-boolean p1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init mExitCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$ZenModePanel(Landroid/view/View;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$ZenModePanel(Landroid/view/View;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz p0, :cond_0

    .line 195
    invoke-interface {p0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onPrioritySettings()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setAutoText$3$ZenModePanel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$setEmptyState$2$ZenModePanel(II)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    iget-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {p1}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 263
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz p0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->update()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->createZenButtons()V

    .line 187
    sget v0, Lcom/android/systemui/R$id;->zen_introduction:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    .line 188
    sget v0, Lcom/android/systemui/R$id;->zen_introduction_message:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    .line 189
    sget v0, Lcom/android/systemui/R$id;->zen_introduction_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$lbJ8lHqFYfMZus-ckwTZAx6gp_I;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$lbJ8lHqFYfMZus-ckwTZAx6gp_I;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v0, Lcom/android/systemui/R$id;->zen_introduction_customize:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$1BYa_z9Fn3nPDHjhUKHednhVOqQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$1BYa_z9Fn3nPDHjhUKHednhVOqQ;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$string;->zen_priority_customize_button:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 200
    sget v0, Lcom/android/systemui/R$id;->zen_conditions:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->zen_alarm_warning:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/android/systemui/R$id;->zen_radio_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 203
    sget v0, Lcom/android/systemui/R$id;->zen_radio_buttons_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 205
    sget v0, Lcom/android/systemui/R$id;->edit_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    const v0, 0x1020004

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyText:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    .line 212
    sget v0, Lcom/android/systemui/R$id;->auto_rule:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    .line 214
    iget-object p0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->onAttach()V

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->onDetach()V

    :goto_0
    return-void
.end method

.method setAttached(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    return-void
.end method

.method public setAutoText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;-><init>(Lcom/android/systemui/volume/ZenModePanel;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-void
.end method

.method public setEmptyState(II)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$HiD6qQcUVG9hPBXBbXjbkowbyWE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$HiD6qQcUVG9hPBXBbXjbkowbyWE;-><init>(Lcom/android/systemui/volume/ZenModePanel;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 229
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->transitionFrom(Landroid/view/View;Landroid/view/View;)V

    .line 231
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    return-void
.end method
