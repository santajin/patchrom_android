.class Landroid/widget/AbsListView$Injector;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
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

.method static isOutOfTouchRange(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "alv"
    .parameter "ev"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
