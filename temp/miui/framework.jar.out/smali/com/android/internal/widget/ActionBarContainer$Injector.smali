.class Lcom/android/internal/widget/ActionBarContainer$Injector;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarContainer;
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

.method static setBounds(Lcom/android/internal/widget/ActionBarContainer;IIII)V
    .locals 2
    .parameter "abc"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getActionBarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getActionBarView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setIsStacked(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getStackedBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method
