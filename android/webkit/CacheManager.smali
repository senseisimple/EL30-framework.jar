.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation


# static fields
.field static CACHE_MAX_SIZE:J = 0x0L

.field private static CACHE_THRESHOLD:J = 0x0L

.field private static CACHE_TRIM_AMOUNT:J = 0x0L

.field static final HEADER_KEY_IFMODIFIEDSINCE:Ljava/lang/String; = "if-modified-since"

.field static final HEADER_KEY_IFNONEMATCH:Ljava/lang/String; = "if-none-match"

.field private static final LOGTAG:Ljava/lang/String; = "cache"

.field private static final MANIFEST_MIME:Ljava/lang/String; = "text/cache-manifest"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final NO_STORE:Ljava/lang/String; = "no-store"

.field private static final TRIM_CACHE_INTERVAL:I = 0x5

.field private static mBaseDir:Ljava/io/File;

.field private static mClearCacheOnInit:Z

.field private static mDataBase:Landroid/webkit/WebViewDatabase;

.field private static mDisabled:Z

.field private static mRefCount:I

.field private static mTrimCacheCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 60
    const-wide/32 v0, 0x600000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    .line 61
    const-wide/32 v0, 0x200000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    .line 64
    sget-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    .line 75
    sput v4, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 82
    sput-boolean v4, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static appendAsHex(ILjava/lang/StringBuffer;)V
    .registers 4
    .parameter "i"
    .parameter "ret"

    .prologue
    .line 676
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 700
    :goto_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    return-void

    .line 679
    :pswitch_f
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 682
    :pswitch_15
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 685
    :pswitch_1b
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 688
    :pswitch_21
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 691
    :pswitch_27
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 694
    :pswitch_2d
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 697
    :pswitch_33
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 677
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
    .end packed-switch
.end method

.method public static cacheDisabled()Z
    .registers 1

    .prologue
    .line 244
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    return v0
.end method

.method static cacheEmpty()Z
    .registers 1

    .prologue
    .line 553
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasCache()Z

    move-result v0

    return v0
.end method

.method private static checkCacheRedirect(I)Z
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 595
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_c

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_c

    const/16 v0, 0x133

    if-ne p0, v0, :cond_e

    .line 597
    :cond_c
    const/4 v0, 0x1

    .line 599
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z
    .registers 3
    .parameter "cacheRet"

    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_c

    .line 505
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_b
    return v1

    .line 502
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 503
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method static clearCache()V
    .registers 1

    .prologue
    .line 591
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCache()V

    .line 592
    return-void
.end method

.method private static createCacheDirectory()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 192
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 193
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 194
    const-string v0, "cache"

    const-string v1, "Unable to create webviewCache directory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 210
    :goto_1a
    return v0

    .line 197
    :cond_1b
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 206
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 208
    const/4 v0, 0x1

    goto :goto_1a

    :cond_31
    move v0, v3

    .line 210
    goto :goto_1a
.end method

.method static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;
    .registers 14
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "postIdentifier"
    .parameter "forceCache"

    .prologue
    const/4 v6, 0x0

    .line 405
    if-nez p6, :cond_9

    sget-boolean v4, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v4, :cond_9

    move-object v4, v6

    .line 454
    :goto_8
    return-object v4

    .line 409
    :cond_9
    invoke-static {p0, p4, p5}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, databaseKey:Ljava/lang/String;
    const/16 v4, 0x12f

    if-ne p1, v4, :cond_18

    .line 414
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v6

    .line 415
    goto :goto_8

    .line 420
    :cond_18
    invoke-static {p1}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {p2}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 422
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v6

    .line 423
    goto :goto_8

    .line 426
    :cond_2f
    invoke-static {p1, p2, p3}, Landroid/webkit/CacheManager;->parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 427
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    if-nez v3, :cond_3c

    .line 430
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    :goto_3a
    move-object v4, v3

    .line 454
    goto :goto_8

    .line 432
    :cond_3c
    invoke-static {v0, v3}, Landroid/webkit/CacheManager;->setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    .line 434
    :try_start_3f
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_48} :catch_4b

    .line 451
    :goto_48
    iput-object p3, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    goto :goto_3a

    .line 435
    :catch_4b
    move-exception v4

    move-object v1, v4

    .line 438
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 440
    :try_start_53
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_5c} :catch_5d

    goto :goto_48

    .line 441
    :catch_5d
    move-exception v4

    move-object v2, v4

    .local v2, e2:Ljava/io/FileNotFoundException;
    move-object v4, v6

    .line 444
    goto :goto_8

    .end local v2           #e2:Ljava/io/FileNotFoundException;
    :cond_61
    move-object v4, v6

    .line 448
    goto :goto_8
