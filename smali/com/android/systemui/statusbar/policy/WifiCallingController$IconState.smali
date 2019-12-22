.class public Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;
.super Ljava/lang/Object;
.source "WifiCallingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiCallingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconState"
.end annotation


# instance fields
.field public final icon:I

.field public final visible:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;->visible:Z

    .line 35
    iput p2, p0, Lcom/android/systemui/statusbar/policy/WifiCallingController$IconState;->icon:I

    return-void
.end method
