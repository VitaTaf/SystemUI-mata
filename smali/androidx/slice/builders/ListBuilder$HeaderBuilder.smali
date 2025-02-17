.class public Landroidx/slice/builders/ListBuilder$HeaderBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mLayoutDirection:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleLoading:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryLoading:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLoading:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1663
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 1671
    iget p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mLayoutDirection:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 0

    .line 1655
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1623
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 1639
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1607
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 1599
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isSubtitleLoading()Z
    .locals 0

    .line 1631
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitleLoading:Z

    return p0
.end method

.method public isSummaryLoading()Z
    .locals 0

    .line 1647
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSummaryLoading:Z

    return p0
.end method

.method public isTitleLoading()Z
    .locals 0

    .line 1615
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    return p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 0

    .line 1570
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 1484
    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 0

    .line 1499
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 1500
    iput-boolean p2, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    return-object p0
.end method
