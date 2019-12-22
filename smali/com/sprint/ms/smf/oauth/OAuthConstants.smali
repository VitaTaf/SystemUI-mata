.class public Lcom/sprint/ms/smf/oauth/OAuthConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "hmac-sha-1"

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "HmacSHA1"

    return-object p0

    :cond_0
    const-string v0, "hmac-sha-256"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "HmacSHA256"

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method
