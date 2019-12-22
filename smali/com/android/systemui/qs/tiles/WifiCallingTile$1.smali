.class Lcom/android/systemui/qs/tiles/WifiCallingTile$1;
.super Landroid/database/ContentObserver;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/ims/ImsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    return-void
.end method
