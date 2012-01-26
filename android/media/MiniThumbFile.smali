.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final EXTERNAL_SD_PATH:Ljava/lang/String; = null

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field public static final RESETBOTH:I = 0x3

.field public static final RESETEXTERNALSD:I = 0x2

.field public static final RESETINTERNALSD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field public static mIsFromExternalSD:Z

.field private static sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mCr:Landroid/content/ContentResolver;

.field private mMicroThumbId:I

.field private mMiniThumbFile:[Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MiniThumbFile;->EXTERNAL_SD_PATH:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/RandomAccessFile;

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    .line 234
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 235
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 236
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .registers 6
    .parameter "uri"

    .prologue
    .line 115
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, type:Ljava/lang/String;
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 118
    .local v0, file:Landroid/media/MiniThumbFile;
    if-nez v0, :cond_3f

    .line 119
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0           #file:Landroid/media/MiniThumbFile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 121
    .restart local v0       #file:Landroid/media/MiniThumbFile;
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_41

    .line 124
    :cond_3f
    monitor-exit v2

    return-object v0

    .line 115
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #type:Ljava/lang/String;
    :catchall_41
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    .registers 11
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Landroid/media/MiniThumbFile;->isExternalSD(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    sput-boolean v5, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    .line 199
    sget-boolean v5, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    if-eqz v5, :cond_71

    const/4 v5, 0x1

    move v3, v5

    .line 201
    .local v3, idx:I
    :goto_c
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    if-nez v5, :cond_5c

    .line 202
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 203
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 205
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 207
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create .thumbnails directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_4b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, f:Ljava/io/File;
    :try_start_50
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "rw"

    invoke-direct {v6, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v6, v5, v3
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5c} :catch_74

    .line 225
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_5c
    :goto_5c
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    if-eqz v5, :cond_6c

    .line 226
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 229
    :cond_6c
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    return-object v5

    .line 199
    .end local v3           #idx:I
    :cond_71
    const/4 v5, 0x0

    move v3, v5

    goto :goto_c

    .line 214
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #idx:I
    .restart local v4       #path:Ljava/lang/String;
    :catch_74
    move-exception v5

    move-object v1, v5

    .line 218
    .local v1, ex:Ljava/io/IOException;
    :try_start_76
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v6, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v6, v5, v3
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_82} :catch_83

    goto :goto_5c

    .line 219
    :catch_83
    move-exception v5

    goto :goto_5c
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .registers 5
    .parameter "version"

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    if-eqz v2, :cond_41

    sget-object v2, Landroid/media/MiniThumbFile;->EXTERNAL_SD_PATH:Ljava/lang/String;

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    .end local v0           #directoryName:Ljava/lang/String;
    :cond_41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b
.end method

.method private removeOldFile()V
    .registers 4

    .prologue
    .line 148
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, oldPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, oldFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 152
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    .line 157
    :cond_13
    :goto_13
    return-void

    .line 153
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    .line 91
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    :try_start_3
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 92
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 91
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v3

    monitor-exit v2

    throw v3

    .line 94
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 95
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized reset(I)V
    .registers 6
    .parameter "where"

    .prologue
    .line 103
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    and-int/lit8 v3, p0, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 104
    :try_start_8
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_27

    .line 110
    :cond_b
    monitor-exit v2

    return-void

    .line 106
    :cond_d
    :try_start_d
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 107
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0, p0}, Landroid/media/MiniThumbFile;->deactivate(I)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_27

    goto :goto_17

    .line 103
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public declared-synchronized clearMiniThumbFromFile(J)V
    .registers 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MiniThumbFile;->clearMiniThumbFromFile(JLandroid/content/ContentResolver;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 449
    monitor-exit p0

    return-void

    .line 448
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearMiniThumbFromFile(JLandroid/content/ContentResolver;)V
    .registers 14
    .parameter "id"
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x2710

    const-string v0, "couldn\'t clear mini thumbnail data for "

    const-string v0, "MiniThumbFile"

    .line 454
    monitor-enter p0

    if-eqz p3, :cond_17

    .line 455
    :try_start_9
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 460
    .local v9, uri:Landroid/net/Uri;
    :goto_f
    invoke-direct {p0, v9, p3}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_a6

    move-result-object v8

    .line 461
    .local v8, r:Ljava/io/RandomAccessFile;
    if-nez v8, :cond_1a

    .line 498
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 457
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_17
    :try_start_17
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_f

    .line 463
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :cond_1a
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    if-lez v0, :cond_21

    .line 464
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_a6

    int-to-long p1, v0

    .line 467
    :cond_21
    mul-long v1, p1, v3

    .line 468
    .local v1, pos:J
    const/4 v7, 0x0

    .line 470
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_24
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clear micro thumbnail - image Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 473
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 474
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 475
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 476
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 479
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 480
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 481
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_76
    .catchall {:try_start_24 .. :try_end_76} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_76} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_76} :catch_a9

    .line 492
    if-eqz v7, :cond_15

    :try_start_78
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_15

    .line 494
    :catch_7c
    move-exception v0

    goto :goto_15

    .line 482
    :catch_7e
    move-exception v0

    move-object v6, v0

    .line 483
    .local v6, ex:Ljava/io/IOException;
    :try_start_80
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t clear mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    throw v6
    :try_end_9f
    .catchall {:try_start_80 .. :try_end_9f} :catchall_9f

    .line 491
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_9f
    move-exception v0

    .line 492
    if-eqz v7, :cond_a5

    :try_start_a2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_db

    .line 496
    :cond_a5
    :goto_a5
    :try_start_a5
    throw v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    .line 454
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_a6
    move-exception v0

    monitor-exit p0

    throw v0

    .line 486
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_a9
    move-exception v0

    move-object v6, v0

    .line 488
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_ab
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t clear mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_ab .. :try_end_d1} :catchall_9f

    .line 492
    if-eqz v7, :cond_15

    :try_start_d3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d8

    goto/16 :goto_15

    .line 494
    :catch_d8
    move-exception v0

    goto/16 :goto_15

    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catch_db
    move-exception v3

    goto :goto_a5
