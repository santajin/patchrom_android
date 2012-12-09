.class Lmiui/app/screenelement/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/SoundManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/SoundManager;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/SoundManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x4

    const/16 v3, 0x64

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    #setter for: Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v1}, Lmiui/app/screenelement/SoundManager;->access$002(Lmiui/app/screenelement/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    iget-object v0, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    #getter for: Lmiui/app/screenelement/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lmiui/app/screenelement/SoundManager;->access$000(Lmiui/app/screenelement/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    #getter for: Lmiui/app/screenelement/SoundManager;->mPendingSound:Ljava/lang/String;
    invoke-static {v0}, Lmiui/app/screenelement/SoundManager;->access$100(Lmiui/app/screenelement/SoundManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    iget-object v1, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    #getter for: Lmiui/app/screenelement/SoundManager;->mPendingSound:Ljava/lang/String;
    invoke-static {v1}, Lmiui/app/screenelement/SoundManager;->access$100(Lmiui/app/screenelement/SoundManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lmiui/app/screenelement/SoundManager;->playSound(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmiui/app/screenelement/SoundManager$1;->this$0:Lmiui/app/screenelement/SoundManager;

    const/4 v1, 0x0

    #setter for: Lmiui/app/screenelement/SoundManager;->mPendingSound:Ljava/lang/String;
    invoke-static {v0, v1}, Lmiui/app/screenelement/SoundManager;->access$102(Lmiui/app/screenelement/SoundManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