.end method

.method public static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;Z)Landroid/webkit/CacheManager$CacheResult;
    .registers 12
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "forceCache"

    .prologue
    .line 398
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method static disableTransaction()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 260
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-nez v0, :cond_f

    .line 261
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move v0, v1

    .line 264
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static enableTransaction()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 250
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-ne v0, v1, :cond_10

    .line 251
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move v0, v1

    .line 254
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static endCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method static endTransaction()Z
    .registers 3

    .prologue
    .line 276
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move-result v0

    .line 277
    .local v0, ret:Z
    sget v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_15

    .line 278
    const/4 v1, 0x0

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 279
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    .line 281
    :cond_15
    return v0
.end method

.method static getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 13
    .parameter "url"
    .parameter "postIdentifier"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 328
    sget-boolean v4, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v4, :cond_9

    move-object v4, v8

    .line 381
    :goto_8
    return-object v4

    .line 332
    :cond_9
    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, databaseKey:Ljava/lang/String;
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    .line 335
    .local v2, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v2, :cond_5f

    .line 336
    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2a

    .line 337
    iget v4, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v4}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 339
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v8

    .line 340
    goto :goto_8

    .line 343
    :cond_2a
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v3, src:Ljava/io/File;
    :try_start_33
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3a} :catch_56

    .line 362
    .end local v3           #src:Ljava/io/File;
    :cond_3a
    if-eqz p3, :cond_77

    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_77

    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_77

    .line 364
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v4, :cond_61

    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v4, :cond_61

    move-object v4, v8

    .line 365
    goto :goto_8

    .line 348
    .restart local v3       #src:Ljava/io/File;
    :catch_56
    move-exception v4

    move-object v1, v4

    .line 351
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v8

    .line 352
    goto :goto_8

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #src:Ljava/io/File;
    :cond_5f
    move-object v4, v8

    .line 356
    goto :goto_8

    .line 369
    :cond_61
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v4, :cond_6c

    .line 370
    const-string v4, "if-none-match"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_6c
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v4, :cond_77

    .line 373
    const-string v4, "if-modified-since"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    move-object v4, v2

    .line 381
    goto :goto_8
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .registers 1

    .prologue
    .line 220
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .parameter "url"
    .parameter "postIdentifier"

    .prologue
    .line 604
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    move-object v0, p0

    .line 605
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "webviewCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    .line 180
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    if-eqz v0, :cond_28

    .line 181
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    .line 184
    :cond_28
    return-void
.end method

