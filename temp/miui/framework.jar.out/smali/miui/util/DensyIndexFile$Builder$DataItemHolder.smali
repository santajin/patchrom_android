.class Lmiui/util/DensyIndexFile$Builder$DataItemHolder;
.super Ljava/lang/Object;
.source "DensyIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensyIndexFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataItemHolder"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/util/DensyIndexFile$Builder;


# direct methods
.method private constructor <init>(Lmiui/util/DensyIndexFile$Builder;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->this$0:Lmiui/util/DensyIndexFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DensyIndexFile$Builder;Lmiui/util/DensyIndexFile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;-><init>(Lmiui/util/DensyIndexFile$Builder;)V

    return-void
.end method


# virtual methods
.method getAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method put(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .parameter "obj"

    .prologue
    iget-object v1, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    iget-object v1, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method size()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/util/DensyIndexFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