.end method

.method public declared-synchronized deactivate()V
    .registers 4

    .prologue
    .line 253
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 254
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v1, v1, v0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1e

    if-eqz v1, :cond_19

    .line 256
    :try_start_d
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 257
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_21

    .line 253
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    :cond_1c
    monitor-exit p0

    return-void

    .line 253
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 258
    :catch_21
    move-exception v1

    goto :goto_19
.end method

.method public declared-synchronized deactivate(I)V
    .registers 5
    .parameter "where"

    .prologue
    const/4 v2, 0x1

    .line 272
    monitor-enter p0

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 273
    :try_start_7
    invoke-virtual {p0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_45

    .line 293
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 274
    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_28

    .line 275
    :try_start_10
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_45

    if-eqz v0, :cond_a

    .line 277
    :try_start_17
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 278
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_45
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_25} :catch_26

    goto :goto_a

    .line 279
    :catch_26
    move-exception v0

    goto :goto_a

    .line 283
    :cond_28
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 284
    :try_start_2d
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_45

    if-eqz v0, :cond_a

    .line 286
    :try_start_34
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 287
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_45
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_42} :catch_43

    goto :goto_a

    .line 288
    :catch_43
    move-exception v0

    goto :goto_a

    .line 272
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMagic(J)J
    .registers 5
    .parameter "id"

    .prologue
    .line 319
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMagic(JLandroid/content/ContentResolver;)J
    .registers 16
    .parameter "id"
    .parameter "cr"

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    const-string v0, "MiniThumbFile"

    .line 329
    monitor-enter p0

    if-eqz p3, :cond_5a

    .line 330
    :try_start_8
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 335
    .local v9, uri:Landroid/net/Uri;
    :goto_e
    invoke-direct {p0, v9, p3}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 336
    .local v8, r:Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_62

    .line 338
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    if-lez v0, :cond_1b

    .line 339
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_ad

    int-to-long p1, v0

    .line 345
    :cond_1b
    const-wide/16 v3, 0x2710

    mul-long v1, p1, v3

    .line 346
    .local v1, pos:J
    const/4 v7, 0x0

    .line 348
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_20
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 349
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 351
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 354
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v11, :cond_5d

    .line 355
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v10, :cond_5d

    .line 357
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_52} :catch_65
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_52} :catch_76

    move-result-wide v3

    .line 368
    if-eqz v7, :cond_58

    :try_start_55
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_b0

    .line 375
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_58
    :goto_58
    monitor-exit p0

    return-wide v3

    .line 332
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_5a
    :try_start_5a
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_ad

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_e

    .line 368
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :cond_5d
    if-eqz v7, :cond_62

    :try_start_5f
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_b2

    .line 375
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_62
    :goto_62
    const-wide/16 v3, 0x0

    goto :goto_58

    .line 360
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_65
    move-exception v0

    move-object v6, v0

    .line 361
    .local v6, ex:Ljava/io/IOException;
    :try_start_67
    const-string v0, "MiniThumbFile"

    const-string v3, "Got exception checking file magic: "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_a6

    .line 368
    if-eqz v7, :cond_62

    :try_start_70
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_62

    .line 370
    :catch_74
    move-exception v0

    goto :goto_62

    .line 362
    .end local v6           #ex:Ljava/io/IOException;
    :catch_76
    move-exception v0

    move-object v6, v0

    .line 364
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_78
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when reading magic, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_78 .. :try_end_9e} :catchall_a6

    .line 368
    if-eqz v7, :cond_62

    :try_start_a0
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_62

    .line 370
    :catch_a4
    move-exception v0

    goto :goto_62

    .line 367
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catchall_a6
    move-exception v0

    .line 368
    if-eqz v7, :cond_ac

    :try_start_a9
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b4

    .line 372
    :cond_ac
    :goto_ac
    :try_start_ac
    throw v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    .line 329
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_ad
    move-exception v0

    monitor-exit p0

    throw v0

    .line 370
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_b0
    move-exception v0

    goto :goto_58

    :catch_b2
    move-exception v0

    goto :goto_62

    :catch_b4
    move-exception v3

    goto :goto_ac
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .registers 5
    .parameter "id"
    .parameter "data"

    .prologue
    .line 518
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B
    .registers 24
    .parameter "id"
    .parameter "data"
    .parameter "cr"

    .prologue
    .line 523
    monitor-enter p0

    if-eqz p4, :cond_1e

    .line 524
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 529
    .local v18, uri:Landroid/net/Uri;
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_11c

    move-result-object v16

    .line 530
    .local v16, r:Ljava/io/RandomAccessFile;
    if-nez v16, :cond_25

    const/4 v4, 0x0

    .line 568
    :goto_1c
    monitor-exit p0

    return-object v4

    .line 526
    .end local v16           #r:Ljava/io/RandomAccessFile;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_1e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .restart local v18       #uri:Landroid/net/Uri;
    goto :goto_f

    .line 531
    .restart local v16       #r:Ljava/io/RandomAccessFile;
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    move v4, v0

    if-lez v4, :cond_35

    .line 532
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    move v4, v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_11c

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 p1, v0

    .line 537
    :cond_35
    const-wide/16 v7, 0x2710

    mul-long v5, p1, v7

    .line 538
    .local v5, pos:J
    const/4 v13, 0x0

    .line 540
    .local v13, lock:Ljava/nio/channels/FileLock;
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object v4, v0

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v7, v0

    invoke-virtual {v4, v7, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v17

    .line 543
    .local v17, size:I
    const/16 v4, 0xd

    move/from16 v0, v17

    move v1, v4

    if-le v0, v1, :cond_ab

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 545
    .end local v5           #pos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 546
    .local v11, flag:B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 547
    .local v14, magic:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 549
    .local v12, length:I
    add-int/lit8 v4, v12, 0xd

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_ab

    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    if-lt v4, v12, :cond_ab

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p3

    move v2, v5

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_a2
    .catchall {:try_start_3a .. :try_end_a2} :catchall_115
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_a2} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_a2} :catch_e2

    .line 562
    if-eqz v13, :cond_a7

    :try_start_a4
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_11f

    :cond_a7
    :goto_a7
    move-object/from16 v4, p3

    .line 566
    goto/16 :goto_1c

    .line 562
    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    :cond_ab
    if-eqz v13, :cond_b0

    :try_start_ad
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_121

    .line 568
    .end local v17           #size:I
    :cond_b0
    :goto_b0
    const/4 v4, 0x0

    goto/16 :goto_1c

    .line 554
    :catch_b3
    move-exception v4

    move-object v10, v4

    .line 555
    .local v10, ex:Ljava/io/IOException;
    :try_start_b5
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception when reading thumbnail id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_b5 .. :try_end_da} :catchall_115

    .line 562
    if-eqz v13, :cond_b0

    :try_start_dc
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_b0

    .line 564
    :catch_e0
    move-exception v4

    goto :goto_b0

    .line 556
    .end local v10           #ex:Ljava/io/IOException;
    :catch_e2
    move-exception v4

    move-object v10, v4

    .line 558
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_e4
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading thumbnail, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_e4 .. :try_end_10d} :catchall_115

    .line 562
    if-eqz v13, :cond_b0

    :try_start_10f
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_113

    goto :goto_b0

    .line 564
    :catch_113
    move-exception v4

    goto :goto_b0

    .line 561
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :catchall_115
    move-exception v4

    .line 562
    if-eqz v13, :cond_11b

    :try_start_118
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_123

    .line 566
    :cond_11b
    :goto_11b
    :try_start_11b
    throw v4
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11c

    .line 523
    .end local v13           #lock:Ljava/nio/channels/FileLock;
    .end local v16           #r:Ljava/io/RandomAccessFile;
    .end local v18           #uri:Landroid/net/Uri;
    :catchall_11c
    move-exception v4

    monitor-exit p0

    throw v4

    .line 564
    .restart local v11       #flag:B
    .restart local v12       #length:I
    .restart local v13       #lock:Ljava/nio/channels/FileLock;
    .restart local v14       #magic:J
    .restart local v16       #r:Ljava/io/RandomAccessFile;
    .restart local v17       #size:I
    .restart local v18       #uri:Landroid/net/Uri;
    :catch_11f
    move-exception v4

    goto :goto_a7

    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    :catch_121
    move-exception v4

    goto :goto_b0

    .end local v17           #size:I
    :catch_123
    move-exception v5

    goto :goto_11b
