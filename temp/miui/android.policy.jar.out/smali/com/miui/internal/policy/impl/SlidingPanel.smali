.class public Lcom/miui/internal/policy/impl/SlidingPanel;
.super Landroid/widget/LinearLayout;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/SlidingPanel$Slider;,
        Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;,
        Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;,
        Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;,
        Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_MODE_FLY_DOWN:I = 0x1

.field private static final ANIM_MODE_RESET:I = 0x0

.field public static final BACKGROUND_MODE_BATTERY_CHARGING:I = 0x2

.field public static final BACKGROUND_MODE_BATTERY_FULL:I = 0x3

.field public static final BACKGROUND_MODE_BATTERY_LOW:I = 0x1

.field public static final BACKGROUND_MODE_NORMAL:I = 0x0

.field private static final DOUBLE_CLICK_THRESHOLD:J = 0x1f4L

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingPanel"

.field private static final SINGLE_CLICK_THRESHOLD:J = 0x96L

.field public static final SLIDER_LEFT:I = 0x0

.field public static final SLIDER_MIDDLE:I = 0x1

.field public static final SLIDER_RIGHT:I = 0x2


# instance fields
.field private MIN_MOVING_THRESHOLD:I

.field private MOVING_THRESHOLD:I

.field private mAnimation:Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;

.field private mBackgroundMode:I

.field private mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

.field private mBottomAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mButtonRegion:Landroid/widget/FrameLayout;

.field private mButtonRegionHeight:I

.field private mContentArea:Landroid/widget/FrameLayout;

.field private mControlRegion:Landroid/widget/FrameLayout;

.field private mCurrentDragView:Landroid/view/View;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownY:I

.field private mFooterRegionHeight:I

.field private mGrabbedState:I

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mIsPaused:Z

.field private mIsPressing:Z

.field private mIsShowBatteryLevel:Z

.field private mLastDownTime:J

.field private mLastSetGrabstateTime:J

.field private mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

.field private mLongVibrate:Z

.field private mMoving:Z

.field private mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

.field private mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

.field private mSingleClick:Ljava/lang/Runnable;

.field private mTimeRegion:Landroid/widget/FrameLayout;

