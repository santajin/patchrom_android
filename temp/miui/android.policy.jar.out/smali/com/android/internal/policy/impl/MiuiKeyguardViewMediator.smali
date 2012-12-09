.class public Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;
.super Lcom/android/internal/policy/impl/KeyguardViewMediator;
.source "MiuiKeyguardViewMediator.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->callNotifyScreenOffLocked()V

    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->removeAccessControlPass(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method postAdjustStatusBarLocked()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .local v0, flags:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x8000

    :goto_0
    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x9

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .end local v0           #flags:I
    :cond_2
    return-void

    .restart local v0       #flags:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
