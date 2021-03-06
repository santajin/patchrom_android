.class public Landroid/widget/MagnifierController;
.super Ljava/lang/Object;
.source "MagnifierController.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MiuiMagnifierController"


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mLongClickX:I

.field private mLongClickY:I

.field private mOffset:I

.field private mShowing:Z

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Editor;)V
    .locals 2
    .parameter "context"
    .parameter "editor"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MagnifierController;->mOffset:I

    const-string v0, "MiuiMagnifierController"

    const-string v1, "MagnifierController is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Landroid/widget/MagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MagnifierController;->mShowing:Z

    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MagnifierController;->mShowing:Z

    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    return-void
.end method

.method public static isMagnifierEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/provider/ExtraSettings$Secure;->showMagnifierWhenInput(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private showMagnifier()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/MagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopBlink()V

    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SHOW_MAGNIFIER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updatePosition(Z)V
    .locals 4
    .parameter "isFirst"

    .prologue
    iget-object v1, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/MagnifierController;->mLongClickX:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/MagnifierController;->mLongClickY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, offset:I
    iget v1, p0, Landroid/widget/MagnifierController;->mOffset:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/MagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->setTextSelection(I)V

    iput v0, p0, Landroid/widget/MagnifierController;->mOffset:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/MagnifierController;->showMagnifier()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/MagnifierController;->mShowing:Z

    return v0
.end method

.method public onParentChanged()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/MagnifierController;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/MagnifierController;->showMagnifier()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MagnifierController;->mLongClickX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MagnifierController;->mLongClickY:I

    invoke-virtual {p0}, Landroid/widget/MagnifierController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Landroid/widget/MagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/MiuiCursorController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/MiuiCursorController;->onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z

    :cond_0
    return v0

    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/MagnifierController;->updatePosition(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/MagnifierController;->hide()V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/MagnifierController;->mShowing:Z

    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/MagnifierController;->updatePosition(Z)V

    invoke-direct {p0}, Landroid/widget/MagnifierController;->showMagnifier()V

    return-void
.end method
