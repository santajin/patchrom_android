.class public Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;
.super Lmiui/app/screenelement/elements/ImageScreenElement;
.source "SpectrumVisualizerScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SpectrumVisualizer"


# instance fields
.field private mAlphaWidthNum:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDotbar:Ljava/lang/String;

.field private mPanel:Landroid/graphics/Bitmap;

.field private mPanelSrc:Ljava/lang/String;

.field private mResDensity:I

.field private mShadow:Ljava/lang/String;

.field private mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 3
    .parameter "ele"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    const-string v0, "panelSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    const-string v0, "dotbarSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    const-string v0, "shadowSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    new-instance v0, Lmiui/widget/SpectrumVisualizer;

    iget-object v1, p2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Lmiui/widget/SpectrumVisualizer;->setSoftDrawEnabled(Z)V

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    const-string v0, "alphaWidthNum"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->getTop()F

    move-result v2

    iget-object v3, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/ImageScreenElement;->doRender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableUpdate(Z)V
    .locals 1
    .parameter "b"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, p1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    iget-object v1, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->init()V

    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v5

    :goto_0
    iput-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v5

    .local v0, dotbar:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v5

    .local v2, shadow:Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->getWidth()F

    move-result v4

    float-to-int v3, v4

    .local v3, width:I
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->getHeight()F

    move-result v4

    float-to-int v1, v4

    .local v1, height:I
    if-lez v3, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :cond_1
    if-nez v0, :cond_6

    const-string v4, "SpectrumVisualizerScreenElement"

    const-string v5, "no dotbar"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .end local v0           #dotbar:Landroid/graphics/Bitmap;
    .end local v1           #height:I
    .end local v2           #shadow:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    :cond_2
    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .restart local v0       #dotbar:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .restart local v1       #height:I
    .restart local v2       #shadow:Landroid/graphics/Bitmap;
    .restart local v3       #width:I
    :cond_5
    const-string v4, "SpectrumVisualizerScreenElement"

    const-string v5, "no panel or size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v4, v3, v1, v0, v2}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    if-ltz v4, :cond_7

    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    iget v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    invoke-virtual {v4, v5}, Lmiui/widget/SpectrumVisualizer;->setAlphaNum(I)V

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    iput v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v4, v7, v7, v3, v1}, Lmiui/widget/SpectrumVisualizer;->layout(IIII)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_3
.end method
