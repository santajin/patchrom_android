.class Lcom/android/server/NotificationManagerService$Injector;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
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

.method static updateNotificationLight(Lcom/android/server/NotificationManagerService;)V
    .locals 9
    .parameter "service"

    .prologue
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->getDefaultNotificationColor()I

    move-result v3

    .local v3, defaultNotificationColor:I
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->getLedNotification()Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v5

    .local v5, ledNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "breathing_light_color"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x608000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .local v2, defaultFreq:I
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "breathing_light_freq"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, freq:I
    invoke-static {v4}, Lmiui/app/ExtraNotification;->getLedPwmOffOn(I)[I

    move-result-object v6

    .local v6, offOn:[I
    iget-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iput v0, v7, Landroid/app/Notification;->ledARGB:I

    iget-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    const/4 v8, 0x1

    aget v8, v6, v8

    iput v8, v7, Landroid/app/Notification;->ledOnMS:I

    iget-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    const/4 v8, 0x0

    aget v8, v6, v8

    iput v8, v7, Landroid/app/Notification;->ledOffMS:I

    return-void
.end method
