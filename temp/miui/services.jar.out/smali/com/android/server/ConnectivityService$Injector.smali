.class Lcom/android/server/ConnectivityService$Injector;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startUsingNetworkFeature(I)V
    .locals 3
    .parameter "usedNetworkType"

    .prologue
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lmiui/net/FirewallManager;->onStartUsingNetworkFeature(III)V

    return-void
.end method

.method public static stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;I)V
    .locals 3
    .parameter "u"
    .parameter "usedNetworkType"

    .prologue
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    invoke-virtual {v0, v1, v2, p1}, Lmiui/net/FirewallManager;->onStopUsingNetworkFeature(III)V

    return-void
.end method
