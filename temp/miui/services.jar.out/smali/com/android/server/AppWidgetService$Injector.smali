.class Lcom/android/server/AppWidgetService$Injector;
.super Ljava/lang/Object;
.source "AppWidgetService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
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

.method static handleAction(Lcom/android/server/AppWidgetService;Ljava/lang/String;)Z
    .locals 1
    .parameter "service"
    .parameter "action"

    .prologue
    const-string v0, "android.intent.action.RESTORE_FINISH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    #calls: Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;
    invoke-static {p0}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->reload()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static receiveRestoreFinish(Lcom/android/server/AppWidgetService;)V
    .locals 5
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.RESTORE_FINISH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
