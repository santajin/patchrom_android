.class Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$900(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$900(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1200(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method
