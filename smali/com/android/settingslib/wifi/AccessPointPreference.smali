.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroidx/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;,
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_METERED:[I

.field private static final STATE_SECURED:[I

.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private final mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mShowDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mWifiSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 46
    sget v2, Lcom/android/settingslib/R$attr;->state_encrypted:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    new-array v1, v0, [I

    .line 50
    sget v2, Lcom/android/settingslib/R$attr;->state_metered:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    new-array v1, v0, [I

    .line 54
    sget v2, Lcom/android/settingslib/R$attr;->wifi_friction:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 58
    sget v2, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 79
    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 301
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 97
    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 98
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 99
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-direct {p2, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V
    .locals 1

    .line 118
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 79
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 301
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 119
    sget v0, Lcom/android/settingslib/R$layout;->preference_access_point:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getWidgetLayoutResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 121
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 122
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 123
    iput-boolean p5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 124
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 125
    iput p7, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 126
    iput p4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    .line 127
    iput-object p6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 128
    iput-object p8, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settingslib/R$dimen;->wifi_preference_badge_padding:I

    .line 130
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 204
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 205
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 210
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 211
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static buildContentDescription(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;
    .locals 8

    .line 275
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, ","

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v1, :cond_0

    new-array v1, v6, [Ljava/lang/CharSequence;

    aput-object v0, v1, v5

    aput-object v3, v1, v4

    aput-object p1, v1, v2

    .line 278
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 280
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-ltz p1, :cond_1

    .line 281
    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v7, v1

    if-ge p1, v7, :cond_1

    new-array v7, v6, [Ljava/lang/CharSequence;

    aput-object v0, v7, v5

    aput-object v3, v7, v4

    .line 282
    aget p1, v1, p1

    .line 283
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    .line 282
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    new-array p1, v6, [Ljava/lang/CharSequence;

    aput-object v0, p1, v5

    aput-object v3, p1, v4

    .line 286
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p2

    if-nez p2, :cond_2

    .line 287
    sget p2, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 288
    :cond_2
    sget p2, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, p1, v2

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private postNotifyChanged()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 297
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 267
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getWidgetLayoutResourceId()I
    .locals 0

    .line 134
    sget p0, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    return p0
.end method

.method protected notifyChanged()V
    .locals 2

    .line 257
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    goto :goto_0

    .line 261
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 143
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    const v0, 0x1020016

    .line 153
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 159
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    sget v0, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    .line 164
    sget v0, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->shouldShowDivider()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public shouldShowDivider()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mShowDivider:Z

    return p0
.end method
