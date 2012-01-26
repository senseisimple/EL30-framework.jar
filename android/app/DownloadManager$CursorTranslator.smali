.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1244
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1249
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1250
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1437
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-ge p1, v0, :cond_12

    .line 1440
    :cond_10
    int-to-long v0, p1

    .line 1470
    :goto_11
    return-wide v0

    .line 1443
    :cond_12
    packed-switch p1, :pswitch_data_30

    .line 1470
    :pswitch_15
    const-wide/16 v0, 0x3e8

    goto :goto_11

    .line 1445
    :pswitch_18
    const-wide/16 v0, 0x3e9

    goto :goto_11

    .line 1449
    :pswitch_1b
    const-wide/16 v0, 0x3ea

    goto :goto_11

    .line 1452
    :pswitch_1e
    const-wide/16 v0, 0x3ec

    goto :goto_11

    .line 1455
    :pswitch_21
    const-wide/16 v0, 0x3ed

    goto :goto_11

    .line 1458
    :pswitch_24
    const-wide/16 v0, 0x3ee

    goto :goto_11

    .line 1461
    :pswitch_27
    const-wide/16 v0, 0x3ef

    goto :goto_11

    .line 1464
    :pswitch_2a
    const-wide/16 v0, 0x3f0

    goto :goto_11

    .line 1467
    :pswitch_2d
    const-wide/16 v0, 0x3f1

    goto :goto_11

    .line 1443
    :pswitch_data_30
    .packed-switch 0x1e8
        :pswitch_2d
        :pswitch_2a
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1b
        :pswitch_1e
        :pswitch_15
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1365
    const-string v1, "_data"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, localPath:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1367
    const/4 v1, 0x0

    .line 1369
    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method private getPausedReason(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1421
    packed-switch p1, :pswitch_data_10

    .line 1432
    const-wide/16 v0, 0x4

    :goto_5
    return-wide v0

    .line 1423
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 1426
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 1429
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 1421
    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getReason(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1408
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1416
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    .line 1410
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_9

    .line 1413
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_9

    .line 1408
    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private getUnderlyingLong(Ljava/lang/String;)J
    .registers 4
    .parameter "column"

    .prologue
    .line 1475
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 1479
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLongColumn(Ljava/lang/String;)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 1299
    invoke-static {}, Landroid/app/DownloadManager;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private translateLong(Ljava/lang/String;)J
    .registers 5
    .parameter "column"

    .prologue
    const-string v2, "_id"

    const-string/jumbo v1, "status"

    .line 1383
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1385
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1404
    :goto_17
    return-wide v0

    .line 1388
    :cond_18
    const-string v0, "_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1389
    const-string v0, "_id"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17

    .line 1391
    :cond_27
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1392
    const-string/jumbo v0, "total_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17

    .line 1394
    :cond_38
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1395
    const-string/jumbo v0, "status"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_17

    .line 1397
    :cond_4f
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1398
    const-string/jumbo v0, "status"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    goto :goto_17

    .line 1400
    :cond_65
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1401
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17

    .line 1403
    :cond_74
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_86

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1404
    :cond_86
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_17
.end method

.method private translateStatus(I)I
    .registers 3
    .parameter "status"

    .prologue
    .line 1483
    packed-switch p1, :pswitch_data_20

    .line 1500
    :pswitch_3
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    invoke-static {p1}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1485
    :pswitch_13
    const/4 v0, 0x1

    .line 1501
    :goto_14
    return v0

    .line 1488
    :pswitch_15
    const/4 v0, 0x2

    goto :goto_14

    .line 1494
    :pswitch_17
    const/4 v0, 0x4

    goto :goto_14

    .line 1497
    :pswitch_19
    const/16 v0, 0x8

    goto :goto_14

    .line 1501
    :cond_1c
    const/16 v0, 0x10

    goto :goto_14

    .line 1483
    nop

    :pswitch_data_20
    .packed-switch 0xbe
        :pswitch_13
        :pswitch_3
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_19
    .end packed-switch
.end method

.method private translateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "column"

    .prologue
    const-string/jumbo v4, "uri"

    const-string/jumbo v3, "title"

    const-string v2, "mediaprovider_uri"

    const-string v1, "description"

    .line 1328
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1329
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1348
    :goto_18
    return-object v0

    .line 1331
    :cond_19
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1332
    const-string/jumbo v0, "title"

    invoke-direct {p0, v3}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1334
    :cond_2a
    const-string v0, "description"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1335
    const-string v0, "description"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1337
    :cond_39
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1338
    const-string/jumbo v0, "uri"

    invoke-direct {p0, v4}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1340
    :cond_4a
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1341
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1343
    :cond_59
    const-string v0, "mediaprovider_uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1344
    const-string v0, "mediaprovider_uri"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1347
    :cond_68
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_7a

    const-string v0, "local_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1348
    :cond_7a
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method


# virtual methods
.method public getBlob(I)[B
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 1290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 1285
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"

    .prologue
    .line 1254
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 6
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1260
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 1261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1263
    :cond_20
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 1268
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    .line 1269
    .local v0, numColumns:I
    if-ltz p1, :cond_9

    if-lt p1, v0, :cond_32

    .line 1270
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " columns exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1273
    :cond_32
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1278
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1279
    .local v0, returnColumns:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1280
    return-object v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1295
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1304
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1309
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1314
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 1324
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
