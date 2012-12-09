.class public Lmiui/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# static fields
.field static sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lmiui/util/UiUtils$1;

    invoke-direct {v0}, Lmiui/util/UiUtils$1;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    const/4 v0, 0x1

    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    .local v1, typedValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .local v0, ret:Z
    :goto_0
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v1}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    return v0

    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "attrId"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "attrId"

    .prologue
    invoke-static {p0, p1}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v0

    .local v0, id:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resolveAttribute(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "attrId"

    .prologue
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    .local v1, typedValue:Landroid/util/TypedValue;
    const/4 v0, -0x1

    .local v0, ret:I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v1}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    return v0
.end method
