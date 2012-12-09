.class Lmiui/util/DensyIndexFile$DataItemDescription;
.super Ljava/lang/Object;
.source "DensyIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensyIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescription"
.end annotation


# static fields
.field static final BYTE:B = 0x0t

.field static final BYTE_ARRAY:B = 0x5t

.field static final INTEGER:B = 0x2t

.field static final INTEGER_ARRAY:B = 0x7t

.field static final LONG:B = 0x3t

.field static final LONG_ARRAY:B = 0x8t

.field static final SHORT:B = 0x1t

.field static final SHORT_ARRAY:B = 0x6t

.field static final STRING:B = 0x4t

.field static sBuffer:[B


# instance fields
.field mIndexSize:B

.field mLengthSize:B

.field mOffset:J

.field mOffsetSize:B

.field mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    return-void
.end method

.method constructor <init>(BBBBJ)V
    .locals 0
    .parameter "type"
    .parameter "indexSize"
    .parameter "lengthSize"
    .parameter "offsetSize"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    iput-byte p2, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mIndexSize:B

    iput-byte p3, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    iput-byte p4, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    iput-wide p5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffset:J

    return-void
.end method

.method static aquireBuffer(I)[B
    .locals 3
    .parameter "size"

    .prologue
    const-class v2, Lmiui/util/DensyIndexFile$DataItemDescription;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    array-length v1, v1

    if-ge v1, p0, :cond_1

    :cond_0
    new-array v1, p0, [B

    sput-object v1, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    :cond_1
    sget-object v0, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    .local v0, bs:[B
    const/4 v1, 0x0

    sput-object v1, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    monitor-exit v2

    return-object v0

    .end local v0           #bs:[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static read(Ljava/io/DataInput;)Lmiui/util/DensyIndexFile$DataItemDescription;
    .locals 7
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .local v1, type:B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .local v2, indexSize:B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .local v3, lengthSize:B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    .local v4, offsetSize:B
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    .local v5, offset:J
    new-instance v0, Lmiui/util/DensyIndexFile$DataItemDescription;

    invoke-direct/range {v0 .. v6}, Lmiui/util/DensyIndexFile$DataItemDescription;-><init>(BBBBJ)V

    return-object v0
.end method

.method static releaseBuffer([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    const-class v1, Lmiui/util/DensyIndexFile$DataItemDescription;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v0, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    array-length v0, v0

    array-length v2, p0

    if-ge v0, v2, :cond_1

    :cond_0
    sput-object p0, Lmiui/util/DensyIndexFile$DataItemDescription;->sBuffer:[B

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method readDataItems(Ljava/io/RandomAccessFile;)[Ljava/lang/Object;
    .locals 4
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, ret:[Ljava/lang/Object;
    iget-byte v1, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_1
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_2
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_3
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lmiui/util/DensyIndexFile$DataItemDescription;->readSingleDataItem(Ljava/io/RandomAccessFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

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

.method readSingleDataItem(Ljava/io/RandomAccessFile;I)Ljava/lang/Object;
    .locals 10
    .parameter "raf"
    .parameter "dataItemIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .local v6, ret:Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, buf:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .local v0, basePos:J
    if-eqz p2, :cond_0

    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    mul-int/2addr v7, p2

    int-to-long v7, v7

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    invoke-static {p1, v7}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    packed-switch v7, :pswitch_data_0

    .end local v6           #ret:Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-static {v2}, Lmiui/util/DensyIndexFile$DataItemDescription;->releaseBuffer([B)V

    return-object v6

    .restart local v6       #ret:Ljava/lang/Object;
    :pswitch_0
    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v5, v7

    .local v5, length:I
    invoke-static {v5}, Lmiui/util/DensyIndexFile$DataItemDescription;->aquireBuffer(I)[B

    move-result-object v2

    invoke-virtual {p1, v2, v9, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    new-instance v6, Ljava/lang/String;

    .end local v6           #ret:Ljava/lang/Object;
    invoke-direct {v6, v2, v9, v5}, Ljava/lang/String;-><init>([BII)V

    .local v6, ret:Ljava/lang/String;
    goto :goto_0

    .end local v5           #length:I
    .local v6, ret:Ljava/lang/Object;
    :pswitch_1
    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v2, v7, [B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    move-object v6, v2

    .local v6, ret:[B
    const/4 v2, 0x0

    goto :goto_0

    .local v6, ret:Ljava/lang/Object;
    :pswitch_2
    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v3, v7, [S

    .local v3, d:[S
    move-object v6, v3

    .local v6, ret:[S
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    aput-short v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #d:[S
    .end local v4           #j:I
    .local v6, ret:Ljava/lang/Object;
    :pswitch_3
    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v3, v7, [I

    .local v3, d:[I
    move-object v6, v3

    .local v6, ret:[I
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    aput v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v3           #d:[I
    .end local v4           #j:I
    .local v6, ret:Ljava/lang/Object;
    :pswitch_4
    iget-byte v7, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensyIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v3, v7, [J

    .local v3, d:[J
    move-object v6, v3

    .local v6, ret:[J
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    aput-wide v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method write(Ljava/io/DataOutput;)I
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-byte v0, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mIndexSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-wide v0, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 v0, 0xc

    return v0
.end method

.method writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 8
    .parameter "o"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, dataItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    .local v4, written:I
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeShort(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_3

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_4

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_4
    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_5
    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, p1, p2}, Lmiui/util/DensyIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, d:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, bs:[B
    if-eqz p1, :cond_6

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensyIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_6

    aget-byte v5, v0, v3

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3           #j:I
    :cond_6
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v0

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #bs:[B
    .end local v1           #d:Ljava/lang/String;
    .end local v2           #i:I
    :pswitch_5
    if-eqz p1, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_7
    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, p1, p2}, Lmiui/util/DensyIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .local v1, d:[B
    if-eqz p1, :cond_8

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensyIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write([B)V

    :cond_8
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1           #d:[B
    .end local v2           #i:I
    :pswitch_6
    if-eqz p1, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_9
    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, p1, p2}, Lmiui/util/DensyIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    move-object v1, v5

    check-cast v1, [S

    .local v1, d:[S
    if-eqz p1, :cond_a

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensyIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    array-length v5, v1

    if-ge v3, v5, :cond_a

    aget-short v5, v1, v3

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v3           #j:I
    :cond_a
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v1           #d:[S
    .end local v2           #i:I
    :pswitch_7
    if-eqz p1, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_b
    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, p1, p2}, Lmiui/util/DensyIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    .local v1, d:[I
    if-eqz p1, :cond_c

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensyIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_7
    array-length v5, v1

    if-ge v3, v5, :cond_c

    aget v5, v1, v3

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .end local v3           #j:I
    :cond_c
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v1           #d:[I
    .end local v2           #i:I
    :pswitch_8
    if-eqz p1, :cond_d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_d
    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, p1, p2}, Lmiui/util/DensyIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    move-object v1, v5

    check-cast v1, [J

    .local v1, d:[J
    if-eqz p1, :cond_e

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensyIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_9
    array-length v5, v1

    if-ge v3, v5, :cond_e

    aget-wide v5, v1, v3

    invoke-interface {p1, v5, v6}, Ljava/io/DataOutput;->writeLong(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .end local v3           #j:I
    :cond_e
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 8
    .parameter "o"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, dataItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    if-eqz v5, :cond_0

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    if-nez v5, :cond_3

    :cond_0
    const/4 v2, 0x0

    .local v2, maxLength:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v3, v5, 0x4

    .local v3, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    const/4 v1, 0x0

    .local v1, length:I
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    packed-switch v5, :pswitch_data_0

    :goto_1
    if-ge v2, v1, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v1, v5

    add-int/2addr v3, v1

    goto :goto_1

    :pswitch_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    array-length v1, v5

    add-int/2addr v3, v1

    goto :goto_1

    :pswitch_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    check-cast v5, [S

    array-length v1, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v3, v5

    goto :goto_1

    :pswitch_3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v1, v5

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v3, v5

    goto :goto_1

    :pswitch_4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    check-cast v5, [J

    array-length v1, v5

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v3, v5

    goto :goto_1

    .end local v1           #length:I
    :cond_2
    invoke-static {v2}, Lmiui/util/DensyIndexFile;->getSizeOf(I)B

    move-result v5

    iput-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    invoke-static {v3}, Lmiui/util/DensyIndexFile;->getSizeOf(I)B

    move-result v5

    iput-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    .end local v0           #i:I
    .end local v2           #maxLength:I
    .end local v3           #offset:I
    :cond_3
    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    mul-int v4, v5, v6

    .local v4, written:I
    if-eqz p1, :cond_4

    move v3, v4

    .restart local v3       #offset:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mOffsetSize:B

    int-to-long v6, v3

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensyIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    iget-byte v5, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mType:B

    packed-switch v5, :pswitch_data_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_5
    iget-byte v6, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_3

    :pswitch_6
    iget-byte v6, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_3

    :pswitch_7
    iget-byte v6, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    check-cast v5, [S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_3

    :pswitch_8
    iget-byte v6, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_3

    :pswitch_9
    iget-byte v6, p0, Lmiui/util/DensyIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    check-cast v5, [J

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_3

    .end local v0           #i:I
    .end local v3           #offset:I
    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
