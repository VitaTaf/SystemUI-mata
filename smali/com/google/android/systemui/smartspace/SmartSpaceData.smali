.class public Lcom/google/android/systemui/smartspace/SmartSpaceData;
.super Ljava/lang/Object;
.source "SmartSpaceData.java"


# instance fields
.field mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

.field mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 63
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-void
.end method

.method public getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-object p0
.end method

.method public getExpirationRemainingMillis()J
    .locals 6

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    sub-long/2addr v2, v0

    return-wide v2

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExpiresAtMillis()J
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v0

    return-wide v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-object p0
.end method

.method public handleExpire()Z
    .locals 6

    .line 68
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v0

    const-string v1, "SmartspaceData"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "weather expired "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v4}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iput-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v4}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current expired "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v4}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    iput-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move v0, v2

    :cond_3
    return v0
.end method

.method public hasCurrent()Z
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasWeather()Z
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