.method private static parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 14
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v0

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 p0, 0x0

    .line 858
    .end local p0
    .end local p1
    .end local p2
    :goto_b
    return-object p0

    .line 715
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_c
    const-string/jumbo v0, "text/cache-manifest"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    goto :goto_b

    .line 718
    :cond_17
    new-instance v2, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v2}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 719
    .local v2, ret:Landroid/webkit/CacheManager$CacheResult;
    iput p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 721
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object p0

    .line 722
    .local p0, location:Ljava/lang/String;
    if-eqz p0, :cond_26

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 724
    :cond_26
    const-wide/16 v0, -0x1

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 725
    invoke-virtual {p1}, Landroid/net/http/Headers;->getExpires()Ljava/lang/String;

    move-result-object p0

    .end local p0           #location:Ljava/lang/String;
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 726
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    if-eqz p0, :cond_3c

    .line 728
    :try_start_34
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3c} :catch_8a

    .line 741
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object p0

    .line 742
    .local p0, contentDisposition:Ljava/lang/String;
    if-eqz p0, :cond_44

    .line 743
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 746
    :cond_44
    invoke-virtual {p1}, Landroid/net/http/Headers;->getXPermittedCrossDomainPolicies()Ljava/lang/String;

    move-result-object p0

    .line 747
    .local p0, crossDomain:Ljava/lang/String;
    if-eqz p0, :cond_4c

    .line 748
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 753
    :cond_4c
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLastModified()Ljava/lang/String;

    move-result-object p0

    .line 754
    .local p0, lastModified:Ljava/lang/String;
    if-eqz p0, :cond_5a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5a

    .line 755
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 758
    :cond_5a
    invoke-virtual {p1}, Landroid/net/http/Headers;->getEtag()Ljava/lang/String;

    move-result-object p0

    .line 759
    .local p0, etag:Ljava/lang/String;
    if-eqz p0, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_68

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 761
    :cond_68
    invoke-virtual {p1}, Landroid/net/http/Headers;->getCacheControl()Ljava/lang/String;

    move-result-object p0

    .line 762
    .local p0, cacheControl:Ljava/lang/String;
    if-eqz p0, :cond_148

    .line 763
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .end local p0           #cacheControl:Ljava/lang/String;
    const-string v0, "[ ,;]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 764
    .local p0, controls:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_7a
    array-length v0, p0

    if-ge v1, v0, :cond_148

    .line 765
    const-string/jumbo v0, "no-store"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 766
    const/4 p0, 0x0

    goto :goto_b

    .line 729
    .end local v1           #i:I
    .end local p0           #controls:[Ljava/lang/String;
    :catch_8a
    move-exception p0

    .line 731
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "-1"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    iget-object v0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9f

    const-string p0, "0"

    iget-object v0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 734
    :cond_9f
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_3c

    .line 736
    :cond_a4
    const-string p0, "cache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal expires: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 772
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    :cond_c0
    const-string/jumbo v0, "no-cache"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 773
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 764
    :cond_cf
    :goto_cf
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_7a

    .line 774
    :cond_d3
    aget-object v0, p0, v1

    const-string v3, "max-age"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 775
    aget-object v0, p0, v1

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 776
    .local v0, separator:I
    if-gez v0, :cond_1e5

    .line 777
    aget-object v0, p0, v1

    .end local v0           #separator:I
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0       #separator:I
    move v6, v0

    .line 779
    .end local v0           #separator:I
    .local v6, separator:I
    :goto_f0
    if-lez v6, :cond_cf

    .line 780
    aget-object v0, p0, v1

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 782
    .local v3, s:Ljava/lang/String;
    :try_start_fa
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 783
    .local v4, sec:J
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-ltz v0, :cond_cf

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    add-long/2addr v4, v7

    iput-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_10e
    .catch Ljava/lang/NumberFormatException; {:try_start_fa .. :try_end_10e} :catch_10f

    goto :goto_cf

    .line 787
    .end local v4           #sec:J
    :catch_10f
    move-exception v0

    .line 788
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v0, "1d"

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .end local v3           #s:Ljava/lang/String;
    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_cf

    .line 792
    .restart local v3       #s:Ljava/lang/String;
    :cond_123
    const-string v0, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #s:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in parseHeaders for max-age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_cf

    .line 806
    .end local v1           #i:I
    .end local v6           #separator:I
    .end local p0           #controls:[Ljava/lang/String;
    :cond_148
    const-string/jumbo p0, "no-cache"

    invoke-virtual {p1}, Landroid/net/http/Headers;->getPragma()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_159

    .line 807
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 812
    :cond_159
    iget-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_16e

    .line 813
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12d

    if-ne p0, p1, :cond_171

    .line 816
    const-wide p0, 0x7fffffffffffffffL

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .end local p2
    :cond_16e
    :goto_16e
    move-object p0, v2

    .line 858
    goto/16 :goto_b

    .line 817
    .restart local p2
    :cond_171
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12e

    if-eq p0, p1, :cond_17d

    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x133

    if-ne p0, p1, :cond_182

    .line 819
    :cond_17d
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16e

    .line 820
    :cond_182
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez p0, :cond_19f

    .line 827
    const-string/jumbo p0, "text/html"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19a

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16e

    .line 832
    :cond_19a
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16e

    .line 841
    :cond_19f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long p1, p0, v0

    .line 843
    .end local p2
    .local p1, lastmod:J
    :try_start_1a8
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J
    :try_end_1ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a8 .. :try_end_1ad} :catch_1c5

    move-result-wide p0

    .end local p1           #lastmod:J
    .local p0, lastmod:J
    move-wide v0, p0

    .line 847
    .end local p0           #lastmod:J
    .local v0, lastmod:J
    :goto_1af
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 848
    .local p0, difference:J
    const-wide/16 v3, 0x0

    cmp-long p2, p0, v3

    if-lez p2, :cond_1e2

    .line 849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v0           #lastmod:J
    const-wide/16 v3, 0x5

    div-long/2addr p0, v3

    .end local p0           #difference:J
    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16e

    .line 844
    .restart local p1       #lastmod:J
    :catch_1c5
    move-exception p0

    .line 845
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "cache"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal lastModified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .end local p1           #lastmod:J
    .restart local v0       #lastmod:J
    goto :goto_1af

    .line 853
    .local p0, difference:J
    :cond_1e2
    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16e

    .local v0, separator:I
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    .local p1, headers:Landroid/net/http/Headers;
    .restart local p2
    :cond_1e5
    move v6, v0

    .end local v0           #separator:I
    .restart local v6       #separator:I
    goto/16 :goto_f0
.end method

