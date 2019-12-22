.class final Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V
    .locals 0

    .line 1610
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 1609
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method private injectStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1619
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/InjectionInflationController;

    .line 1618
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMInjectionInflater(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/util/InjectionInflationController;)V

    .line 1620
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1621
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 1620
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMPulseExpansionHandler(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1623
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 1622
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMWakeUpCoordinator(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1625
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1624
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMKeyguardBypassController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1627
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1626
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMHeadsUpManager(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1628
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1629
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 1628
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMDynamicPrivacyController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1631
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    .line 1630
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMBypassHeadsUpNotifier(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)V

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1633
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    .line 1632
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMKeyguardLiftController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    .line 1634
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1636
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 1634
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMAllowNotificationLongPress(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    return-object p1
.end method


# virtual methods
.method public createStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 1614
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->injectStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