.end method

.method public isExternalSD(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .registers 15
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 578
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    .line 580
    iput-object p2, p0, Landroid/media/MiniThumbFile;->mCr:Landroid/content/ContentResolver;

    .line 581
    if-eqz p1, :cond_b2

    .line 582
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 583
    .local v11, volume:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 584
    .local v10, type:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 585
    .local v8, origId:J
    long-to-int v0, v8

    iput v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    .line 586
    const-string v0, "external"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, "images"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_98

    .line 587
    const/4 v6, 0x0

    .line 589
    .local v6, c:Landroid/database/Cursor;
    :try_start_3e
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "micro_thumb_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 591
    if-nez v6, :cond_6b

    .line 592
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z
    :try_end_64
    .catchall {:try_start_3e .. :try_end_64} :catchall_ab
    .catch Landroid/database/SQLException; {:try_start_3e .. :try_end_64} :catch_9a

    .line 593
    const/4 v0, 0x1

    .line 608
    if-eqz v6, :cond_6a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 613
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #origId:J
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #volume:Ljava/lang/String;
    :cond_6a
    :goto_6a
    return v0

    .line 596
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #origId:J
    .restart local v10       #type:Ljava/lang/String;
    .restart local v11       #volume:Ljava/lang/String;
    :cond_6b
    :try_start_6b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 599
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    .line 600
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/media/MiniThumbFile;->EXTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 601
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z
    :try_end_8c
    .catchall {:try_start_6b .. :try_end_8c} :catchall_ab
    .catch Landroid/database/SQLException; {:try_start_6b .. :try_end_8c} :catch_9a

    .line 602
    const/4 v0, 0x1

    .line 608
    if-eqz v6, :cond_6a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    :cond_93
    if-eqz v6, :cond_98

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 611
    .end local v6           #c:Landroid/database/Cursor;
    :cond_98
    :goto_98
    const/4 v0, 0x0

    goto :goto_6a

    .line 605
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_9a
    move-exception v0

    move-object v7, v0

    .line 606
    .local v7, e:Landroid/database/SQLException;
    :try_start_9c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_ab

    .line 608
    if-eqz v6, :cond_98

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_98

    .end local v7           #e:Landroid/database/SQLException;
    :catchall_ab
    move-exception v0

    if-eqz v6, :cond_b1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b1
    throw v0

    .line 613
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #origId:J
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #volume:Ljava/lang/String;
    :cond_b2
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .registers 13
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    :try_start_6
    invoke-virtual/range {v0 .. v6}, Landroid/media/MiniThumbFile;->saveMiniThumbToFile([BJJLandroid/content/ContentResolver;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    .line 389
    monitor-exit p0

    return-void

    .line 388
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJLandroid/content/ContentResolver;)V
    .registers 20
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    monitor-enter p0

    if-eqz p6, :cond_17

    .line 395
    :try_start_3
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    move-object v0, v3

    move-wide v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 399
    .local v12, uri:Landroid/net/Uri;
    :goto_b
    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_98

    move-result-object v11

    .line 400
    .local v11, r:Ljava/io/RandomAccessFile;
    if-nez v11, :cond_1a

    .line 442
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 397
    .end local v11           #r:Ljava/io/RandomAccessFile;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_17
    :try_start_17
    iget-object v12, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .restart local v12       #uri:Landroid/net/Uri;
    goto :goto_b

    .line 402
    .restart local v11       #r:Ljava/io/RandomAccessFile;
    :cond_1a
    iget v3, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    if-lez v3, :cond_21

    .line 403
    iget v3, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_98

    int-to-long p2, v3

    .line 408
    :cond_21
    const-wide/16 v6, 0x2710

    mul-long v4, p2, v6

    .line 409
    .local v4, pos:J
    const/4 v10, 0x0

    .line 411
    .local v10, lock:Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_66

    .line 412
    :try_start_28
    array-length v3, p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_91
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_29} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_29} :catch_9b

    const/16 v6, 0x2703

    if-le v3, v6, :cond_33

    .line 436
    if-eqz v10, :cond_15

    :try_start_2f
    throw v10
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_98
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_31

    goto :goto_15

    .line 438
    :catch_31
    move-exception v3

    goto :goto_15

    .line 416
    :cond_33
    :try_start_33
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 417
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 418
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 419
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v6, p1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 420
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 423
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v10

    .line 424
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v6, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_66
    .catchall {:try_start_33 .. :try_end_66} :catchall_91
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_66} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_66} :catch_9b

    .line 436
    :cond_66
    if-eqz v10, :cond_15

    :try_start_68
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_98
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_15

    .line 438
    :catch_6c
    move-exception v3

    goto :goto_15

    .line 426
    :catch_6e
    move-exception v3

    move-object v9, v3

    .line 427
    .local v9, ex:Ljava/io/IOException;
    :try_start_70
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #pos:J
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    throw v9
    :try_end_91
    .catchall {:try_start_70 .. :try_end_91} :catchall_91

    .line 435
    .end local v9           #ex:Ljava/io/IOException;
    :catchall_91
    move-exception v3

    .line 436
    if-eqz v10, :cond_97

    :try_start_94
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_cf

    .line 440
    :cond_97
    :goto_97
    :try_start_97
    throw v3
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    .line 394
    .end local v10           #lock:Ljava/nio/channels/FileLock;
    .end local v11           #r:Ljava/io/RandomAccessFile;
    .end local v12           #uri:Landroid/net/Uri;
    :catchall_98
    move-exception v3

    monitor-exit p0

    throw v3

    .line 430
    .restart local v4       #pos:J
    .restart local v10       #lock:Ljava/nio/channels/FileLock;
    .restart local v11       #r:Ljava/io/RandomAccessFile;
    .restart local v12       #uri:Landroid/net/Uri;
    :catch_9b
    move-exception v3

    move-object v9, v3

    .line 432
    .local v9, ex:Ljava/lang/RuntimeException;
    :try_start_9d
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #pos:J
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; disk full or mount read-only? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_9d .. :try_end_c5} :catchall_91

    .line 436
    if-eqz v10, :cond_15

    :try_start_c7
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_98
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cc

    goto/16 :goto_15

    .line 438
    :catch_cc
    move-exception v3

    goto/16 :goto_15

    .end local v9           #ex:Ljava/lang/RuntimeException;
    :catch_cf
    move-exception v4

    goto :goto_97
.end method