.method static removeAllCacheFiles()Z
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 516
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    if-nez v1, :cond_9

    .line 519
    sput-boolean v3, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    move v1, v3

    .line 546
    :goto_8
    return v1

    .line 523
    :cond_9
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 526
    new-instance v0, Landroid/webkit/CacheManager$1;

    invoke-direct {v0}, Landroid/webkit/CacheManager$1;-><init>()V

    .line 545
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v1, v3

    .line 546
    goto :goto_8
.end method

.method static removeUrlFromCache(Ljava/lang/String;)V
    .registers 4
    .parameter "Url"

    .prologue
    .line 288
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, databaseKey:Ljava/lang/String;
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .registers 11
    .parameter "url"
    .parameter "postIdentifier"
    .parameter "cacheRet"

    .prologue
    const-wide/16 v5, 0x0

    .line 468
    :try_start_2
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_10

    .line 473
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    .line 497
    :cond_f
    :goto_f
    return-void

    .line 469
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 470
    .local v0, e:Ljava/io/IOException;
    goto :goto_f

    .line 478
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    iget v2, p3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v2}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v1

    .line 479
    .local v1, redirect:Z
    if-eqz v1, :cond_21

    .line 481
    iput-wide v5, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 482
    const-string v2, ""

    iput-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 484
    :cond_21
    if-nez v1, :cond_29

    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_4f

    :cond_29
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 486
    const-string v2, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delete failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_4f
    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_f

    .line 492
    sget-object v2, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/webkit/WebViewDatabase;->addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_f
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 4
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    .line 462
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    .line 463
    return-void
.end method

.method static setCacheDisabled(Z)V
    .registers 2
    .parameter "disabled"

    .prologue
    .line 229
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-ne p0, v0, :cond_5

    .line 236
    :cond_4
    :goto_4
    return-void

    .line 232
    :cond_5
    sput-boolean p0, Landroid/webkit/CacheManager;->mDisabled:Z

    .line 233
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v0, :cond_4

    .line 234
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    goto :goto_4
.end method

.method private static setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 13
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    const/16 v10, 0x8

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 619
    .local v2, hashCode:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 620
    .local v5, ret:Ljava/lang/StringBuffer;
    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 621
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    .local v1, file:Ljava/io/File;
    const/4 v0, 0x1

    .line 631
    .local v0, checkOldPath:Z
    :goto_1a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 632
    if-eqz v0, :cond_4c

    .line 633
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6, p0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 634
    .local v3, oldResult:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v3, :cond_4b

    iget-wide v6, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4b

    .line 635
    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 636
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 651
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_3c
    :goto_3c
    iput-object v4, p1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 652
    iput-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    .line 673
    return-void

    .line 638
    .restart local v3       #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_41
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 639
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 641
    .restart local v1       #file:Ljava/io/File;
    goto :goto_3c

    .line 643
    :cond_4b
    const/4 v0, 0x0

    .line 645
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_4c
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #ret:Ljava/lang/StringBuffer;
    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 646
    .restart local v5       #ret:Ljava/lang/StringBuffer;
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 647
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 648
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_1a
.end method

.method public static startCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method static startTransaction()Z
    .registers 1

    .prologue
    .line 270
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move-result v0

    return v0
.end method

.method static trimCacheIfNeeded()V
    .registers 12

    .prologue
    const-string v11, "cache"

    const-string v10, " delete failed."

    .line 557
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getCacheTotalSize()J

    move-result-wide v6

    sget-wide v8, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_59

    .line 558
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    sget-wide v7, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebViewDatabase;->trimCache(J)Ljava/util/List;

    move-result-object v3

    .line 559
    .local v3, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 560
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v4, :cond_51

    .line 561
    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 562
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 563
    const-string v6, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delete failed."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 567
    .end local v0           #f:Ljava/io/File;
    :cond_51
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getAllCacheFileNames()Ljava/util/List;

    move-result-object v1

    .line 568
    .local v1, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_5a

    .line 587
    .end local v1           #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #size:I
    :cond_59
    return-void

    .line 569
    .restart local v1       #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #size:I
    :cond_5a
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    new-instance v7, Landroid/webkit/CacheManager$2;

    invoke-direct {v7, v1}, Landroid/webkit/CacheManager$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, toDelete:[Ljava/lang/String;
    if-eqz v5, :cond_59

    .line 579
    array-length v4, v5

    .line 580
    const/4 v2, 0x0

    :goto_69
    if-ge v2, v4, :cond_59

    .line 581
    new-instance v0, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 582
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_96

    .line 583
    const-string v6, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delete failed."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_69
.end method
