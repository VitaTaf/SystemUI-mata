.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 265
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$402(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)Z

    .line 267
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 269
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 270
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$700(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x198

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$800(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V

    goto :goto_1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$900(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$1000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setFocusOnVisibilityChange()V

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$1100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p1

    xor-int/2addr p1, v1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$1102(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)Z

    goto :goto_0

    .line 282
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$1200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x197

    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    :cond_4
    :goto_1
    return-void
.end method