.field private mTmpLocation:[I

.field private mTrackingPointerId:I

.field private mTriggered:Z

.field private mWaitForHandleMotionEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/policy/impl/SlidingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v2, 0xe

    iput v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->MIN_MOVING_THRESHOLD:I

    iput v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mGrabbedState:I

    iput-boolean v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTriggered:Z

    iput-boolean v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLongVibrate:Z

    iput v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTrackingPointerId:I

    iput v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDownY:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastSetGrabstateTime:J

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    new-instance v2, Lcom/miui/internal/policy/impl/SlidingPanel$2;

    invoke-direct {v2, p0}, Lcom/miui/internal/policy/impl/SlidingPanel$2;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V

    iput-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mSingleClick:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPaused:Z

    iput v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayHeight:I

    iget v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I

    iget v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayHeight:I

    if-le v2, v5, :cond_0

    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I

    .local v1, temp:I
    iget v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayHeight:I

    iput v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I

    iput v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayHeight:I

    .end local v1           #temp:I
    :cond_0
    const v2, 0x6090001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsShowBatteryLevel:Z

    invoke-virtual {p0, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setOrientation(I)V

    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGravity(I)V

    invoke-virtual {p0, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setChildrenDrawnWithCacheEnabled(Z)V

    new-instance v2, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Lcom/miui/internal/policy/impl/SlidingPanel$1;)V

    iput-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setupContentArea()V

    invoke-virtual {p0, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBackgroundFor(I)V

    iget v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegionHeight:I

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->MOVING_THRESHOLD:I

    iget v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->MOVING_THRESHOLD:I

    iget v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->MIN_MOVING_THRESHOLD:I

    if-ge v2, v5, :cond_1

    iget v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->MIN_MOVING_THRESHOLD:I

    iput v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->MOVING_THRESHOLD:I

    :cond_1
    new-instance v2, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;

    invoke-direct {v2, p0, p0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Lcom/miui/internal/policy/impl/SlidingPanel;I)V

    iput-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mAnimation:Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mAnimation:Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;

    const-wide/16 v4, 0x50

    invoke-virtual {v2, v4, v5}, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mAnimation:Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;

    new-instance v4, Lcom/miui/internal/policy/impl/SlidingPanel$1;

    invoke-direct {v4, p0}, Lcom/miui/internal/policy/impl/SlidingPanel$1;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V

    invoke-virtual {v2, v4}, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lmiui/util/HapticFeedbackUtil;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/internal/policy/impl/SlidingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mScrollY:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/policy/impl/SlidingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/policy/impl/SlidingPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/internal/policy/impl/SlidingPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsShowBatteryLevel:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/internal/policy/impl/SlidingPanel;)Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/policy/impl/SlidingPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/internal/policy/impl/SlidingPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->resetSlidingPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/policy/impl/SlidingPanel;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mSingleClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/policy/impl/SlidingPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mMoving:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/internal/policy/impl/SlidingPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/internal/policy/impl/SlidingPanel;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastDownTime:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/miui/internal/policy/impl/SlidingPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I

    return p1
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private getSlider(I)Lcom/miui/internal/policy/impl/SlidingPanel$Slider;
    .locals 1
    .parameter "slider"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleMotionDown(FF)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    invoke-direct {p0, p1, p2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->withinView(FFLandroid/view/View;)Z

    move-result v0

    .local v0, leftHit:Z
    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    invoke-direct {p0, p1, p2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->withinView(FFLandroid/view/View;)Z

    move-result v1

    .local v1, rightHit:Z
    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->withinView(FFLandroid/view/View;)Z

    move-result v2

    .local v2, timeViewHit:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    iput-boolean v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mWaitForHandleMotionEvent:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mMoving:Z

    iput-boolean v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTriggered:Z

    float-to-int v3, p2

    iput v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDownY:I

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v3, v8, v7}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastDownTime:J

    invoke-direct {p0, v7}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mSingleClick:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastSetGrabstateTime:J

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    if-eqz v3, :cond_1

    iput-boolean v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    iget v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I

    invoke-virtual {p0, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBackgroundFor(I)V

    :cond_1
    iput-boolean v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mWaitForHandleMotionEvent:Z

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastDownTime:J

    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    iput-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    iput-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    goto :goto_1
.end method

.method private hitDownThreshold()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mScrollY:I

    neg-int v0, v0

    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mFooterRegionHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitVibrateThreshold()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mScrollY:I

    neg-int v0, v0

    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mFooterRegionHeight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePanel(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    float-to-int v1, p2

    iget v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDownY:I

    sub-int v0, v1, v2

    .local v0, deltaY:I
    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mFooterRegionHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    neg-int v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method private resetSlidingPanel()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBackgroundFor(I)V

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->hitDownThreshold()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    :cond_0
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mGrabbedState:I

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setupContentArea()V
    .locals 13

    .prologue
    const/16 v8, 0x53

    const/16 v12, 0x50

    const/16 v11, 0x11

    const/4 v10, -0x2

    const/4 v9, -0x1

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v3, controlRegionWrapper:Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v4, defaultContorlView:Landroid/view/View;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v3, v6}, Lcom/miui/internal/policy/impl/SlidingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v6, v7}, Lcom/miui/internal/policy/impl/SlidingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    const v7, 0x6020090

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    const v7, 0x602006f

    invoke-virtual {v6, v7}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    const v7, 0x602006e

    invoke-virtual {v6, v7}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;->setImage(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    const v7, 0x6020084

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    const v7, 0x6020075

    invoke-virtual {v6, v7}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    const v7, 0x6020074

    invoke-virtual {v6, v7}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;->setImage(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, buttonRegionBg:Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegionHeight:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mFooterRegionHeight:I

    new-instance v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, bottomAnim:Landroid/widget/ImageView;
    const v6, 0x602009a

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBottomAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x51

    invoke-direct {v7, v9, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v2, contentAreaMask:Landroid/widget/ImageView;
    const v6, 0x6020092

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private withinTouchArea(FLandroid/view/View;)Z
    .locals 6
    .parameter "y"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x60a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .local v1, startY:I
    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v3, v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .local v0, endY:I
    int-to-float v3, v1

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    int-to-float v3, v0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    invoke-virtual {p3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v6, v6, v5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int v2, v6, v7

    .local v2, startX:I
    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v6, v6, v5

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v0, v6, v7

    .local v0, endX:I
    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v3, v6, v4

    .local v3, startY:I
    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v6, v6, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v1, v6, v7

    .local v1, endY:I
    int-to-float v6, v2

    cmpg-float v6, v6, p1

    if-gtz v6, :cond_0

    int-to-float v6, v0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    int-to-float v6, v3

    cmpg-float v6, v6, p2

    if-gtz v6, :cond_0

    int-to-float v6, v1

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public clearBatteryAnimations()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->clearBatteryAnimations()V

    return-void
.end method

.method public getBottomHeight()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegionHeight:I

    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mFooterRegionHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getControlView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mControlRegion:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSliderTextVisibility(I)I
    .locals 1
    .parameter "slider"

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel;->getSlider(I)Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;->getTextVisibility()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->onResume()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPaused:Z

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->onPasue()V

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBottomAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBottomAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPaused:Z

    invoke-virtual {p0, v0, v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->scrollTo(II)V

    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBackgroundFor(I)V

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBottomAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBottomAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v8, 0x5

    const/4 v7, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .local v2, pointerIndex:I
    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    invoke-virtual {p0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .local v3, x:F
    const/4 v4, 0x0

    .local v4, y:F
    iget v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTrackingPointerId:I

    if-gez v5, :cond_2

    if-eq v0, v8, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v6, v6, v10

    int-to-float v6, v6

    add-float v4, v5, v6

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->withinTouchArea(FLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTrackingPointerId:I

    invoke-direct {p0, v3, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->handleMotionDown(FF)V

    :cond_1
    :goto_0
    return v10

    :cond_2
    iget v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTrackingPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_4

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :cond_3
    :pswitch_1
    iput-boolean v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mSingleClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTriggered:Z

    if-eqz v5, :cond_f

    iput v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTrackingPointerId:I

    iput-boolean v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mWaitForHandleMotionEvent:Z

    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mMoving:Z

    if-eqz v5, :cond_e

    const/4 v1, 0x0

    .local v1, handler:I
    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLeftSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    if-ne v5, v6, :cond_c

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->dispatchTriggerEvent(I)V

    goto :goto_0

    .end local v1           #handler:I
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTmpLocation:[I

    aget v6, v6, v10

    int-to-float v6, v6

    add-float v4, v5, v6

    goto :goto_1

    :pswitch_2
    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mWaitForHandleMotionEvent:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->handleMotionDown(FF)V

    :cond_5
    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mWaitForHandleMotionEvent:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mMoving:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDownY:I

    int-to-float v5, v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->MOVING_THRESHOLD:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    :cond_6
    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mMoving:Z

    if-nez v5, :cond_7

    invoke-direct {p0, v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    iput-boolean v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mMoving:Z

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastSetGrabstateTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xfa0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->setGrabbedState(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLastSetGrabstateTime:J

    :cond_8
    invoke-direct {p0, v3, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->movePanel(FF)V

    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTriggered:Z

    if-nez v5, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->hitDownThreshold()Z

    move-result v5

    if-eqz v5, :cond_9

    iput-boolean v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTriggered:Z

    :cond_9
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->hitDownThreshold()Z

    move-result v5

    if-nez v5, :cond_a

    iput-boolean v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTriggered:Z

    :cond_a
    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLongVibrate:Z

    if-nez v5, :cond_b

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->hitVibrateThreshold()Z

    move-result v5

    if-eqz v5, :cond_b

    iput-boolean v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLongVibrate:Z

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v5, v9, v9}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    :cond_b
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->hitVibrateThreshold()Z

    move-result v5

    if-nez v5, :cond_1

    iput-boolean v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mLongVibrate:Z

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-eq v5, v2, :cond_3

    goto/16 :goto_0

    .restart local v1       #handler:I
    :cond_c
    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mRightSlider:Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    if-ne v5, v6, :cond_d

    const/4 v1, 0x2

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x3

    goto/16 :goto_2

    .end local v1           #handler:I
    :cond_e
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->resetSlidingPanel()V

    goto/16 :goto_0

    :cond_f
    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v9}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    :pswitch_4
    iput-boolean v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mSingleClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v7, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTrackingPointerId:I

    iput-boolean v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mWaitForHandleMotionEvent:Z

    iput-boolean v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTriggered:Z

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mCurrentDragView:Landroid/view/View;

    :cond_10
    iput v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mDownY:I

    iget-boolean v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mMoving:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mAnimation:Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;

    invoke-virtual {p0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->resetSlidingPanel()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setBackgroundFor(I)V
    .locals 1
    .parameter "mode"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setBackgroundFor(I)V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setBatteryLevel(I)V

    return-void
.end method

.method public setOnTriggerListener(Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mOnTriggerListener:Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;

    return-void
.end method

.method public setSliderText(ILjava/lang/String;)V
    .locals 1
    .parameter "slider"
    .parameter "text"

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel;->getSlider(I)Lcom/miui/internal/policy/impl/SlidingPanel$Slider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/SlidingPanel$Slider;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTimeView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    const/4 v1, -0x2

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .end local p2
    const/16 v0, 0x11

    invoke-direct {p2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel;->mTimeRegion:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
