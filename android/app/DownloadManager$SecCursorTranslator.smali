.class Landroid/app/DownloadManager$SecCursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecCursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1514
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/app/DownloadManager$SecCursorTranslator;->$assertionsDisabled:Z

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
    .line 1518
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1519
    iput-object p2, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1520
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1727
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_12

    .line 1730
    :cond_10
    int-to-long v0, p1

    .line 1749
    :goto_11
    return-wide v0

    .line 1733
    :cond_12
    sparse-switch p1, :sswitch_data_24

    .line 1749
    int-to-long v0, p1

    goto :goto_11

    .line 1736
    :sswitch_17
    const-wide/16 v0, 0x3ee

    goto :goto_11

    .line 1739
    :sswitch_1a
    const-wide/16 v0, 0x3ef

    goto :goto_11

    .line 1742
    :sswitch_1d
    const-wide/16 v0, 0x3f0

    goto :goto_11

    .line 1745
    :sswitch_20
    const-wide/16 v0, 0x3f1

    goto :goto_11

    .line 1733
    nop

    :sswitch_data_24
    .sparse-switch
        0x1e8 -> :sswitch_20
        0x1e9 -> :sswitch_1d
        0x1f2 -> :sswitch_17
        0x1f3 -> :sswitch_1a
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1636
    const-string v5, "destination"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1637
    .local v0, destinationType:J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-nez v5, :cond_13

    .line 1639
    const-string v5, "hint"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1653
    :goto_12
    return-object v5

    .line 1642
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_31

    .line 1644
    const-string v5, "_data"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1645
    .local v4, localPath:Ljava/lang/String;
    if-nez v4, :cond_23

    .line 1646
    const/4 v5, 0x0

    goto :goto_12

    .line 1648
    :cond_23
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    .line 1652
    .end local v4           #localPath:Ljava/lang/String;
    :cond_31
    const-string v5, "_id"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1653
    .local v2, downloadId:J
    iget-object v5, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_12
.end method

