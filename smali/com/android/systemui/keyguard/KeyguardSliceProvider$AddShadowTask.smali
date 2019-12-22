.class Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSliceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddShadowTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBlurRadius:F

.field private final mProviderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mProviderReference:Ljava/lang/ref/WeakReference;

    .line 214
    iput-object p2, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 215
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 216
    sget p2, Lcom/android/systemui/R$dimen;->smartspace_icon_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mBlurRadius:F

    return-void
.end method

.method private applyShadow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 237
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mBlurRadius:F

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 238
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 239
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 241
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 247
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/16 v5, 0x46

    .line 248
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    .line 249
    aget v5, v0, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v0, v0, v6

    int-to-float v0, v0

    iget p0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mBlurRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p0, v6

    add-float/2addr v0, p0

    invoke-virtual {v3, v1, v5, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p0, 0xff

    .line 251
    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p0, 0x0

    .line 252
    invoke-virtual {v3, p1, p0, p0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 221
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->applyShadow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->setIcon(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mProviderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;

    .line 230
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 232
    invoke-static {p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;->access$000(Lcom/google/android/systemui/keyguard/KeyguardSliceProvider;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 230
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
