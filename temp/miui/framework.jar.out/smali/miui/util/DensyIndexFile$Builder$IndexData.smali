.class Lmiui/util/DensyIndexFile$Builder$IndexData;
.super Ljava/lang/Object;
.source "DensyIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensyIndexFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

.field mDataItemHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DensyIndexFile$Builder$DataItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/util/DensyIndexFile$Builder$Item;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultValue:Lmiui/util/DensyIndexFile$Builder$Item;

.field mIndexDataGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DensyIndexFile$Builder$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "dataItemCount"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    new-array v0, p1, [Lmiui/util/DensyIndexFile$DataItemDescription;

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    return-void
.end method
