.class Lcom/android/internal/view/menu/ActionMenuView$Injector;
.super Ljava/lang/Object;
.source "ActionMenuView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuView;
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

.method static layout(Landroid/view/View;IIII)V
    .locals 6
    .parameter "v"
    .parameter "left"
    .parameter "t"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .local v3, width:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, height:I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    iget v4, v4, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_0

    sub-int v4, p3, v3

    add-int v5, p2, v0

    invoke-virtual {p0, v4, p2, p3, v5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    iget v4, v4, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_1

    add-int v4, p1, v3

    add-int v5, p2, v0

    invoke-virtual {p0, p1, p2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    sub-int v4, p3, p1

    div-int/lit8 v2, v4, 0x2

    .local v2, midHorizontal:I
    div-int/lit8 v4, v3, 0x2

    sub-int v1, v2, v4

    .local v1, l:I
    add-int v4, v1, v3

    add-int v5, p2, v0

    invoke-virtual {p0, v1, p2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method
