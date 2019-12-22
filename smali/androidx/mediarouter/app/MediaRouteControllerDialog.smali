.class public Landroidx/mediarouter/app/MediaRouteControllerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field static final CONNECTION_TIMEOUT_MILLIS:I

.field static final DEBUG:Z


# instance fields
.field private mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mArtIconBackgroundColor:I

.field mArtIconBitmap:Landroid/graphics/Bitmap;

.field mArtIconIsLoaded:Z

.field mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field mArtIconUri:Landroid/net/Uri;

.field private mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

.field private mCreated:Z

.field private mCustomControlLayout:Landroid/widget/FrameLayout;

.field private mCustomControlView:Landroid/view/View;

.field mDefaultControlLayout:Landroid/widget/FrameLayout;

.field mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private mDialogAreaLayout:Landroid/widget/LinearLayout;

.field private mDialogContentWidth:I

.field private mDisconnectButton:Landroid/widget/Button;

.field private mDividerView:Landroid/view/View;

.field private mExpandableAreaLayout:Landroid/widget/FrameLayout;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

.field private mGroupExpandCollapseButton:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

.field mGroupListAnimationDurationMs:I

.field mGroupListFadeInAnimation:Ljava/lang/Runnable;

.field private mGroupListFadeInDurationMs:I

.field private mGroupListFadeOutDurationMs:I

.field private mGroupMemberRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mGroupMemberRoutesAdded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberRoutesRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHasPendingUpdate:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mIsGroupExpanded:Z

.field mIsGroupListAnimating:Z

.field mIsGroupListAnimationPending:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMediaMainControlLayout:Landroid/widget/LinearLayout;

.field mPendingUpdateAnimationNeeded:Z

.field private mPlaybackControlButton:Landroid/widget/ImageButton;

.field private mPlaybackControlLayout:Landroid/widget/RelativeLayout;

.field final mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mRouteNameTextView:Landroid/widget/TextView;

.field final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

.field private mVolumeControlEnabled:Z

.field private mVolumeControlLayout:Landroid/widget/LinearLayout;

.field mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

.field mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

.field private mVolumeGroupListItemHeight:I

.field private mVolumeGroupListItemIconSize:I

.field private mVolumeGroupListMaxHeight:I

.field private final mVolumeGroupListPaddingTop:I

.field mVolumeSlider:Landroid/widget/SeekBar;

