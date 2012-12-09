.class public Lmiui/util/DensyIndexFile$Reader;
.super Ljava/lang/Object;
.source "DensyIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensyIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DensyIndexFile$Reader$IndexData;
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;

.field private mHeader:Lmiui/util/DensyIndexFile$FileHeader;

.field private mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .local v5, time:J
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v7, p1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-static {v7}, Lmiui/util/DensyIndexFile$FileHeader;->read(Ljava/io/DataInput;)Lmiui/util/DensyIndexFile$FileHeader;

    move-result-object v7

    iput-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mHeader:Lmiui/util/DensyIndexFile$FileHeader;

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mHeader:Lmiui/util/DensyIndexFile$FileHeader;

    iget-object v7, v7, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    array-length v7, v7

    new-array v7, v7, [Lmiui/util/DensyIndexFile$Reader$IndexData;

    iput-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mHeader:Lmiui/util/DensyIndexFile$FileHeader;

    iget-object v7, v7, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    array-length v7, v7

    if-ge v4, v7, :cond_3

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    new-instance v8, Lmiui/util/DensyIndexFile$Reader$IndexData;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lmiui/util/DensyIndexFile$Reader$IndexData;-><init>(Lmiui/util/DensyIndexFile$1;)V

    aput-object v8, v7, v4

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mHeader:Lmiui/util/DensyIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    aget-object v8, v8, v4

    iget-wide v8, v8, Lmiui/util/DensyIndexFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .local v0, IndexGroupDescriptionCount:I
    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    new-array v8, v0, [Lmiui/util/DensyIndexFile$IndexGroupDescription;

    iput-object v8, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;

    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    iget-object v7, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-static {v8}, Lmiui/util/DensyIndexFile$IndexGroupDescription;->read(Ljava/io/DataInput;)Lmiui/util/DensyIndexFile$IndexGroupDescription;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mHeader:Lmiui/util/DensyIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensyIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensyIndexFile$DescriptionPair;

    aget-object v8, v8, v4

    iget-wide v8, v8, Lmiui/util/DensyIndexFile$DescriptionPair;->mDataItemDescriptionOffset:J

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .local v1, dataItemDescriptionCount:I
    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    const/4 v8, 0x0

    iput v8, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mSizeOfItems:I

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    new-array v8, v1, [Lmiui/util/DensyIndexFile$DataItemDescription;

    iput-object v8, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    iget-object v7, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-static {v8}, Lmiui/util/DensyIndexFile$DataItemDescription;->read(Ljava/io/DataInput;)Lmiui/util/DensyIndexFile$DataItemDescription;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    iget v8, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mSizeOfItems:I

    iget-object v9, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v9, v9, v4

    iget-object v9, v9, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v9, v9, v3

    iget-byte v9, v9, Lmiui/util/DensyIndexFile$DataItemDescription;->mIndexSize:B

    add-int/2addr v8, v9

    iput v8, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mSizeOfItems:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    new-array v8, v1, [[Ljava/lang/Object;

    iput-object v8, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_2

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v8, v8, v4

    iget-object v8, v8, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v8, v8, v3

    iget-wide v8, v8, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffset:J

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v7, v7, v4

    iget-object v7, v7, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v8, v8, v4

    iget-object v8, v8, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v8, v8, v3

    iget-object v9, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v9}, Lmiui/util/DensyIndexFile$DataItemDescription;->readDataItems(Ljava/io/RandomAccessFile;)[Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v0           #IndexGroupDescriptionCount:I
    .end local v1           #dataItemDescriptionCount:I
    .end local v3           #i:I
    .end local v4           #k:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lmiui/util/DensyIndexFile$Reader;->close()V

    throw v2

    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #k:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms used to load file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/util/DensyIndexFile;->logo(Ljava/lang/String;)V

    return-void
.end method

.method private offset(II)J
    .locals 10
    .parameter "kind"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .local v1, id:Lmiui/util/DensyIndexFile$IndexGroupDescription;
    const/4 v3, 0x0

    .local v3, min:I
    iget-object v6, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v6, v6, p1

    iget-object v6, v6, Lmiui/util/DensyIndexFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;

    array-length v2, v6

    .local v2, max:I
    :goto_0
    if-ge v3, v2, :cond_2

    add-int v6, v2, v3

    div-int/lit8 v0, v6, 0x2

    .local v0, found:I
    iget-object v6, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v6, v6, p1

    iget-object v6, v6, Lmiui/util/DensyIndexFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;

    aget-object v6, v6, v0

    iget v6, v6, Lmiui/util/DensyIndexFile$IndexGroupDescription;->mMinIndex:I

    if-le v6, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v6, v6, p1

    iget-object v6, v6, Lmiui/util/DensyIndexFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;

    aget-object v6, v6, v0

    iget v6, v6, Lmiui/util/DensyIndexFile$IndexGroupDescription;->mMaxIndex:I

    if-gt v6, p2, :cond_1

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v6, v6, p1

    iget-object v6, v6, Lmiui/util/DensyIndexFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensyIndexFile$IndexGroupDescription;

    aget-object v1, v6, v0

    .end local v0           #found:I
    :cond_2
    const-wide/16 v4, -0x1

    .local v4, offset:J
    if-eqz v1, :cond_3

    iget-wide v6, v1, Lmiui/util/DensyIndexFile$IndexGroupDescription;->mOffset:J

    iget v8, v1, Lmiui/util/DensyIndexFile$IndexGroupDescription;->mMinIndex:I

    sub-int v8, p2, v8

    iget-object v9, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v9, v9, p1

    iget v9, v9, Lmiui/util/DensyIndexFile$Reader$IndexData;->mSizeOfItems:I

    mul-int/2addr v8, v9

    int-to-long v8, v8

    add-long v4, v6, v8

    :cond_3
    return-wide v4
.end method

.method private readSingleDataItem(III)Ljava/lang/Object;
    .locals 5
    .parameter "kind"
    .parameter "dataIndex"
    .parameter "dataItemIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v1, v1, p2

    iget-wide v1, v1, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffset:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    iget-object v1, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v1, v1, p2

    iget-object v2, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2, p3}, Lmiui/util/DensyIndexFile$DataItemDescription;->readSingleDataItem(Ljava/io/RandomAccessFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p3

    :cond_0
    iget-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mHeader:Lmiui/util/DensyIndexFile$FileHeader;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(III)Ljava/lang/Object;
    .locals 11
    .parameter "kind"
    .parameter "index"
    .parameter "dataIndex"

    .prologue
    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    if-nez v9, :cond_0

    const-string v9, "Get data from a corrupt file"

    invoke-static {v9}, Lmiui/util/DensyIndexFile;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v8

    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iget-object v9, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    array-length v9, v9

    if-lt p1, v9, :cond_2

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Kind "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " out of range[0, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/util/DensyIndexFile;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_2
    if-ltz p3, :cond_3

    :try_start_2
    iget-object v9, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v9, v9, p1

    iget-object v9, v9, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    array-length v9, v9

    if-lt p3, v9, :cond_4

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DataIndex "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " out of range[0, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v10, v10, p1

    iget-object v10, v10, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/util/DensyIndexFile;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, time:J
    invoke-direct {p0, p1, p2}, Lmiui/util/DensyIndexFile$Reader;->offset(II)J

    move-result-wide v3

    .local v3, offset:J
    const/4 v5, 0x0

    .local v5, ret:Ljava/lang/Object;
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-gez v8, :cond_5

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v8, v8, p1

    iget-object v8, v8, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    aget-object v8, v8, p3

    const/4 v9, 0x0

    aget-object v5, v8, v9

    move-object v8, v5

    .end local v5           #ret:Ljava/lang/Object;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v6, v9, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms used to get data("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/util/DensyIndexFile;->logo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .restart local v5       #ret:Ljava/lang/Object;
    :cond_5
    :try_start_3
    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    .end local v5           #ret:Ljava/lang/Object;
    .local v2, i:I
    :goto_2
    if-gt v2, p3, :cond_7

    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v8, v8, p1

    iget-object v8, v8, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v8, v8, v2

    iget-byte v8, v8, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    packed-switch v8, :pswitch_data_0

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v10, v10, p1

    iget-object v10, v10, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v10, v10, v2

    iget-byte v10, v10, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v2           #i:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v8, "Seek data from a corrupt file"

    invoke-static {v8}, Lmiui/util/DensyIndexFile;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x0

    .restart local v5       #ret:Ljava/lang/Object;
    move-object v8, v5

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #ret:Ljava/lang/Object;
    .restart local v2       #i:I
    :pswitch_0
    :try_start_5
    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .local v5, ret:Ljava/lang/Short;
    goto :goto_3

    .end local v5           #ret:Ljava/lang/Short;
    :pswitch_2
    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, ret:Ljava/lang/Integer;
    goto :goto_3

    .end local v5           #ret:Ljava/lang/Integer;
    :pswitch_3
    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v5

    .local v5, ret:Ljava/lang/Long;
    goto :goto_3

    .end local v5           #ret:Ljava/lang/Long;
    :pswitch_4
    :try_start_6
    iget-object v8, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v9, v9, p1

    iget-object v9, v9, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v9, v9, v2

    iget-byte v9, v9, Lmiui/util/DensyIndexFile$DataItemDescription;->mIndexSize:B

    invoke-static {v8, v9}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v8

    long-to-int v0, v8

    .local v0, dataItemIndex:I
    if-ne v2, p3, :cond_6

    invoke-direct {p0, p1, p3, v0}, Lmiui/util/DensyIndexFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v5

    .local v5, ret:Ljava/lang/Object;
    goto :goto_3

    .end local v0           #dataItemIndex:I
    .end local v5           #ret:Ljava/lang/Object;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    :try_start_7
    new-instance v8, Ljava/io/IOException;

    const-string v9, "File may be corrupt due to invalid data index size"

    invoke-direct {v8, v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .end local v1           #e:Ljava/io/IOException;
    :cond_7
    move-object v8, v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized get(II)[Ljava/lang/Object;
    .locals 13
    .parameter "kind"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    if-nez v10, :cond_1

    const-string v10, "Get data from a corrupt file"

    invoke-static {v10}, Lmiui/util/DensyIndexFile;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    array-length v10, v10

    if-lt p1, v10, :cond_3

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot get data kind "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/util/DensyIndexFile;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, time:J
    invoke-direct {p0, p1, p2}, Lmiui/util/DensyIndexFile$Reader;->offset(II)J

    move-result-wide v5

    .local v5, offset:J
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v10, v10, p1

    iget-object v10, v10, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    array-length v10, v10

    new-array v7, v10, [Ljava/lang/Object;

    .local v7, ret:[Ljava/lang/Object;
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-gez v10, :cond_4

    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v10, v7

    if-ge v4, v10, :cond_0

    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v10, v10, p1

    iget-object v10, v10, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    aget-object v10, v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aput-object v10, v7, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4           #i:I
    :cond_4
    :try_start_3
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    array-length v10, v7

    if-ge v4, v10, :cond_5

    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v10, v10, p1

    iget-object v10, v10, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v10, v10, v4

    iget-byte v10, v10, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    packed-switch v10, :pswitch_data_0

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v12, v12, p1

    iget-object v12, v12, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v12, v12, v4

    iget-byte v12, v12, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v4           #i:I
    :catch_0
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    :try_start_4
    const-string v10, "Seek data from a corrupt file"

    invoke-static {v10}, Lmiui/util/DensyIndexFile;->loge(Ljava/lang/String;)V

    const/4 v7, 0x0

    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms used to get data("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/util/DensyIndexFile;->logo(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .restart local v4       #i:I
    :pswitch_0
    :try_start_5
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_1
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v7, v4

    goto :goto_3

    :pswitch_2
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    goto :goto_3

    :pswitch_3
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :pswitch_4
    :try_start_6
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lmiui/util/DensyIndexFile$Reader;->mIndexData:[Lmiui/util/DensyIndexFile$Reader$IndexData;

    aget-object v11, v11, p1

    iget-object v11, v11, Lmiui/util/DensyIndexFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DensyIndexFile$DataItemDescription;

    aget-object v11, v11, v4

    iget-byte v11, v11, Lmiui/util/DensyIndexFile$DataItemDescription;->mIndexSize:B

    invoke-static {v10, v11}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v10

    long-to-int v2, v10

    .local v2, dataItemIndex:I
    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .local v0, curPos:J
    invoke-direct {p0, p1, v4, v2}, Lmiui/util/DensyIndexFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v7, v4

    iget-object v10, p0, Lmiui/util/DensyIndexFile$Reader;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .end local v0           #curPos:J
    .end local v2           #dataItemIndex:I
    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    :try_start_7
    new-instance v10, Ljava/io/IOException;

    const-string v11, "File may be corrupt due to invalid data index size"

    invoke-direct {v10, v11, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
