.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCollapsedOnKeyguard:Z

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 421
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 434
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$2;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 80
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 81
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 82
    iget-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 83
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 84
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 88
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 89
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "QSAnimator"

    const-string p2, "QS Not using page layout"

    .line 91
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method private clearAnimationState()V
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 397
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 398
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 399
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 400
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 404
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 327
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 328
    aput v1, p1, v0

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    if-eq p2, p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 337
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 338
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 340
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 323
    iget p0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private setCurrentPosition()V
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method

.method private updateAnimators()V
    .locals 27

    move-object/from16 v0, p0

    .line 174
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 175
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 176
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 178
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    new-array v7, v5, [I

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 187
    iget-object v8, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v8, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v8, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v8

    .line 191
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v10, v8

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v9}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v9}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    goto :goto_0

    :cond_1
    move v9, v10

    .line 193
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    goto :goto_1

    :cond_2
    move v11, v10

    .line 194
    :goto_1
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int/2addr v9, v12

    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 195
    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v9, v12

    new-array v12, v5, [F

    int-to-float v13, v9

    aput v13, v12, v10

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v14, v12, v15

    const-string v14, "translationY"

    .line 196
    invoke-virtual {v1, v8, v14, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 198
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v5, v10

    move/from16 v17, v5

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const-string v15, "alpha"

    if-eqz v18, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/android/systemui/plugins/qs/QSTile;

    move-object/from16 v18, v12

    .line 199
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12, v10}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v12

    if-nez v12, :cond_3

    .line 201
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tileView is null "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "QSAnimator"

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v4

    move/from16 v21, v9

    move/from16 v24, v11

    move/from16 v23, v13

    goto :goto_3

    .line 204
    :cond_3
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v4

    move/from16 v21, v9

    .line 205
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v9}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v9

    move/from16 v23, v13

    .line 208
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v13

    move/from16 v24, v11

    const-string v11, "translationX"

    if-ge v5, v13, :cond_7

    iget-boolean v13, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v13, :cond_7

    .line 210
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v13, v10}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v10

    if-nez v10, :cond_4

    :goto_3
    move-object/from16 v12, v18

    move/from16 v9, v21

    move-object/from16 v4, v22

    move/from16 v13, v23

    move/from16 v11, v24

    :goto_4
    const/4 v10, 0x0

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 213
    aget v17, v6, v13

    .line 214
    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v13

    invoke-direct {v0, v6, v13, v9}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 215
    invoke-direct {v0, v7, v4, v9}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v4, 0x0

    .line 216
    aget v9, v7, v4

    aget v13, v6, v4

    sub-int/2addr v9, v13

    const/4 v13, 0x1

    .line 217
    aget v19, v7, v13

    aget v20, v6, v13

    sub-int v13, v19, v20

    .line 218
    aget v19, v6, v4

    sub-int v17, v19, v17

    .line 220
    invoke-interface {v8}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v4

    if-ge v5, v4, :cond_5

    const/4 v4, 0x2

    new-array v15, v4, [F

    const/16 v16, 0x0

    const/16 v19, 0x0

    aput v16, v15, v19

    int-to-float v4, v9

    const/16 v25, 0x1

    aput v4, v15, v25

    .line 222
    invoke-virtual {v2, v10, v11, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v4, 0x2

    new-array v15, v4, [F

    aput v16, v15, v19

    int-to-float v4, v13

    aput v4, v15, v25

    .line 223
    invoke-virtual {v3, v10, v14, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v4, 0x2

    new-array v15, v4, [F

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v15, v19

    aput v16, v15, v25

    .line 231
    invoke-virtual {v2, v12, v11, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v9, v4, [F

    neg-int v11, v13

    int-to-float v11, v11

    aput v11, v9, v19

    aput v16, v9, v25

    .line 232
    invoke-virtual {v3, v12, v14, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-object/from16 v26, v8

    goto :goto_6

    :cond_5
    move-object/from16 v26, v8

    const/4 v4, 0x2

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x1

    new-array v8, v4, [F

    .line 235
    fill-array-data v8, :array_0

    invoke-virtual {v1, v10, v15, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v8, v4, [F

    aput v16, v8, v19

    int-to-float v4, v13

    aput v4, v8, v25

    .line 236
    invoke-virtual {v3, v10, v14, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 239
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_6

    sub-int v9, v9, v24

    goto :goto_5

    :cond_6
    add-int v9, v9, v24

    :goto_5
    const/4 v4, 0x2

    new-array v8, v4, [F

    const/4 v4, 0x0

    const/4 v13, 0x0

    aput v4, v8, v13

    int-to-float v4, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    .line 240
    invoke-virtual {v2, v10, v11, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 244
    :goto_6
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v6

    :goto_7
    move/from16 v9, v21

    goto :goto_8

    :cond_7
    move-object/from16 v26, v8

    .line 247
    iget-boolean v8, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v8, :cond_8

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    .line 252
    aget v10, v6, v8

    add-int v10, v10, v17

    aput v10, v6, v8

    .line 253
    invoke-direct {v0, v7, v4, v9}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 254
    aget v9, v7, v8

    aget v10, v6, v8

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    .line 255
    aget v13, v7, v10

    aget v15, v6, v10

    sub-int/2addr v13, v15

    move-object/from16 v25, v6

    const/4 v15, 0x2

    new-array v6, v15, [F

    aput v23, v6, v8

    const/16 v16, 0x0

    aput v16, v6, v10

    .line 257
    invoke-virtual {v1, v12, v14, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v6, v15, [F

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v6, v8

    aput v16, v6, v10

    .line 258
    invoke-virtual {v2, v12, v11, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v6, v15, [F

    neg-int v9, v13

    int-to-float v9, v9

    aput v9, v6, v8

    aput v16, v6, v10

    .line 259
    invoke-virtual {v3, v12, v14, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v6, v15, [F

    aput v9, v6, v8

    aput v16, v6, v10

    .line 260
    invoke-virtual {v3, v4, v14, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 262
    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v25, v6

    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 264
    fill-array-data v6, :array_1

    invoke-virtual {v1, v12, v15, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v6, v4, [F

    move/from16 v9, v21

    neg-int v4, v9

    int-to-float v4, v4

    const/4 v8, 0x0

    aput v4, v6, v8

    const/4 v4, 0x0

    const/4 v8, 0x1

    aput v4, v6, v8

    .line 265
    invoke-virtual {v1, v12, v14, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 267
    :goto_8
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v18

    move-object/from16 v4, v22

    move/from16 v13, v23

    move/from16 v11, v24

    move-object/from16 v6, v25

    move-object/from16 v8, v26

    goto/16 :goto_4

    :cond_9
    move-object/from16 v22, v4

    move-object/from16 v26, v8

    move/from16 v23, v13

    .line 270
    iget-boolean v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_d

    .line 272
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v23, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v7, v9

    .line 274
    invoke-virtual {v1, v4, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 275
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v8, v6, [F

    fill-array-data v8, :array_2

    .line 276
    invoke-virtual {v7, v4, v15, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 277
    invoke-virtual {v7, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 278
    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 279
    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    .line 281
    iput-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 284
    :goto_9
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 285
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 287
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v4, 0x3f5c28f6    # 0.86f

    .line 288
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_3

    move-object/from16 v7, v26

    .line 289
    invoke-virtual {v1, v7, v15, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 290
    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v6

    new-array v8, v4, [F

    fill-array-data v8, :array_4

    invoke-virtual {v1, v6, v15, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 291
    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v6

    new-array v8, v4, [F

    fill-array-data v8, :array_5

    invoke-virtual {v1, v6, v15, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 292
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x3

    const/high16 v14, 0x3f800000    # 1.0f

    if-gt v1, v4, :cond_b

    move v1, v14

    goto :goto_a

    .line 298
    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x6

    if-gt v1, v4, :cond_c

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    .line 301
    :goto_a
    new-instance v4, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v1, v14}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 302
    invoke-virtual {v4}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 303
    invoke-virtual {v4}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 304
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 305
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_b

    :cond_d
    move-object/from16 v7, v26

    .line 307
    :goto_b
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_6

    .line 308
    invoke-virtual {v1, v2, v15, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 309
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v2

    new-array v4, v3, [F

    fill-array-data v4, :array_7

    invoke-virtual {v1, v2, v15, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 310
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 311
    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 312
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 313
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v2, 0x3e0f5c29    # 0.14f

    .line 314
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_8

    .line 315
    invoke-virtual {v1, v7, v15, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateQQSVisibility()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 125
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 124
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 1

    .line 370
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 385
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 411
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 170
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sysui_qs_fancy_anim"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    .line 152
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string v0, "sysui_qs_move_whole_rows"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_0

    :cond_1
    const-string p2, "sysui_qqs_count"

    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 161
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 136
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_qs_fancy_anim"

    const-string v1, "sysui_qs_move_whole_rows"

    const-string v2, "sysui_qqs_count"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 145
    :cond_0
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 130
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 103
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 346
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 352
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_4

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 364
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method setShowCollapsedOnKeyguard(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method