.field mVolumeSliderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->DEBUG:Z

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result p2

    .line 205
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 142
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 193
    new-instance p2, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Ljava/lang/Runnable;

    .line 207
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 209
    new-instance p2, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 210
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 211
    new-instance p2, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 212
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 213
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 214
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    .line 216
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 217
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 218
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 219
    sget p2, Landroidx/mediarouter/R$interpolator;->mr_linear_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 221
    sget p2, Landroidx/mediarouter/R$interpolator;->mr_fast_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 224
    :cond_0
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private animateGroupListItems(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 777
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    const/4 v0, 0x1

    .line 778
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    .line 779
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 780
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$8;

    invoke-direct {v1, p0, p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$8;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private animateLayoutHeight(Landroid/view/View;I)V
    .locals 4

    .line 704
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v0

    .line 706
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;IILandroid/view/View;)V

    .line 713
    iget p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 714
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 715
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 717
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private canShowPlaybackControlLayout()Z
    .locals 1

    .line 546
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private fadeInAddedRoutes()V
    .locals 8

    .line 910
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$12;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$12;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 923
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 924
    :goto_0
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 925
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v2

    .line 927
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 928
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 929
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 930
    iget v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v6, 0x1

    .line 931
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 932
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v3, :cond_0

    .line 935
    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v3, v6

    .line 937
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 938
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getLayoutHeight(Landroid/view/View;)I
    .locals 0

    .line 1060
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0
.end method

.method private getMainControllerHeight(Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 555
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 556
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 557
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    if-eqz p1, :cond_1

    .line 559
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 562
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    if-eqz p1, :cond_3

    .line 564
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 565
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method static isBitmapRecycled(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIconChanged()Z
    .locals 4

    .line 1117
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1118
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    .line 1119
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1120
    :goto_2
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    if-nez v3, :cond_3

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->getIconUri()Landroid/net/Uri;

    move-result-object p0

    :goto_3
    const/4 v3, 0x1

    if-eq v2, v0, :cond_4

    return v3

    :cond_4
    if-nez v2, :cond_5

    .line 1123
    invoke-static {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->uriEquals(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_5

    return v3

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private rebuildVolumeGroupList(Z)V
    .locals 6

    .line 744
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    .line 745
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 747
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 748
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->listUnorderedEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 749
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 751
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 752
    invoke-static {v2, v3}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getItemBoundMap(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 754
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 755
    invoke-static {v3, v4, v5}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getItemBitmapMap(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 757
    :goto_1
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 758
    invoke-static {v4, v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getItemsAdded(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 759
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-static {v4, v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getItemsRemoved(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    .line 761
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v0, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 762
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 763
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_4

    .line 764
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 765
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr p1, v0

    if-lez p1, :cond_4

    .line 766
    invoke-direct {p0, v2, v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateGroupListItems(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 768
    :cond_4
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 769
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    :goto_2
    return-void
.end method

.method static setLayoutHeight(Landroid/view/View;I)V
    .locals 1

    .line 1064
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1065
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1066
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    .line 286
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 287
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 288
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 293
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    if-nez v0, :cond_2

    return-void

    .line 297
    :cond_2
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaRouteCtrlDialog"

    const-string v2, "Error creating media controller in setMediaSession."

    .line 299
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_3

    .line 302
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 304
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    move-object p1, v1

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 307
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 308
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    const/4 p1, 0x0

    .line 309
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method private updateMediaControlVisibility(Z)V
    .locals 4

    .line 574
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-ne p0, v3, :cond_1

    if-nez p1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updatePlaybackControlLayout()V
    .locals 8

    .line 973
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 974
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 975
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 977
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 978
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 982
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPresentationDisplayId()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    .line 985
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroidx/mediarouter/R$string;->mr_controller_casting_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    move v0, v3

    :cond_2
    move v1, v7

    goto :goto_5

    .line 987
    :cond_3
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    .line 992
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroidx/mediarouter/R$string;->mr_controller_no_info_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 996
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v7

    :goto_3
    if-eqz v4, :cond_2

    .line 1000
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    goto :goto_5

    .line 989
    :cond_7
    :goto_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroidx/mediarouter/R$string;->mr_controller_no_media_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1004
    :goto_5
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v0, :cond_8

    move v0, v7

    goto :goto_6

    :cond_8
    move v0, v4

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    move v1, v7

    goto :goto_7

    :cond_9
    move v1, v4

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_10

    .line 1008
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1009
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    goto :goto_8

    :cond_a
    move v0, v7

    goto :goto_9

    :cond_b
    :goto_8
    move v0, v3

    .line 1010
    :goto_9
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_c

    .line 1014
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isPauseActionSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1015
    sget v0, Landroidx/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    .line 1016
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_pause:I

    goto :goto_a

    :cond_c
    if-eqz v0, :cond_d

    .line 1017
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isStopActionSupported()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1018
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteStopDrawable:I

    .line 1019
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_stop:I

    goto :goto_a

    :cond_d
    if-nez v0, :cond_e

    .line 1020
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isPlayActionSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1021
    sget v0, Landroidx/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    .line 1022
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_play:I

    goto :goto_a

    :cond_e
    move v0, v7

    move v2, v0

    move v3, v2

    .line 1026
    :goto_a
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_f

    move v4, v7

    :cond_f
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v3, :cond_10

    .line 1028
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 1029
    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    .line 1028
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1031
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 1032
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1033
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1031
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method private updateVolumeControlLayout()V
    .locals 4

    .line 730
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isVolumeControlAvailable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 732
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 734
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 735
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 739
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static uriEquals(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1070
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 792
    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v2, :cond_6

    iget-object v3, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 795
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 797
    new-instance v3, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;

    invoke-direct {v3, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 814
    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    .line 815
    :goto_0
    iget-object v7, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    if-ge v5, v7, :cond_4

    .line 816
    iget-object v7, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v9, v4, v5

    .line 818
    iget-object v10, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v10, v9}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 819
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 820
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    if-eqz v10, :cond_1

    .line 821
    iget v10, v10, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget v10, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v11

    .line 823
    :goto_1
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 824
    iget-object v14, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v14, :cond_2

    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 826
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 827
    iget v14, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    int-to-long v14, v14

    invoke-virtual {v10, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 828
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move v10, v11

    .line 830
    :cond_2
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v14, v8, v8, v10, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 831
    iget v8, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v10, v8

    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 832
    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 833
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 834
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 835
    iget-object v8, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez v6, :cond_3

    .line 838
    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v6, v13

    .line 840
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 841
    invoke-virtual {v7, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 842
    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p2

    .line 843
    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v7, p2

    .line 850
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 851
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 852
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 853
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 855
    iget-object v7, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 856
    new-instance v5, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    invoke-direct {v5, v4, v6}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v8}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->setAlphaAnimation(FF)Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    iget v4, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeOutDurationMs:I

    int-to-long v6, v4

    .line 857
    invoke-virtual {v5, v6, v7}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->setDuration(J)Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 858
    invoke-virtual {v5, v4}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    goto :goto_3

    .line 860
    :cond_5
    iget v7, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    mul-int/2addr v7, v2

    .line 861
    new-instance v9, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    invoke-direct {v9, v4, v6}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v7}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->setTranslateYAnimation(I)Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    iget v4, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v6, v4

    .line 862
    invoke-virtual {v9, v6, v7}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->setDuration(J)Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 863
    invoke-virtual {v9, v4}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    new-instance v4, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;

    invoke-direct {v4, v0, v5}, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 864
    invoke-virtual {v9, v4}, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->setAnimationEndListener(Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;)Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    .line 871
    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    .line 873
    :goto_3
    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4, v5}, Landroidx/mediarouter/app/OverlayListView;->addOverlayObject(Landroidx/mediarouter/app/OverlayListView$OverlayObject;)V

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method clearGroupListAnimation(Z)V
    .locals 10

    .line 944
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 945
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 946
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    .line 948
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz p1, :cond_0

    .line 949
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v5, :cond_0

    .line 950
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 953
    :cond_0
    sget v4, Landroidx/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 954
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 955
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 956
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x0

    .line 957
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 958
    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 959
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 960
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 961
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 962
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 963
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 964
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroidx/mediarouter/app/OverlayListView;->stopAnimationAll()V

    if-nez p1, :cond_2

    .line 968
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    :cond_2
    return-void
.end method

.method clearLoadedBitmap()V
    .locals 2

    const/4 v0, 0x0

    .line 1106
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    const/4 v1, 0x0

    .line 1107
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 1108
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    return-void
.end method

.method finishAnimation(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 899
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 900
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    const/4 v0, 0x0

    .line 901
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    .line 902
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    if-eqz v1, :cond_0

    .line 903
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    .line 904
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 906
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method getDesiredArtHeight(II)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    if-lt p1, p2, :cond_0

    .line 1084
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    int-to-float p0, p0

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p1, p1

    :goto_0
    div-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 1087
    :cond_0
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    int-to-float p0, p0

    const/high16 p1, 0x41100000    # 9.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x41800000    # 16.0f

    goto :goto_0
.end method

.method isPauseActionSupported()Z
    .locals 4

    .line 1046
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x202

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPlayActionSupported()Z
    .locals 4

    .line 1041
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x204

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isStopActionSupported()Z
    .locals 4

    .line 1051
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isVolumeControlAvailable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 1055
    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadInterpolator()V
    .locals 2

    .line 721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 722
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 725
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 472
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 475
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    sget-object v1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 477
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 323
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 326
    sget v0, Landroidx/mediarouter/R$layout;->mr_controller_material_dialog_b:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    const v0, 0x102001b

    .line 329
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 333
    sget v2, Landroidx/mediarouter/R$id;->mr_expandable_area:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    .line 334
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroidx/mediarouter/app/MediaRouteControllerDialog$2;

    invoke-direct {v3, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    sget v2, Landroidx/mediarouter/R$id;->mr_dialog_area:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    .line 341
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroidx/mediarouter/app/MediaRouteControllerDialog$3;

    invoke-direct {v3, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$3;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getButtonTextColor(Landroid/content/Context;)I

    move-result v2

    const v3, 0x102001a

    .line 348
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 349
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    sget v4, Landroidx/mediarouter/R$string;->mr_controller_disconnect:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 350
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 351
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020019

    .line 353
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 354
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    sget v4, Landroidx/mediarouter/R$string;->mr_controller_stop_casting:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 355
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 356
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    sget v2, Landroidx/mediarouter/R$id;->mr_name:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    .line 359
    sget v2, Landroidx/mediarouter/R$id;->mr_close:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 360
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    sget v2, Landroidx/mediarouter/R$id;->mr_custom_control:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    .line 362
    sget v2, Landroidx/mediarouter/R$id;->mr_default_control:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 365
    new-instance v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$4;

    invoke-direct {v2, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$4;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 381
    sget v3, Landroidx/mediarouter/R$id;->mr_art:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 382
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    sget v3, Landroidx/mediarouter/R$id;->mr_control_title_container:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    sget v2, Landroidx/mediarouter/R$id;->mr_media_main_control:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 386
    sget v2, Landroidx/mediarouter/R$id;->mr_control_divider:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    .line 388
    sget v2, Landroidx/mediarouter/R$id;->mr_playback_control:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 389
    sget v2, Landroidx/mediarouter/R$id;->mr_control_title:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 390
    sget v2, Landroidx/mediarouter/R$id;->mr_control_subtitle:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 391
    sget v2, Landroidx/mediarouter/R$id;->mr_control_playback_ctrl:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 392
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    sget v0, Landroidx/mediarouter/R$id;->mr_volume_control:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 395
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    sget v0, Landroidx/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 397
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 398
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 399
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 401
    sget v0, Landroidx/mediarouter/R$id;->mr_volume_group_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/OverlayListView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 403
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 405
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    .line 408
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 409
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v3

    .line 408
    invoke-static {v0, v1, v2, v3}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setMediaControlsBackgroundColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    .line 410
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    check-cast v1, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    .line 413
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget v0, Landroidx/mediarouter/R$id;->mr_group_expand_collapse:I

    .line 416
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 417
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->loadInterpolator()V

    .line 429
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_animation_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    .line 431
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_fade_in_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    .line 433
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_fade_out_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeOutDurationMs:I

    .line 436
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    .line 437
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 441
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCreated:Z

    .line 442
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayout()V

    return-void
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 482
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    .line 483
    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 485
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 492
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 p2, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return p2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method startGroupListFadeInAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 878
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    .line 879
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 880
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 881
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$11;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$11;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method startGroupListFadeInAnimationInternal()V
    .locals 1

    .line 891
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->fadeInAddedRoutes()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 894
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    :goto_0
    return-void
.end method

.method update(Z)V
    .locals 3

    .line 509
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    .line 511
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    .line 515
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    .line 516
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 520
    :cond_1
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCreated:Z

    if-nez v1, :cond_2

    return-void

    .line 524
    :cond_2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->canDisconnect()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteCtrlDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 530
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 531
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 533
    :goto_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->clearLoadedBitmap()V

    .line 535
    :cond_5
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateVolumeControlLayout()V

    .line 536
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updatePlaybackControlLayout()V

    .line 537
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    return-void

    .line 517
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method updateArtIconIfNeeded()V
    .locals 2

    .line 1091
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isIconChanged()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1095
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1097
    :cond_1
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 1098
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method updateLayout()V
    .locals 3

    .line 449
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    move-result v0

    .line 450
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 452
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    .line 455
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 456
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_item_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    .line 458
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    .line 460
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 465
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 466
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method updateLayoutHeight(Z)V
    .locals 2

    .line 584
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 585
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 586
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;

    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method updateLayoutHeightInternal(Z)V
    .locals 9

    .line 604
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v0

    .line 605
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 606
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    .line 607
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 609
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    .line 608
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 611
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 613
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getDesiredArtHeight(II)I

    move-result v2

    .line 617
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v5, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_1
    move v2, v3

    .line 621
    :goto_1
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    move-result v0

    .line 622
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 624
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 625
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-lez v4, :cond_3

    .line 627
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    add-int/2addr v5, v4

    .line 629
    :cond_3
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 630
    iget-boolean v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    .line 633
    :goto_3
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    .line 634
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 635
    invoke-virtual {v1, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 639
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 640
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v1, v7

    .line 642
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v1

    .line 645
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    const/16 v8, 0x8

    if-nez v1, :cond_5

    if-lez v2, :cond_5

    if-gt v5, v7, :cond_5

    .line 647
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    goto :goto_4

    .line 650
    :cond_5
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-static {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 651
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 652
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    add-int v5, v4, v0

    move v2, v3

    .line 658
    :goto_4
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v0

    if-eqz v0, :cond_7

    if-gt v5, v7, :cond_7

    .line 660
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 662
    :cond_7
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 664
    :goto_5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    .line 665
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 666
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v1, v3

    .line 665
    :goto_7
    invoke-direct {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    move-result v0

    .line 668
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, v7, :cond_a

    sub-int/2addr v1, v7

    sub-int/2addr v4, v1

    move v1, v7

    .line 676
    :cond_a
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 677
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->clearAnimation()V

    .line 678
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->clearAnimation()V

    if-eqz p1, :cond_b

    .line 680
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    .line 681
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-direct {p0, v0, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    .line 682
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    goto :goto_8

    .line 684
    :cond_b
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 685
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-static {v0, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 686
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 689
    :goto_8
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 690
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->rebuildVolumeGroupList(Z)V

    return-void
.end method

.method updateVolumeGroupItemHeight(Landroid/view/View;)V
    .locals 2

    .line 694
    sget v0, Landroidx/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 695
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    invoke-static {v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 696
    sget v0, Landroidx/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 698
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 699
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 700
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
