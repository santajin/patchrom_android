.class Lmiui/util/DensyIndexFile$FileHeader;
.super Ljava/lang/Object;
.source "DensyIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensyIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileHeader"
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final FILE_TAG:[B


# instance fields
.field public mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/DensyIndexFile$FileHeader;->FILE_TAG:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "dataCount"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lmiui/util/DensyIndexFile$DescriptionPair;

    iput-object v0, p0, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    return-void
.end method

.method public static read(Ljava/io/DataInput;)Lmiui/util/DensyIndexFile$FileHeader;
    .locals 8
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v6, Lmiui/util/DensyIndexFile$FileHeader;->FILE_TAG:[B

    array-length v6, v6

    new-array v1, v6, [B

    .local v1, fileTag:[B
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v6

    aput-byte v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v6, Lmiui/util/DensyIndexFile$FileHeader;->FILE_TAG:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/IOException;

    const-string v7, "File tag unmatched, file may be corrupt"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .local v5, version:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    new-instance v6, Ljava/io/IOException;

    const-string v7, "File version unmatched, please upgrade your reader"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .local v0, count:I
    new-instance v2, Lmiui/util/DensyIndexFile$FileHeader;

    invoke-direct {v2, v0}, Lmiui/util/DensyIndexFile$FileHeader;-><init>(I)V

    .local v2, header:Lmiui/util/DensyIndexFile$FileHeader;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    if-ge v4, v0, :cond_3

    iget-object v6, v2, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    invoke-static {p0}, Lmiui/util/DensyIndexFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiui/util/DensyIndexFile$DescriptionPair;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method


# virtual methods
.method public write(Ljava/io/DataOutput;)I
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v2, Lmiui/util/DensyIndexFile$FileHeader;->FILE_TAG:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v2, 0x4

    .local v1, written:I
    if-eqz p1, :cond_0

    sget-object v2, Lmiui/util/DensyIndexFile$FileHeader;->FILE_TAG:[B

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v2, p0, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    array-length v2, v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v2, p0, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lmiui/util/DensyIndexFile$DescriptionPair;->write(Ljava/io/DataOutput;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