.method private getPausedReason(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1711
    packed-switch p1, :pswitch_data_10

    .line 1722
    const-wide/16 v0, 0x4

    :goto_5
    return-wide v0

    .line 1713
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 1716
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 1719
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 1711
    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getUnderlyingLong(Ljava/lang/String;)J
    .registers 4
    .parameter "column"

    .prologue
    .line 1754
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
    .line 1758
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
    .line 1569
    invoke-static {}, Landroid/app/DownloadManager;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private translateLong(Ljava/lang/String;)J
    .registers 8
    .parameter "column"

    .prologue
    const-string v5, "downloadmethod"

    const-string v4, "dd_contentSize"

    const-string v3, "_id"

    const-string/jumbo v2, "status"

    const-string/jumbo v1, "state"

    .line 1657
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1659
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1694
    :goto_1e
    return-wide v0

    .line 1662
    :cond_1f
    const-string v0, "_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1663
    const-string v0, "_id"

    invoke-direct {p0, v3}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1e

    .line 1665
    :cond_2e
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1666
    const-string/jumbo v0, "total_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1e

    .line 1668
    :cond_3f
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1669
    const-string/jumbo v0, "status"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1e

    .line 1673
    :cond_56
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1674
    const-string/jumbo v0, "status"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getReason(I)J

    move-result-wide v0

    goto :goto_1e

    .line 1676
    :cond_6c
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1677
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1e

    .line 1680
    :cond_7b
    const-string v0, "dd_contentSize"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1681
    const-string v0, "dd_contentSize"

    invoke-direct {p0, v4}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1e

    .line 1683
    :cond_8a
    const-string v0, "downloadmethod"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1684
    const-string v0, "downloadmethod"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1e

    .line 1686
    :cond_99
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1687
    const-string/jumbo v0, "state"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_1e

    .line 1689
    :cond_ab
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1690
    const-string/jumbo v0, "state"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_1e

    .line 1693
    :cond_bd
    sget-boolean v0, Landroid/app/DownloadManager$SecCursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_cf

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1694
    :cond_cf
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_1e
.end method

.method private translateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "column"

    .prologue
    const-string v5, "dd_vendor"

    const-string v4, "dd_primaryMimeType"

    const-string v3, "dd_majorVersion"

    const-string v2, "dd_fileName"

    const-string v1, "dd_description"

    .line 1598
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1599
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1632
    :goto_18
    return-object v0

    .line 1601
    :cond_19
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1602
    const-string/jumbo v0, "title"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1604
    :cond_2a
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1605
    const-string v0, "description"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1607
    :cond_39
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1608
    const-string/jumbo v0, "uri"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1610
    :cond_4a
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1611
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1616
    :cond_59
    const-string v0, "dd_fileName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1617
    const-string v0, "dd_fileName"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1619
    :cond_68
    const-string v0, "dd_vendor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1620
    const-string v0, "dd_vendor"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1622
    :cond_77
    const-string v0, "dd_majorVersion"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1623
    const-string v0, "dd_majorVersion"

    invoke-direct {p0, v3}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1625
    :cond_86
    const-string v0, "dd_primaryMimeType"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1626
    const-string v0, "dd_primaryMimeType"

    invoke-direct {p0, v4}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1628
    :cond_95
    const-string v0, "dd_description"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1629
    const-string v0, "dd_description"

    invoke-direct {p0, v1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 1631
    :cond_a5
    sget-boolean v0, Landroid/app/DownloadManager$SecCursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_b7

    const-string v0, "local_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1632
    :cond_b7
    invoke-direct {p0}, Landroid/app/DownloadManager$SecCursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18
.end method


# virtual methods
.method public getBlob(I)[B
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 1560
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 1555
    invoke-static {}, Landroid/app/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"

    .prologue
    .line 1524
    invoke-static {}, Landroid/app/DownloadManager;->access$200()[Ljava/lang/String;

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
    .line 1529
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1530
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 1531
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

    .line 1533
    :cond_20
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 1538
    invoke-static {}, Landroid/app/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    .line 1539
    .local v0, numColumns:I
    if-ltz p1, :cond_9

    if-lt p1, v0, :cond_32

    .line 1540
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

    .line 1543
    :cond_32
    invoke-static {}, Landroid/app/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1548
    invoke-static {}, Landroid/app/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1549
    .local v0, returnColumns:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1550
    return-object v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1565
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1574
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1579
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1584
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReason(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1698
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1706
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    .line 1700
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_9

    .line 1703
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_9

    .line 1698
    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method public getShort(I)S
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1589
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 1594
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateStatus(I)I
    .registers 6
    .parameter "status"

    .prologue
    const/4 v2, 0x2

    const-string v3, "DownloadManager"

    .line 1763
    const-string v0, "DownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before translateStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    packed-switch p1, :pswitch_data_36

    .line 1802
    :pswitch_1e
    const/16 v0, 0x10

    :goto_20
    return v0

    .line 1767
    :pswitch_21
    const/4 v0, 0x1

    goto :goto_20

    .line 1771
    :pswitch_23
    const-string v0, "DownloadManager"

    const-string v0, "download still running"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1772
    goto :goto_20

    .line 1778
    :pswitch_2c
    const/4 v0, 0x4

    goto :goto_20

    .line 1783
    :pswitch_2e
    const/16 v0, 0x8

    goto :goto_20

    .line 1787
    :pswitch_31
    const/16 v0, 0x40

    goto :goto_20

    :pswitch_34
    move v0, v2

    .line 1797
    goto :goto_20

    .line 1765
    :pswitch_data_36
    .packed-switch 0xb5
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_1e
        :pswitch_34
        :pswitch_1e
        :pswitch_21
        :pswitch_1e
        :pswitch_23
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_2e
        :pswitch_34
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method
