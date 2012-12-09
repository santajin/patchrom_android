.class public Lmiui/app/screenelement/util/ZipResourceLoader;
.super Lmiui/app/screenelement/ResourceLoader;
.source "ZipResourceLoader.java"


# static fields
.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"

.field private static final TAG:Ljava/lang/String; = "MAML_ZipResourceLoader"


# instance fields
.field private mInnerPath:Ljava/lang/String;

.field private mManifestName:Ljava/lang/String;

.field private mResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "zipPath"

    .prologue
    const/4 v0, 0x0

    const-string v1, "manifest.xml"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "zipPath"
    .parameter "innerPath"

    .prologue
    const-string v0, "manifest.xml"

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "zipPath"
    .parameter "innerPath"
    .parameter "manifestName"

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/ResourceLoader;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty zip path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    iput-object p2, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    iput-object p3, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 10
    .parameter "src"
    .parameter "opts"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .local v5, zip:Ljava/util/zip/ZipFile;
    const/4 v3, 0x0

    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    iget-object v8, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .local v6, zip:Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .local v2, entry:Ljava/util/zip/ZipEntry;
    :try_start_1
    iget-object v8, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "images"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    iget-object v8, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "images"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_9

    invoke-virtual {v6, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, padding:Landroid/graphics/Rect;
    invoke-static {v3, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_6

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_4
    :goto_1
    move-object v5, v6

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :cond_5
    :goto_2
    return-object v7

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #padding:Landroid/graphics/Rect;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :cond_6
    :try_start_4
    new-instance v8, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    invoke-direct {v8, v0, v4}, Lmiui/app/screenelement/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_e

    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_8
    :goto_4
    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    move-object v7, v8

    goto :goto_2

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :cond_9
    if-eqz v3, :cond_a

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_a
    :goto_5
    if-eqz v6, :cond_f

    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v8

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v8, "MAML_ZipResourceLoader"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_b

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :cond_b
    :goto_7
    if-eqz v5, :cond_5

    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/lang/OutOfMemoryError;
    :goto_8
    :try_start_c
    const-string v8, "MAML_ZipResourceLoader"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_c

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_c
    :goto_9
    if-eqz v5, :cond_5

    :try_start_e
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_2

    :catch_4
    move-exception v8

    goto :goto_2

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v3, :cond_d

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    :cond_d
    :goto_b
    if-eqz v5, :cond_e

    :try_start_10
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_e
    :goto_c
    throw v7

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #padding:Landroid/graphics/Rect;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v8

    goto :goto_0

    :catch_6
    move-exception v8

    goto :goto_1

    :catch_7
    move-exception v7

    goto :goto_3

    :catch_8
    move-exception v7

    goto :goto_4

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #padding:Landroid/graphics/Rect;
    :catch_9
    move-exception v8

    goto :goto_5

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .local v1, e:Ljava/io/IOException;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v8

    goto :goto_7

    .local v1, e:Ljava/lang/OutOfMemoryError;
    :catch_b
    move-exception v8

    goto :goto_9

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v8

    goto :goto_b

    :catch_d
    move-exception v8

    goto :goto_c

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v1

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_f
    move-exception v1

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_6

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :cond_f
    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 14
    .parameter "src"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .local v9, zip:Ljava/util/zip/ZipFile;
    const/4 v4, 0x0

    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    iget-object v12, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .local v10, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, size:I
    invoke-virtual {v10, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    move-object v5, v11

    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #size:I
    :goto_2
    return-object v5

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #size:I
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    const/high16 v0, 0x1

    .local v0, COUNT:I
    const/high16 v12, 0x1

    :try_start_4
    new-array v1, v12, [B

    .local v1, buff:[B
    new-instance v5, Landroid/os/MemoryFile;

    const/4 v12, 0x0

    invoke-direct {v5, v12, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .local v5, mf:Landroid/os/MemoryFile;
    const/4 v6, -0x1

    .local v6, read:I
    const/4 v8, 0x0

    .local v8, start:I
    :goto_3
    const/4 v12, 0x0

    const/high16 v13, 0x1

    invoke-virtual {v4, v1, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_3

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12, v8, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    add-int/2addr v8, v6

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/os/MemoryFile;->length()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_e

    move-result v12

    if-lez v12, :cond_6

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    :goto_4
    if-eqz v10, :cond_5

    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_5
    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v5           #mf:Landroid/os/MemoryFile;
    .end local v6           #read:I
    .end local v7           #size:I
    .end local v8           #start:I
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_6
    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_7
    :goto_6
    if-eqz v10, :cond_d

    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v9, v10

    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :cond_8
    :goto_7
    move-object v5, v11

    goto :goto_2

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v12

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string v12, "MAML_ZipResourceLoader"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_9

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :cond_9
    :goto_9
    if-eqz v9, :cond_8

    :try_start_b
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_7

    :catch_2
    move-exception v12

    goto :goto_7

    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .local v2, e:Ljava/lang/OutOfMemoryError;
    :goto_a
    :try_start_c
    const-string v12, "MAML_ZipResourceLoader"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v4, :cond_a

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_a
    :goto_b
    if-eqz v9, :cond_8

    :try_start_e
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_7

    :catch_4
    move-exception v12

    goto :goto_7

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v11

    :goto_c
    if-eqz v4, :cond_b

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    :cond_b
    :goto_d
    if-eqz v9, :cond_c

    :try_start_10
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_c
    :goto_e
    throw v11

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #size:I
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v12

    goto/16 :goto_0

    :catch_6
    move-exception v12

    goto :goto_1

    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    .restart local v5       #mf:Landroid/os/MemoryFile;
    .restart local v6       #read:I
    .restart local v8       #start:I
    :catch_7
    move-exception v11

    goto :goto_4

    :catch_8
    move-exception v11

    goto :goto_5

    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v5           #mf:Landroid/os/MemoryFile;
    .end local v6           #read:I
    .end local v7           #size:I
    .end local v8           #start:I
    :catch_9
    move-exception v12

    goto :goto_6

    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/io/IOException;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v12

    goto :goto_9

    .local v2, e:Ljava/lang/OutOfMemoryError;
    :catch_b
    move-exception v12

    goto :goto_b

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v12

    goto :goto_d

    :catch_d
    move-exception v12

    goto :goto_e

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_c

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v2

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_f
    move-exception v2

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_d
    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .local v7, zip:Ljava/util/zip/ZipFile;
    const/4 v5, 0x0

    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    iget-object v10, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .local v8, zip:Ljava/util/zip/ZipFile;
    const/4 v4, 0x0

    .local v4, entry:Ljava/util/zip/ZipEntry;
    :try_start_1
    iget-object v10, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v10, v11}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, manifestName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .end local v6           #manifestName:Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    iget-object v10, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v10, v11}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #manifestName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .end local v6           #manifestName:Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_9

    invoke-virtual {v8, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    move-result-object v5

    if-nez v5, :cond_6

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    :cond_4
    :goto_1
    move-object v7, v8

    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    :cond_5
    :goto_2
    return-object v9

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_6
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17

    move-result-object v9

    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    :cond_7
    :goto_3
    if-eqz v8, :cond_8

    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    :cond_8
    :goto_4
    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_9
    if-eqz v5, :cond_a

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    :cond_a
    :goto_5
    if-eqz v8, :cond_12

    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v10

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v5, :cond_b

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    :cond_b
    :goto_7
    if-eqz v7, :cond_5

    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_8
    :try_start_c
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v5, :cond_c

    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    :cond_c
    :goto_9
    if-eqz v7, :cond_5

    :try_start_e
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_2

    :catch_4
    move-exception v10

    goto :goto_2

    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v3

    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_a
    :try_start_f
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v5, :cond_d

    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    :cond_d
    :goto_b
    if-eqz v7, :cond_5

    :try_start_11
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_2

    :catch_6
    move-exception v10

    goto :goto_2

    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7
    move-exception v3

    .local v3, e:Lorg/xml/sax/SAXException;
    :goto_c
    :try_start_12
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v5, :cond_e

    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13

    :cond_e
    :goto_d
    if-eqz v7, :cond_5

    :try_start_14
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v10

    goto/16 :goto_2

    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_9
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    :goto_e
    :try_start_15
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v5, :cond_f

    :try_start_16
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_14

    :cond_f
    :goto_f
    if-eqz v7, :cond_5

    :try_start_17
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_2

    :catch_a
    move-exception v10

    goto/16 :goto_2

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_10
    if-eqz v5, :cond_10

    :try_start_18
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15

    :cond_10
    :goto_11
    if-eqz v7, :cond_11

    :try_start_19
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_16

    :cond_11
    :goto_12
    throw v9

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v10

    goto/16 :goto_0

    :catch_c
    move-exception v10

    goto/16 :goto_1

    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    :catch_d
    move-exception v10

    goto/16 :goto_3

    :catch_e
    move-exception v10

    goto/16 :goto_4

    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    :catch_f
    move-exception v10

    goto/16 :goto_5

    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v3, e:Ljava/io/IOException;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    :catch_10
    move-exception v10

    goto/16 :goto_7

    .local v3, e:Ljava/lang/OutOfMemoryError;
    :catch_11
    move-exception v10

    goto :goto_9

    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_12
    move-exception v10

    goto :goto_b

    .local v3, e:Lorg/xml/sax/SAXException;
    :catch_13
    move-exception v10

    goto :goto_d

    .local v3, e:Ljava/lang/Exception;
    :catch_14
    move-exception v10

    goto :goto_f

    .end local v3           #e:Ljava/lang/Exception;
    :catch_15
    move-exception v10

    goto :goto_11

    :catch_16
    move-exception v10

    goto :goto_12

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_10

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_17
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_e

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_18
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_c

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_19
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_1a
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_8

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_1b
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_6

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_12
    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method
