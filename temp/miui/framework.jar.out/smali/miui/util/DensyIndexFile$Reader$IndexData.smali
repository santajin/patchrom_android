.class Lmiui/util/DensyIndexFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "DensyIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensyIndexFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field public mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

.field public mDataItems:[[Ljava/lang/Object;

.field public mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;

.field public mSizeOfItems:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DensyIndexFile$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/util/DensyIndexFile$Reader$IndexData;-><init>()V

    return-void
.end method
