.class Lcom/android/internal/policy/impl/AwesomeLockScreen;
.super Landroid/widget/FrameLayout;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
.implements Lcom/android/internal/policy/impl/QcomCallback;


# static fields
.field private static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field private static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final DBG:Z = false

.field private static final OWNER_INFO_VAR:Ljava/lang/String; = "owner_info"

.field private static final TAG:Ljava/lang/String; = "AwesomeLockScreen"

.field private static mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private static mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

.field private static mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

.field private static mThemeChanged:I

.field private static sStartTime:J

.field private static sTotalWakenTime:J


# instance fields
.field private isPaused:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mConfig:Lmiui/app/screenelement/util/ConfigFile;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWakeStartTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 17
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusable(Z)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusableInTouchMode(Z)V

    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v2, :cond_0

    new-instance v2, Lmiui/util/HapticFeedbackUtil;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    :cond_0
    const-string v2, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .local v10, con:Landroid/content/res/Configuration;
    iget-object v2, v10, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v0, v2, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    move/from16 v16, v0

    .local v16, version:I
    sget v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mThemeChanged:I

    move/from16 v0, v16

    if-le v0, v2, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->clearCache()V

    sput v16, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mThemeChanged:I

    :cond_1
    const v8, 0x36ee80

    .local v8, CHECK_TIME:I
    const v9, 0x36ee80

    .local v9, INACTIVE_TIME:I
    const/4 v15, 0x0

    .local v15, screenContext:Lmiui/app/screenelement/ScreenContext;
    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-nez v2, :cond_4

    new-instance v2, Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;

    invoke-direct {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/app/screenelement/ResourceLoader;

    move-result-object v3

    const-wide/32 v4, 0x36ee80

    const-wide/32 v6, 0x36ee80

    invoke-direct/range {v2 .. v7}, Lmiui/app/screenelement/LifecycleResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;JJ)V

    sput-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v15, Lmiui/app/screenelement/ScreenContext;

    .end local v15           #screenContext:Lmiui/app/screenelement/ScreenContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;

    invoke-direct {v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;-><init>()V

    invoke-direct {v15, v2, v3, v4}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    .restart local v15       #screenContext:Lmiui/app/screenelement/ScreenContext;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->loadConfig(Lmiui/app/screenelement/ScreenContext;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .local v14, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    const/4 v3, 0x1

    invoke-static {v14, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v11, 0x1

    .local v11, ownerInfoEnabled:Z
    :goto_1
    if-eqz v11, :cond_6

    const-string v2, "lock_screen_owner_info"

    invoke-static {v14, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, ownerString:Ljava/lang/String;
    :goto_2
    const-string v2, "owner_info"

    iget-object v3, v15, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-static {v2, v3, v12}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-nez v2, :cond_2

    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-direct {v2, v15}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    sput-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->load()Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->onRefreshBatteryInfo(ZZI)V

    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setUnlockerCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V

    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;-><init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v13, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v13, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    return-void

    .end local v11           #ownerInfoEnabled:Z
    .end local v12           #ownerString:Ljava/lang/String;
    .end local v13           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v14           #res:Landroid/content/ContentResolver;
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v15

    goto/16 :goto_0

    .restart local v14       #res:Landroid/content/ContentResolver;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v11       #ownerInfoEnabled:Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AwesomeLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/LifecycleResourceManager;->clear()V

    sput-object v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    :cond_0
    return-void
.end method

.method private loadConfig(Lmiui/app/screenelement/ScreenContext;)V
    .locals 9
    .parameter "c"

    .prologue
    new-instance v5, Lmiui/app/screenelement/util/ConfigFile;

    invoke-direct {v5}, Lmiui/app/screenelement/util/ConfigFile;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/ConfigFile;

    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/ConfigFile;

    sget-object v6, Lmiui/content/res/ThemeResources;->sAppliedLockstyleConfigPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/ConfigFile;

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/app/screenelement/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/app/screenelement/util/ConfigFile$Variable;

    .local v4, v:Lmiui/app/screenelement/util/ConfigFile$Variable;
    iget-object v5, v4, Lmiui/app/screenelement/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "string"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lmiui/app/screenelement/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v7, v4, Lmiui/app/screenelement/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, v4, Lmiui/app/screenelement/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "number"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, v4, Lmiui/app/screenelement/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .local v0, d:D
    iget-object v5, v4, Lmiui/app/screenelement/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #d:D
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v4           #v:Lmiui/app/screenelement/util/ConfigFile$Variable;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/app/screenelement/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/util/Task;

    .local v3, t:Lmiui/app/screenelement/util/Task;
    iget-object v5, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    const-string v6, "name"

    iget-object v7, p1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v8, v3, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    iget-object v5, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    const-string v6, "package"

    iget-object v7, p1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v8, v3, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    iget-object v5, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    const-string v6, "class"

    iget-object v7, p1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v8, v3, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->cleanUp(Z)V

    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/Variables;->reset()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/ConfigFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public haptic(I)V
    .locals 3
    .parameter "effectId"

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->isDisplayDesktop()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSoundEnable()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onPause()V

    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    const-string v3, "pause"

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    sget-object v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    invoke-virtual {v2}, Lmiui/app/screenelement/LifecycleResourceManager;->checkCache()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    sub-long v0, v2, v4

    .local v0, wakenTime:J
    sget-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onResume()V

    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    return-void
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "delay"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    new-instance v0, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;-><init>(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V

    .local v0, action:Ljava/lang/Runnable;
    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "AwesomeLockScreen"

    const-string v2, "lockscreen awake time: [%d sec] in time range: [%d sec]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v5, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sget-wide v7, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
