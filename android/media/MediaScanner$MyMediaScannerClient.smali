.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private final MEDIA_KIND_AUDIO:I

.field private final MEDIA_KIND_IMAGE:I

.field private final MEDIA_KIND_VIDEO:I

.field private final MEDIA_SCANNER_PROGRESS_UPDATE_TICK:J

.field private isDrmConverted:Z

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mExif_Ori:I

.field private mExif_Time:J

.field private mExif_lat:F

.field private mExif_lng:F

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPrevStatusTick:J

.field private mResolution:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .registers 4
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 840
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_SCANNER_PROGRESS_UPDATE_TICK:J

    .line 841
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    .line 847
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_AUDIO:I

    .line 848
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_IMAGE:I

    .line 849
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->MEDIA_KIND_VIDEO:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 806
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 2094
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 2095
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2096
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int v2, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    move v2, v4

    goto :goto_1c
.end method

.method private endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZZ)Landroid/net/Uri;
    .registers 50
    .parameter "entry"
    .parameter "ringtones"
    .parameter "dcfRingtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .parameter "usePendingBulkInsert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1828
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v23

    .line 1829
    .local v23, isAudio:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v25

    .line 1830
    .local v25, isVideo:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v24

    .line 1831
    .local v24, isImage:Z
    if-eqz v25, :cond_2de

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v35

    .line 1841
    .local v35, tableUri:Landroid/net/Uri;
    :goto_26
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_48

    .line 1845
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1848
    :cond_48
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v40

    .line 1852
    .local v40, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1853
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    move v5, v0

    if-eqz v5, :cond_6c

    .line 1854
    const-string v5, "mini_thumb_magic"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1859
    :cond_6c
    const-string/jumbo v5, "title"

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1860
    .local v38, title:Ljava/lang/String;
    if-eqz v38, :cond_82

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 1861
    :cond_82
    const-string v5, "_data"

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1863
    const/16 v5, 0x2f

    move-object/from16 v0, v38

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    .line 1864
    .local v27, lastSlash:I
    if-ltz v27, :cond_a9

    .line 1865
    add-int/lit8 v27, v27, 0x1

    .line 1866
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v27

    move v1, v5

    if-ge v0, v1, :cond_a9

    .line 1867
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    .line 1871
    :cond_a9
    const/16 v5, 0x2e

    move-object/from16 v0, v38

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    .line 1872
    .local v26, lastDot:I
    if-lez v26, :cond_be

    .line 1873
    const/4 v5, 0x0

    move-object/from16 v0, v38

    move v1, v5

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 1875
    :cond_be
    const-string/jumbo v5, "title"

    move-object/from16 v0, v40

    move-object v1, v5

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    .end local v26           #lastDot:I
    .end local v27           #lastSlash:I
    :cond_c9
    const-string v5, "album"

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1878
    .local v13, album:Ljava/lang/String;
    const-string v5, "<unknown>"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 1879
    const-string v5, "_data"

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1881
    const/16 v5, 0x2f

    invoke-virtual {v13, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    .line 1882
    .restart local v27       #lastSlash:I
    if-ltz v27, :cond_112

    .line 1883
    const/16 v30, 0x0

    .line 1885
    .local v30, previousSlash:I
    :goto_ed
    const/16 v5, 0x2f

    add-int/lit8 v6, v30, 0x1

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v22

    .line 1886
    .local v22, idx:I
    if-ltz v22, :cond_fd

    move/from16 v0, v22

    move/from16 v1, v27

    if-lt v0, v1, :cond_2fa

    .line 1891
    :cond_fd
    if-eqz v30, :cond_112

    .line 1892
    add-int/lit8 v5, v30, 0x1

    move-object v0, v13

    move v1, v5

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1893
    const-string v5, "album"

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    .end local v22           #idx:I
    .end local v27           #lastSlash:I
    .end local v30           #previousSlash:I
    :cond_112
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v32, v0

    .line 1898
    .local v32, rowId:J
    if-eqz v23, :cond_301

    const-wide/16 v7, 0x0

    cmp-long v5, v32, v7

    if-nez v5, :cond_301

    .line 1903
    const-string v5, "is_ringtone"

    if-nez p2, :cond_126

    if-eqz p3, :cond_2fe

    :cond_126
    const/4 v6, 0x1

    :goto_127
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1904
    const-string v5, "is_notification"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1905
    const-string v5, "is_alarm"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1906
    const-string v5, "is_music"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1907
    const-string v5, "is_podcast"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1910
    const/16 v34, 0x0

    .line 1911
    .local v34, sound:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x10

    if-lt v5, v6, :cond_17a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x12

    if-le v5, v6, :cond_192

    :cond_17a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_192

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_192

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_194

    .line 1914
    :cond_192
    const/16 v34, 0x1

    .line 1916
    :cond_194
    const-string v5, "is_sound"

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1980
    .end local v34           #sound:Z
    :cond_1a1
    :goto_1a1
    const/16 v31, 0x0

    .line 1981
    .local v31, result:Landroid/net/Uri;
    const-wide/16 v7, 0x0

    cmp-long v5, v32, v7

    if-nez v5, :cond_40e

    .line 1994
    if-eqz p8, :cond_3ee

    if-nez v23, :cond_1b1

    if-nez v24, :cond_1b1

    if-eqz v25, :cond_3ee

    .line 1995
    :cond_1b1
    if-eqz v23, :cond_3e6

    const/4 v5, 0x1

    :goto_1b4
    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V

    .line 2014
    :cond_1bc
    :goto_1bc
    if-nez p8, :cond_284

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v5

    if-eqz v5, :cond_284

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_284

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2019
    .local v21, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/Uri;

    .line 2020
    .local v39, uri:Landroid/net/Uri;
    if-nez v39, :cond_261

    .line 2021
    const/16 v17, 0x0

    .line 2024
    .local v17, cursor:Landroid/database/Cursor;
    :try_start_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Landroid/media/MediaScanner;->access$800()[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "name=?"

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v21, v11, v5

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2028
    if-eqz v17, :cond_218

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_42d

    .line 2030
    :cond_218
    invoke-virtual/range {v40 .. v40}, Landroid/content/ContentValues;->clear()V

    .line 2031
    const-string/jumbo v5, "name"

    move-object/from16 v0, v40

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v39

    .line 2038
    :goto_240
    if-eqz v39, :cond_25c

    .line 2039
    const-string v5, "members"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v39

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25c
    .catchall {:try_start_1ec .. :try_end_25c} :catchall_447

    .line 2044
    :cond_25c
    if-eqz v17, :cond_261

    .line 2045
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2050
    .end local v17           #cursor:Landroid/database/Cursor;
    :cond_261
    if-eqz v39, :cond_284

    .line 2052
    invoke-virtual/range {v40 .. v40}, Landroid/content/ContentValues;->clear()V

    .line 2053
    const-string v5, "audio_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2064
    .end local v21           #genre:Ljava/lang/String;
    .end local v39           #uri:Landroid/net/Uri;
    :cond_284
    if-eqz p4, :cond_44e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_44e

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2db

    .line 2067
    :cond_2b8
    const-string/jumbo v5, "notification_sound"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2069
    const-string/jumbo v5, "notification_sound_reserve"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$2402(Landroid/media/MediaScanner;Z)Z

    :cond_2db
    :goto_2db
    move-object/from16 v5, v31

    .line 2090
    .end local v13           #album:Ljava/lang/String;
    .end local v31           #result:Landroid/net/Uri;
    .end local v32           #rowId:J
    .end local v35           #tableUri:Landroid/net/Uri;
    .end local v38           #title:Ljava/lang/String;
    .end local v40           #values:Landroid/content/ContentValues;
    :goto_2dd
    return-object v5

    .line 1833
    :cond_2de
    if-eqz v24, :cond_2eb

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v35

    .restart local v35       #tableUri:Landroid/net/Uri;
    goto/16 :goto_26

    .line 1835
    .end local v35           #tableUri:Landroid/net/Uri;
    :cond_2eb
    if-eqz v23, :cond_2f8

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v35

    .restart local v35       #tableUri:Landroid/net/Uri;
    goto/16 :goto_26

    .line 1839
    .end local v35           #tableUri:Landroid/net/Uri;
    :cond_2f8
    const/4 v5, 0x0

    goto :goto_2dd

    .line 1889
    .restart local v13       #album:Ljava/lang/String;
    .restart local v22       #idx:I
    .restart local v27       #lastSlash:I
    .restart local v30       #previousSlash:I
    .restart local v35       #tableUri:Landroid/net/Uri;
    .restart local v38       #title:Ljava/lang/String;
    .restart local v40       #values:Landroid/content/ContentValues;
    :cond_2fa
    move/from16 v30, v22

    .line 1890
    goto/16 :goto_ed

    .line 1903
    .end local v22           #idx:I
    .end local v27           #lastSlash:I
    .end local v30           #previousSlash:I
    .restart local v32       #rowId:J
    :cond_2fe
    const/4 v6, 0x0

    goto/16 :goto_127

    .line 1919
    :cond_301
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_1a1

    .line 1920
    const/16 v19, 0x0

    .line 1922
    .local v19, exif:Landroid/media/ExifInterface;
    :try_start_30c
    new-instance v20, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_319
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_319} :catch_4fe

    .end local v19           #exif:Landroid/media/ExifInterface;
    .local v20, exif:Landroid/media/ExifInterface;
    move-object/from16 v19, v20

    .line 1926
    .end local v20           #exif:Landroid/media/ExifInterface;
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :goto_31b
    if-eqz v19, :cond_1a1

    .line 1927
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 1928
    .local v28, latlng:[F
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v5

    if-eqz v5, :cond_34d

    .line 1929
    const-string v5, "latitude"

    const/4 v6, 0x0

    aget v6, v28, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1930
    const-string v5, "longitude"

    const/4 v6, 0x1

    aget v6, v28, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1933
    :cond_34d
    invoke-virtual/range {v19 .. v19}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v36

    .line 1934
    .local v36, time:J
    const-wide/16 v7, -0x1

    cmp-long v5, v36, v7

    if-eqz v5, :cond_364

    .line 1935
    const-string v5, "datetaken"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1939
    :cond_364
    const-wide/16 v7, 0x0

    cmp-long v5, v32, v7

    if-eqz v5, :cond_3b0

    .line 1940
    const/4 v14, 0x0

    .line 1942
    .local v14, c:Landroid/database/Cursor;
    :try_start_36b
    move-object/from16 v0, v35

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1943
    .local v6, uriWithId:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "datetaken"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1944
    if-eqz v14, :cond_3ab

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3ab

    .line 1945
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1946
    .local v15, cameraTakenTime:J
    const-wide/16 v7, 0x0

    cmp-long v5, v15, v7

    if-eqz v5, :cond_3ab

    .line 1947
    const-string v5, "datetaken"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #uriWithId:Landroid/net/Uri;
    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3ab
    .catchall {:try_start_36b .. :try_end_3ab} :catchall_3d6

    .line 1952
    .end local v15           #cameraTakenTime:J
    :cond_3ab
    if-eqz v14, :cond_3b0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1956
    .end local v14           #c:Landroid/database/Cursor;
    :cond_3b0
    const-string v5, "Orientation"

    const/4 v6, -0x1

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v29

    .line 1958
    .local v29, orientation:I
    const/4 v5, -0x1

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_1a1

    .line 1961
    packed-switch v29, :pswitch_data_502

    .line 1972
    :pswitch_3c4
    const/16 v18, 0x0

    .line 1975
    .local v18, degree:I
    :goto_3c6
    const-string/jumbo v5, "orientation"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1a1

    .line 1952
    .end local v18           #degree:I
    .end local v29           #orientation:I
    .restart local v14       #c:Landroid/database/Cursor;
    :catchall_3d6
    move-exception v5

    if-eqz v14, :cond_3dc

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3dc
    throw v5

    .line 1963
    .end local v14           #c:Landroid/database/Cursor;
    .restart local v29       #orientation:I
    :pswitch_3dd
    const/16 v18, 0x5a

    .line 1964
    .restart local v18       #degree:I
    goto :goto_3c6

    .line 1966
    .end local v18           #degree:I
    :pswitch_3e0
    const/16 v18, 0xb4

    .line 1967
    .restart local v18       #degree:I
    goto :goto_3c6

    .line 1969
    .end local v18           #degree:I
    :pswitch_3e3
    const/16 v18, 0x10e

    .line 1970
    .restart local v18       #degree:I
    goto :goto_3c6

    .line 1995
    .end local v18           #degree:I
    .end local v19           #exif:Landroid/media/ExifInterface;
    .end local v28           #latlng:[F
    .end local v29           #orientation:I
    .end local v36           #time:J
    .restart local v31       #result:Landroid/net/Uri;
    :cond_3e6
    if-eqz v24, :cond_3eb

    const/4 v5, 0x2

    goto/16 :goto_1b4

    :cond_3eb
    const/4 v5, 0x3

    goto/16 :goto_1b4

    .line 1998
    :cond_3ee
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v35

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 1999
    if-eqz v31, :cond_1bc

    .line 2000
    invoke-static/range {v31 .. v31}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 2001
    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    goto/16 :goto_1bc

    .line 2008
    :cond_40e
    move-object/from16 v0, v35

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v31

    move-object/from16 v2, v40

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1bc

    .line 2035
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v21       #genre:Ljava/lang/String;
    .restart local v39       #uri:Landroid/net/Uri;
    :cond_42d
    :try_start_42d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_444
    .catchall {:try_start_42d .. :try_end_444} :catchall_447

    move-result-object v39

    goto/16 :goto_240

    .line 2044
    :catchall_447
    move-exception v5

    if-eqz v17, :cond_44d

    .line 2045
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_44d
    throw v5

    .line 2072
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v21           #genre:Ljava/lang/String;
    .end local v39           #uri:Landroid/net/Uri;
    :cond_44e
    if-eqz p2, :cond_4a7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_4a7

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_482

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2db

    .line 2075
    :cond_482
    const-string/jumbo v5, "ringtone"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2077
    const-string/jumbo v5, "ringtone_reserve"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$2602(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_2db

    .line 2080
    :cond_4a7
    if-eqz p5, :cond_2db

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_2db

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4db

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2db

    .line 2083
    :cond_4db
    const-string v5, "alarm_alert"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2085
    const-string v5, "alarm_alert_reserve"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$2802(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_2db

    .line 1923
    .end local v31           #result:Landroid/net/Uri;
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :catch_4fe
    move-exception v5

    goto/16 :goto_31b

    .line 1961
    nop

    :pswitch_data_502
    .packed-switch 0x3
        :pswitch_3e0
        :pswitch_3c4
        :pswitch_3c4
        :pswitch_3dd
        :pswitch_3c4
        :pswitch_3e3
    .end packed-switch
.end method

.method private getDrmFileType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 977
    const-string v9, ".dcf"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 978
    .local v5, isDCF:Z
    const-string v9, ".dm"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 979
    .local v6, isDM:Z
    const-string v9, ".odf"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 980
    .local v7, isODF:Z
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v8

    .line 981
    .local v8, manager:Landroid/drm/mobile2/OMADRMManager;
    if-nez v8, :cond_21

    .line 982
    const-string v9, "MediaScanner"

    const-string v10, "OmaDRMManager is NULL : "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v9, -0x1

    .line 1081
    :goto_20
    return v9

    .line 986
    :cond_21
    if-eqz v6, :cond_37

    .line 989
    :try_start_23
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, destfile:Ljava/lang/String;
    if-eqz v0, :cond_50

    .line 993
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 994
    .local v2, file2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 995
    move-object p1, v0

    .line 996
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 997
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1007
    .end local v0           #destfile:Ljava/lang/String;
    .end local v2           #file2:Ljava/io/File;
    :cond_37
    :goto_37
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 1013
    :goto_3d
    if-nez p2, :cond_43

    .line 1015
    invoke-virtual {v8, p1}, Landroid/drm/mobile2/OMADRMManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1017
    :cond_43
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1020
    if-nez p2, :cond_8f

    .line 1021
    const-string v9, "MediaScanner"

    const-string v10, "MediaScanner: getFileTypes: null MimeType "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v9, -0x1

    goto :goto_20

    .line 999
    .restart local v0       #destfile:Ljava/lang/String;
    :cond_50
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conversion failed for the file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_23 .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_68} :catch_89

    goto :goto_37

    .line 1076
    .end local v0           #destfile:Ljava/lang/String;
    :catch_69
    move-exception v9

    move-object v1, v9

    .line 1077
    .local v1, drme:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    .line 1081
    .end local v1           #drme:Landroid/drm/mobile2/OMADRMException;
    :goto_6e
    const/4 v9, -0x1

    goto :goto_20

    .line 1010
    :cond_70
    :try_start_70
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addDRmFile is failure : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_70 .. :try_end_88} :catch_69
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_88} :catch_89

    goto :goto_3d

    .line 1078
    :catch_89
    move-exception v9

    move-object v4, v9

    .line 1079
    .local v4, ioe:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    .line 1024
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_8f
    :try_start_8f
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 1027
    .local v3, fileType:I
    if-eqz v3, :cond_97

    move v9, v3

    .line 1029
    goto :goto_20

    .line 1031
    :cond_97
    const-string v9, "audio/mp3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "audio/mpeg3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "audio/x-mp3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "audio/x-mpeg"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "audio/x-mpeg3"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 1033
    :cond_bf
    const/4 v9, 0x1

    goto/16 :goto_20

    .line 1035
    :cond_c2
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MediaScanner: getFileTypes: unknown MimeType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_8f .. :try_end_da} :catch_69
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_da} :catch_89

    .line 1036
    const/4 v9, -0x1

    goto/16 :goto_20
.end method

.method private isMetadataSupported(I)Z
    .registers 6
    .parameter "fileType"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 1528
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v2, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v3, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eq v0, v3, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_93

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_95

    :cond_93
    move v0, v2

    .line 1576
    :goto_94
    return v0

    .line 1570
    :cond_95
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_9d

    move v0, v2

    .line 1571
    goto :goto_94

    .line 1576
    :cond_9d
    const/4 v0, 0x0

    goto :goto_94
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 1651
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1652
    .local v1, length:I
    if-ne p2, v1, :cond_c

    move v4, p3

    .line 1665
    :goto_b
    return v4

    .line 1654
    :cond_c
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1656
    .local v0, ch:C
    if-lt v0, v6, :cond_16

    if-le v0, v7, :cond_19

    :cond_16
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, p3

    goto :goto_b

    .line 1658
    .end local p2
    .restart local v3       #start:I
    :cond_19
    sub-int v2, v0, v6

    .line 1659
    .local v2, result:I
    :goto_1b
    if-ge v3, v1, :cond_31

    .line 1660
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1661
    if-lt v0, v6, :cond_27

    if-le v0, v7, :cond_29

    :cond_27
    move v4, v2

    goto :goto_b

    .line 1662
    :cond_29
    mul-int/lit8 v4, v2, 0xa

    sub-int v5, v0, v6

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1b

    :cond_31
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, v2

    .line 1665
    goto :goto_b
.end method

.method private scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V
    .registers 32
    .parameter "tableUri"
    .parameter "values"
    .parameter "value_count"
    .parameter "set_genre"

    .prologue
    .line 1124
    :try_start_0
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1128
    .local v18, genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    move-object/from16 v0, p2

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v26, v0

    .line 1129
    .local v26, uris:[Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I

    move-result v22

    .line 1130
    .local v22, insertNum:I
    move/from16 v0, v22

    move/from16 v1, p3

    if-eq v0, v1, :cond_30

    .line 1132
    const-string v4, "MediaScanner"

    const-string v5, "Pending Flush Canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v22           #insertNum:I
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :cond_2f
    :goto_2f
    return-void

    .line 1137
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v22       #insertNum:I
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_30
    const/16 v21, 0x0

    .local v21, i:I
    :goto_32
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_16b

    .line 1140
    aget-object v4, p2, v21

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1141
    .local v24, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1142
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 1146
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1147
    .local v14, entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    if-nez v14, :cond_66

    .line 1137
    :cond_63
    :goto_63
    add-int/lit8 v21, v21, 0x1

    goto :goto_32

    .line 1148
    :cond_66
    aget-object v4, v26, v21

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, v14, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 1151
    if-eqz p4, :cond_63

    .line 1153
    aget-object v4, p2, v21

    const-string v5, "genre_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1154
    .local v15, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_87} :catch_138
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_87} :catch_160

    .line 1156
    .local v20, genre_uri:Landroid/net/Uri;
    if-nez v20, :cond_ff

    .line 1157
    const/4 v10, 0x0

    .line 1161
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaScanner;->access$800()[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "name=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1162
    if-eqz v10, :cond_b6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_143

    .line 1164
    :cond_b6
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .local v25, temp_value:Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 1173
    .end local v25           #temp_value:Landroid/content/ContentValues;
    .local v19, genre_type_uri:Landroid/net/Uri;
    :goto_df
    if-eqz v19, :cond_fa

    .line 1174
    const-string v4, "members"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fa
    .catchall {:try_start_8a .. :try_end_fa} :catchall_159

    .line 1179
    :cond_fa
    if-eqz v10, :cond_ff

    .line 1180
    :try_start_fc
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1184
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v19           #genre_type_uri:Landroid/net/Uri;
    :cond_ff
    if-eqz v20, :cond_63

    .line 1187
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1188
    .restart local v25       #temp_value:Landroid/content/ContentValues;
    const-string v4, "audio_id"

    iget-wide v5, v14, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1190
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1191
    .local v17, genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez v17, :cond_12f

    .line 1193
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .restart local v17       #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    :cond_12f
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_136} :catch_138
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_fc .. :try_end_136} :catch_160

    goto/16 :goto_63

    .line 1221
    .end local v14           #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #genre:Ljava/lang/String;
    .end local v17           #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v20           #genre_uri:Landroid/net/Uri;
    .end local v21           #i:I
    .end local v22           #insertNum:I
    .end local v24           #key:Ljava/lang/String;
    .end local v25           #temp_value:Landroid/content/ContentValues;
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :catch_138
    move-exception v4

    move-object v11, v4

    .line 1222
    .local v11, e:Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile_FlushPending()"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1170
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v15       #genre:Ljava/lang/String;
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v20       #genre_uri:Landroid/net/Uri;
    .restart local v21       #i:I
    .restart local v22       #insertNum:I
    .restart local v24       #key:Ljava/lang/String;
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_143
    :try_start_143
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_157
    .catchall {:try_start_143 .. :try_end_157} :catchall_159

    move-result-object v19

    .restart local v19       #genre_type_uri:Landroid/net/Uri;
    goto :goto_df

    .line 1179
    .end local v19           #genre_type_uri:Landroid/net/Uri;
    :catchall_159
    move-exception v4

    if-eqz v10, :cond_15f

    .line 1180
    :try_start_15c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_15f
    throw v4
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_160} :catch_138
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15c .. :try_end_160} :catch_160

    .line 1223
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #entry_find:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #genre:Ljava/lang/String;
    .end local v18           #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v20           #genre_uri:Landroid/net/Uri;
    .end local v21           #i:I
    .end local v22           #insertNum:I
    .end local v24           #key:Ljava/lang/String;
    .end local v26           #uris:[Landroid/net/Uri;
    .end local p1
    :catch_160
    move-exception v4

    move-object v11, v4

    .line 1224
    .local v11, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MediaScanner"

    const-string v5, "UnsupportedOperationException in MediaScanner.scanFile_FlushPending()"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1203
    .end local v11           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v18       #genre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v21       #i:I
    .restart local v22       #insertNum:I
    .restart local v26       #uris:[Landroid/net/Uri;
    .restart local p1
    :cond_16b
    if-eqz p4, :cond_2f

    .line 1206
    :try_start_16d
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1207
    .local v12, entries:Ljava/util/Set;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1210
    .end local p1
    .local v23, iter:Ljava/util/Iterator;
    :goto_175
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1211
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1213
    .local v13, entry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 1214
    .restart local v20       #genre_uri:Landroid/net/Uri;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1215
    .restart local v17       #genre_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    move-object/from16 v0, p1

    check-cast v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 1217
    .local v16, genre_arr:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I
    :try_end_1b5
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_1b5} :catch_138
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_16d .. :try_end_1b5} :catch_160

    goto :goto_175
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .registers 8
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 2102
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2107
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2110
    :cond_29
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .registers 12

    .prologue
    const/4 v7, 0x4

    const-string v10, "duration"

    const-string v9, "artist"

    const-string v8, "album"

    const-string v6, "<unknown>"

    .line 1762
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1764
    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    const-string v3, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1767
    const-string v3, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1768
    const-string v3, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1771
    const-string v3, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_52
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string v3, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8e

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_65
    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string v3, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1775
    const-string v1, "0x0"

    .line 1776
    .local v1, sUnknownResolution:Ljava/lang/String;
    const-string/jumbo v3, "resolution"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    if-eqz v4, :cond_92

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_92

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    :goto_86
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    .end local v1           #sUnknownResolution:Ljava/lang/String;
    :cond_89
    :goto_89
    return-object v0

    .line 1771
    :cond_8a
    const-string v3, "<unknown>"

    move-object v3, v6

    goto :goto_52

    .line 1772
    :cond_8e
    const-string v3, "<unknown>"

    move-object v3, v6

    goto :goto_65

    .restart local v1       #sUnknownResolution:Ljava/lang/String;
    :cond_92
    move-object v4, v1

    .line 1776
    goto :goto_86

    .line 1779
    .end local v1           #sUnknownResolution:Ljava/lang/String;
    :cond_94
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-nez v3, :cond_89

    .line 1781
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1782
    const-string v3, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_167

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_167

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_b4
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const-string v3, "album_artist"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v4, :cond_16c

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16c

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_c7
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const-string v3, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_16f

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16f

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_da
    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    const-string v3, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    if-eqz v4, :cond_174

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_174

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    :goto_ed
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_100

    .line 1794
    const-string/jumbo v3, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1797
    :cond_100
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1798
    .local v2, year_name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_111

    .line 1799
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1800
    :cond_111
    const-string/jumbo v3, "year_name"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x76c

    if-lt v4, v5, :cond_179

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v4, :cond_179

    if-eqz v2, :cond_179

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_179

    move-object v4, v2

    :goto_12d
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v3, "genre_name"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_17d

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17d

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    :goto_140
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string/jumbo v3, "track"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1805
    const-string v3, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1806
    const-string v3, "compilation"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_89

    .line 1782
    .end local v2           #year_name:Ljava/lang/String;
    :cond_167
    const-string v3, "<unknown>"

    move-object v3, v6

    goto/16 :goto_b4

    .line 1784
    :cond_16c
    const/4 v4, 0x0

    goto/16 :goto_c7

    .line 1786
    :cond_16f
    const-string v3, "<unknown>"

    move-object v3, v6

    goto/16 :goto_da

    .line 1791
    :cond_174
    const-string v4, "<unknown>"

    move-object v4, v6

    goto/16 :goto_ed

    .line 1800
    .restart local v2       #year_name:Ljava/lang/String;
    :cond_179
    const-string v4, "<unknown>"

    move-object v4, v6

    goto :goto_12d

    .line 1801
    :cond_17d
    const-string v4, "<unknown>"

    move-object v4, v6

    goto :goto_140
.end method


# virtual methods
.method public addNoMediaFolder(Ljava/lang/String;)V
    .registers 8
    .parameter "path"

    .prologue
    const-string v3, "_data LIKE ?"

    .line 2113
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2114
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2122
    .local v1, pathSpec:[Ljava/lang/String;
    :try_start_27
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data LIKE ?"

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2124
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data LIKE ?"

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_41} :catch_42

    .line 2129
    return-void

    .line 2126
    :catch_42
    move-exception v3

    move-object v0, v3

    .line 2127
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;
    .registers 26
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 858
    const/16 v6, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 859
    .local v16, lastSlash:I
    if-ltz v16, :cond_94

    add-int/lit8 v6, v16, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_94

    .line 861
    add-int/lit8 v6, v16, 0x1

    const-string v7, "._"

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 862
    const/4 v6, 0x0

    .line 971
    :goto_26
    return-object v6

    .line 867
    :cond_27
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".jpg"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 868
    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArt_{"

    const/4 v9, 0x0

    const/16 v10, 0xa

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5a

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArt."

    const/4 v9, 0x0

    const/16 v10, 0x9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 870
    :cond_5a
    const/4 v6, 0x0

    goto :goto_26

    .line 872
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v6, v16

    const/4 v7, 0x1

    sub-int v17, v6, v7

    .line 873
    .local v17, length:I
    const/16 v6, 0x11

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_7c

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "AlbumArtSmall"

    const/4 v9, 0x0

    const/16 v10, 0xd

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_92

    :cond_7c
    const/16 v6, 0xa

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_94

    const/4 v6, 0x1

    add-int/lit8 v7, v16, 0x1

    const-string v8, "Folder"

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 875
    :cond_92
    const/4 v6, 0x0

    goto :goto_26

    .line 880
    .end local v17           #length:I
    :cond_94
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 882
    if-eqz p2, :cond_b2

    .line 883
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 884
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    if-eqz v6, :cond_b2

    .line 885
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 888
    :cond_b2
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_d9

    .line 892
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v18

    .line 893
    .local v18, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v18, :cond_d9

    .line 894
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 895
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 902
    .end local v18           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_d9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 905
    :cond_f1
    invoke-direct/range {p0 .. p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getDrmFileType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 906
    .local v14, filetype:I
    if-lez v14, :cond_fc

    .line 908
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 914
    .end local v14           #filetype:I
    :cond_fc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    move v6, v0

    if-eqz v6, :cond_110

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_110

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 922
    :cond_110
    move-object/from16 v15, p1

    .line 923
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 924
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 926
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 927
    .local v5, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-nez v5, :cond_14a

    .line 928
    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    .line 929
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_14a
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 934
    iget-wide v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    sub-long v12, p3, v6

    .line 935
    .local v12, delta:J
    const-wide/16 v6, 0x1

    cmp-long v6, v12, v6

    if-gtz v6, :cond_15d

    const-wide/16 v6, -0x1

    cmp-long v6, v12, v6

    if-gez v6, :cond_165

    .line 936
    :cond_15d
    move-wide/from16 v0, p3

    move-object v2, v5

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 937
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 940
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_18a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_18a

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    const/4 v6, 0x0

    goto/16 :goto_26

    .line 947
    :cond_18a
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 948
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 949
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 950
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 951
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 952
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 953
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 954
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 955
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 956
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 957
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 958
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 959
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 961
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .line 965
    const-wide/16 v6, -0x1

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Time:J

    .line 966
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    .line 967
    const v6, 0x4479c000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    .line 968
    const v6, 0x4479c000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    move-object v6, v5

    .line 971
    goto/16 :goto_26
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    .registers 17
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"

    .prologue
    .line 1585
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;
    .registers 21
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"
    .parameter "usePendingBulkInsert"

    .prologue
    .line 1598
    const/4 v11, 0x0

    .line 1601
    .local v11, result:Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v1

    .line 1602
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v0, :cond_9f

    .line 1603
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1604
    const-string v0, "MediaScanner"

    const-string v2, "changing the path to dcf for meta Data Scanning"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1606
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1607
    const/16 p8, 0x0

    .line 1614
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_9e

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_22

    if-eqz p7, :cond_9e

    .line 1615
    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 1616
    .local v10, lowpath:Ljava/lang/String;
    const-string v0, "/ringtones/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b3

    const/4 v0, 0x1

    move v2, v0

    .line 1617
    .local v2, ringtones:Z
    :goto_30
    const-string v0, "/download/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b7

    const-string v0, ".dcf"

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x1

    move v3, v0

    .line 1618
    .local v3, dcfRingtones:Z
    :goto_42
    const-string v0, "/notifications/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_ba

    const/4 v0, 0x1

    move v4, v0

    .line 1619
    .local v4, notifications:Z
    :goto_4c
    const-string v0, "/alarms/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_bd

    const/4 v0, 0x1

    move v5, v0

    .line 1620
    .local v5, alarms:Z
    :goto_56
    const-string v0, "/podcasts/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c0

    const/4 v0, 0x1

    move v7, v0

    .line 1621
    .local v7, podcasts:Z
    :goto_60
    const-string v0, "/music/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_70

    if-nez v2, :cond_c3

    if-nez v4, :cond_c3

    if-nez v5, :cond_c3

    if-nez v7, :cond_c3

    :cond_70
    const/4 v0, 0x1

    move v6, v0

    .line 1624
    .local v6, music:Z
    :goto_72
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-direct {p0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->isMetadataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 1625
    const-string v0, "MediaScanner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doScanFile:: calling processFile for filePath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    :cond_97
    :goto_97
    move-object v0, p0

    move/from16 v8, p8

    .line 1638
    invoke-direct/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZZ)Landroid/net/Uri;

    move-result-object v11

    .line 1647
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #dcfRingtones:Z
    .end local v4           #notifications:Z
    .end local v5           #alarms:Z
    .end local v6           #music:Z
    .end local v7           #podcasts:Z
    .end local v10           #lowpath:Ljava/lang/String;
    :cond_9e
    :goto_9e
    return-object v11

    .line 1611
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_9f
    const-string v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, ".odf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_af
    const/16 p8, 0x0

    goto/16 :goto_1a

    .line 1616
    .restart local v10       #lowpath:Ljava/lang/String;
    :cond_b3
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_30

    .line 1617
    .restart local v2       #ringtones:Z
    :cond_b7
    const/4 v0, 0x0

    move v3, v0

    goto :goto_42

    .line 1618
    .restart local v3       #dcfRingtones:Z
    :cond_ba
    const/4 v0, 0x0

    move v4, v0

    goto :goto_4c

    .line 1619
    .restart local v4       #notifications:Z
    :cond_bd
    const/4 v0, 0x0

    move v5, v0

    goto :goto_56

    .line 1620
    .restart local v5       #alarms:Z
    :cond_c0
    const/4 v0, 0x0

    move v7, v0

    goto :goto_60

    .line 1621
    .restart local v7       #podcasts:Z
    :cond_c3
    const/4 v0, 0x0

    move v6, v0

    goto :goto_72

    .line 1629
    .restart local v6       #music:Z
    :cond_c6
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_cb} :catch_cf

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_97

    .line 1642
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #dcfRingtones:Z
    .end local v4           #notifications:Z
    .end local v5           #alarms:Z
    .end local v6           #music:Z
    .end local v7           #podcasts:Z
    .end local v10           #lowpath:Ljava/lang/String;
    :catch_cf
    move-exception v0

    move-object v9, v0

    .line 1643
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "resolution"

    .line 1669
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1673
    :cond_17
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 1741
    :cond_19
    :goto_19
    return-void

    .line 1674
    :cond_1a
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1675
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_19

    .line 1676
    :cond_31
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1677
    :cond_41
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_19

    .line 1678
    :cond_48
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1679
    :cond_58
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_19

    .line 1680
    :cond_5f
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1681
    :cond_6f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_19

    .line 1682
    :cond_76
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_86

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1684
    :cond_86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a9

    .line 1685
    const/4 v1, -0x1

    .line 1686
    .local v1, genreCode:I
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1687
    .local v0, ch:C
    const/16 v3, 0x28

    if-ne v0, v3, :cond_b1

    .line 1688
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 1692
    :cond_9a
    :goto_9a
    if-ltz v1, :cond_be

    invoke-static {}, Landroid/media/MediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_be

    .line 1693
    invoke-static {}, Landroid/media/MediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v3

    aget-object p2, v3, v1

    .line 1701
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_a9
    :goto_a9
    #calls: Landroid/media/MediaScanner;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Landroid/media/MediaScanner;->access$2200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1704
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_19

    .line 1689
    .restart local v0       #ch:C
    .restart local v1       #genreCode:I
    :cond_b1
    const/16 v3, 0x30

    if-lt v0, v3, :cond_9a

    const/16 v3, 0x39

    if-gt v0, v3, :cond_9a

    .line 1690
    invoke-direct {p0, p2, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    goto :goto_9a

    .line 1694
    :cond_be
    const/16 v3, 0xff

    if-ne v1, v3, :cond_a9

    .line 1696
    const/4 p2, 0x0

    goto :goto_a9

    .line 1705
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_c4
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d6

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 1706
    :cond_d6
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_19

    .line 1707
    :cond_de
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f0

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 1710
    :cond_f0
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 1711
    .local v2, num:I
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v2

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_19

    .line 1712
    .end local v2           #num:I
    :cond_ff
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_119

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_119

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 1716
    :cond_119
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 1717
    .restart local v2       #num:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_19

    .line 1718
    .end local v2           #num:I
    :cond_128
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 1719
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_19

    .line 1720
    :cond_138
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14a

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_152

    .line 1721
    :cond_14a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_19

    .line 1723
    :cond_152
    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_164

    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 1724
    :cond_164
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto/16 :goto_19

    .line 1726
    :cond_16c
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 1727
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_19

    .line 1730
    :cond_17c
    const-string v3, "exif_time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 1731
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Time:J

    goto/16 :goto_19

    .line 1732
    :cond_18c
    const-string v3, "exif_ori"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 1733
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    goto/16 :goto_19

    .line 1734
    :cond_19c
    const-string v3, "exif_gps_lat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 1735
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    goto/16 :goto_19

    .line 1736
    :cond_1ac
    const-string v3, "exif_gps_lng"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1737
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    goto/16 :goto_19
.end method

.method public scanFile(Ljava/lang/String;JJ)V
    .registers 15
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1095
    if-eqz p1, :cond_1b

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v8, v7

    .line 1096
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    .line 1101
    :goto_1a
    return-void

    .line 1098
    :cond_1b
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    goto :goto_1a
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    const/4 v7, 0x0

    .line 1109
    if-eqz p1, :cond_1b

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v8, v7

    .line 1110
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    .line 1115
    :goto_1a
    return-void

    .line 1112
    :cond_1b
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;

    goto :goto_1a
.end method

.method public scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    .registers 12
    .parameter "mediaKind"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v7, ")"

    const-string v4, "MediaScanner"

    .line 1390
    const/16 v0, 0x1f4

    .line 1391
    .local v0, PENDING_MAX:I
    if-ne p1, v8, :cond_9f

    .line 1392
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 1394
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Audio Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1396
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1400
    :cond_3d
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1401
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1408(Landroid/media/MediaScanner;)I

    .line 1404
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_9e

    .line 1406
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1411
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8c
    if-ge v1, v0, :cond_99

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 1412
    :cond_99
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1464
    .end local v1           #i:I
    :cond_9e
    :goto_9e
    return-void

    .line 1415
    :cond_9f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_137

    .line 1417
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_d4

    .line 1419
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Image Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1421
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    .line 1425
    :cond_d4
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1426
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1608(Landroid/media/MediaScanner;)I

    .line 1429
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_9e

    .line 1431
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1435
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_123
    if-ge v1, v0, :cond_130

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_123

    .line 1436
    :cond_130
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    goto/16 :goto_9e

    .line 1439
    .end local v1           #i:I
    :cond_137
    const/4 v2, 0x3

    if-ne p1, v2, :cond_9e

    .line 1441
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_16c

    .line 1443
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin Video Data Pending (max cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-array v3, v0, [Landroid/content/ContentValues;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1445
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    .line 1449
    :cond_16c
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v3

    aput-object p2, v2, v3

    .line 1450
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$1808(Landroid/media/MediaScanner;)I

    .line 1453
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v2

    if-ne v2, v0, :cond_9e

    .line 1455
    const-string v2, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Flush Video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1459
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1bb
    if-ge v1, v0, :cond_1c8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v2

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bb

    .line 1460
    :cond_1c8
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    goto/16 :goto_9e
.end method

.method public scanFile_Special(Ljava/lang/String;JJ)V
    .registers 37
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 1230
    const/16 v23, 0x0

    .line 1233
    .local v23, result:Landroid/net/Uri;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    :try_start_b
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v5

    .line 1234
    .local v5, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    move v4, v0

    if-eqz v4, :cond_2f

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 1236
    const-string v4, "MediaScanner"

    const-string v6, "changing the path to dcf for meta Data Scanning"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1238
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1242
    :cond_2f
    if-eqz v5, :cond_ba

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v4, :cond_ba

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p0

    #calls: Landroid/media/MediaScanner;->processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1248
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 1249
    .local v21, lowpath:Ljava/lang/String;
    const-string v4, "/ringtones/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_bb

    const/4 v4, 0x1

    move v6, v4

    .line 1250
    .local v6, ringtones:Z
    :goto_55
    const-string v4, "/download/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_be

    const-string v4, ".dcf"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_be

    const/4 v4, 0x1

    move v7, v4

    .line 1251
    .local v7, dcfRingtones:Z
    :goto_6d
    const-string v4, "/notifications/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c1

    const/4 v4, 0x1

    move v8, v4

    .line 1252
    .local v8, notifications:Z
    :goto_7a
    const-string v4, "/alarms/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c4

    const/4 v4, 0x1

    move v9, v4

    .line 1253
    .local v9, alarms:Z
    :goto_87
    const-string v4, "/podcasts/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c7

    const/4 v4, 0x1

    move v11, v4

    .line 1254
    .local v11, podcasts:Z
    :goto_94
    const-string v4, "/music/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_a7

    if-nez v6, :cond_ca

    if-nez v8, :cond_ca

    if-nez v9, :cond_ca

    if-nez v11, :cond_ca

    :cond_a7
    const/4 v4, 0x1

    move v10, v4

    .line 1256
    .local v10, music:Z
    :goto_a9
    move-object v0, v5

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v4, v27, v29

    if-eqz v4, :cond_cd

    .line 1264
    const/4 v12, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZZZ)Landroid/net/Uri;

    .line 1384
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v6           #ringtones:Z
    .end local v7           #dcfRingtones:Z
    .end local v8           #notifications:Z
    .end local v9           #alarms:Z
    .end local v10           #music:Z
    .end local v11           #podcasts:Z
    .end local v21           #lowpath:Ljava/lang/String;
    :cond_ba
    :goto_ba
    return-void

    .line 1249
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v21       #lowpath:Ljava/lang/String;
    :cond_bb
    const/4 v4, 0x0

    move v6, v4

    goto :goto_55

    .line 1250
    .restart local v6       #ringtones:Z
    :cond_be
    const/4 v4, 0x0

    move v7, v4

    goto :goto_6d

    .line 1251
    .restart local v7       #dcfRingtones:Z
    :cond_c1
    const/4 v4, 0x0

    move v8, v4

    goto :goto_7a

    .line 1252
    .restart local v8       #notifications:Z
    :cond_c4
    const/4 v4, 0x0

    move v9, v4

    goto :goto_87

    .line 1253
    .restart local v9       #alarms:Z
    :cond_c7
    const/4 v4, 0x0

    move v11, v4

    goto :goto_94

    .line 1254
    .restart local v11       #podcasts:Z
    :cond_ca
    const/4 v4, 0x0

    move v10, v4

    goto :goto_a9

    .line 1272
    .restart local v10       #music:Z
    :cond_cd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v16

    .line 1273
    .local v16, isAudio:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v18

    .line 1274
    .local v18, isVideo:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v17

    .line 1275
    .local v17, isImage:Z
    if-eqz v18, :cond_24e

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 1287
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_107

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_111

    .line 1288
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1292
    :cond_111
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v26

    .line 1295
    .local v26, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1296
    .local v25, title:Ljava/lang/String;
    if-eqz v25, :cond_12b

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_172

    .line 1297
    :cond_12b
    const-string v4, "_data"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1299
    const/16 v4, 0x2f

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 1300
    .local v20, lastSlash:I
    if-ltz v20, :cond_152

    .line 1301
    add-int/lit8 v20, v20, 0x1

    .line 1302
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_152

    .line 1303
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 1307
    :cond_152
    const/16 v4, 0x2e

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 1308
    .local v19, lastDot:I
    if-lez v19, :cond_167

    .line 1309
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1311
    :cond_167
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    .end local v19           #lastDot:I
    .end local v20           #lastSlash:I
    :cond_172
    const-string v4, "album"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1314
    .local v13, album:Ljava/lang/String;
    const-string v4, "<unknown>"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 1315
    const-string v4, "_data"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1317
    const/16 v4, 0x2f

    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 1318
    .restart local v20       #lastSlash:I
    if-ltz v20, :cond_1ba

    .line 1319
    const/16 v22, 0x0

    .line 1321
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .local v22, previousSlash:I
    :goto_196
    const/16 v4, 0x2f

    add-int/lit8 v5, v22, 0x1

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 1322
    .local v15, idx:I
    if-ltz v15, :cond_1a5

    move v0, v15

    move/from16 v1, v20

    if-lt v0, v1, :cond_26c

    .line 1327
    :cond_1a5
    if-eqz v22, :cond_1ba

    .line 1328
    add-int/lit8 v4, v22, 0x1

    move-object v0, v13

    move v1, v4

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1329
    const-string v4, "album"

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    .end local v15           #idx:I
    .end local v20           #lastSlash:I
    .end local v22           #previousSlash:I
    :cond_1ba
    if-eqz v16, :cond_270

    .line 1336
    const-string v4, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1337
    const-string v4, "is_notification"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1338
    const-string v4, "is_alarm"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1339
    const-string v4, "is_music"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1340
    const-string v4, "is_podcast"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1343
    const/16 v24, 0x0

    .line 1344
    .local v24, sound:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x10

    if-lt v4, v5, :cond_211

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x12

    if-le v4, v5, :cond_229

    :cond_211
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_229

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_229

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_22b

    .line 1347
    :cond_229
    const/16 v24, 0x1

    .line 1349
    :cond_22b
    const-string v4, "is_sound"

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1356
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    :try_end_241
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_241} :catch_243

    goto/16 :goto_ba

    .line 1381
    .end local v6           #ringtones:Z
    .end local v7           #dcfRingtones:Z
    .end local v8           #notifications:Z
    .end local v9           #alarms:Z
    .end local v10           #music:Z
    .end local v11           #podcasts:Z
    .end local v13           #album:Ljava/lang/String;
    .end local v16           #isAudio:Z
    .end local v17           #isImage:Z
    .end local v18           #isVideo:Z
    .end local v21           #lowpath:Ljava/lang/String;
    .end local v24           #sound:Z
    .end local v25           #title:Ljava/lang/String;
    .end local v26           #values:Landroid/content/ContentValues;
    :catch_243
    move-exception v4

    move-object v14, v4

    .line 1382
    .local v14, e:Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile_Special()"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ba

    .line 1277
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v6       #ringtones:Z
    .restart local v7       #dcfRingtones:Z
    .restart local v8       #notifications:Z
    .restart local v9       #alarms:Z
    .restart local v10       #music:Z
    .restart local v11       #podcasts:Z
    .restart local v16       #isAudio:Z
    .restart local v17       #isImage:Z
    .restart local v18       #isVideo:Z
    .restart local v21       #lowpath:Ljava/lang/String;
    :cond_24e
    if-eqz v17, :cond_25d

    .line 1278
    :try_start_250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    goto/16 :goto_f5

    .line 1279
    :cond_25d
    if-eqz v16, :cond_ba

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    goto/16 :goto_f5

    .line 1325
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v13       #album:Ljava/lang/String;
    .restart local v15       #idx:I
    .restart local v20       #lastSlash:I
    .restart local v22       #previousSlash:I
    .restart local v25       #title:Ljava/lang/String;
    .restart local v26       #values:Landroid/content/ContentValues;
    :cond_26c
    move/from16 v22, v15

    .line 1326
    goto/16 :goto_196

    .line 1360
    .end local v15           #idx:I
    .end local v20           #lastSlash:I
    .end local v22           #previousSlash:I
    :cond_270
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v4, v0

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_ba

    .line 1361
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    move v4, v0

    move v0, v4

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x408f380000000000L

    cmpl-double v4, v27, v29

    if-eqz v4, :cond_2af

    .line 1362
    const-string v4, "latitude"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lat:F

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1363
    const-string v4, "longitude"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_lng:F

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1369
    :cond_2af
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2ca

    .line 1370
    const-string/jumbo v4, "orientation"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mExif_Ori:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1375
    :cond_2ca
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_AddToPendingList(ILandroid/content/ContentValues;)V
    :try_end_2d3
    .catch Landroid/os/RemoteException; {:try_start_250 .. :try_end_2d3} :catch_243

    goto/16 :goto_ba
.end method

.method public scanFile_SpecialEnd(I)V
    .registers 10
    .parameter "option"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v7, "MediaScanner"

    .line 1469
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1470
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush IMAGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    if-eq p1, v5, :cond_42

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1476
    :cond_42
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1477
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;I)I

    .line 1479
    :cond_4c
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 1480
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    if-eq p1, v5, :cond_8a

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1486
    :cond_8a
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1487
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1402(Landroid/media/MediaScanner;I)I

    .line 1489
    :cond_94
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 1490
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final Pending Flush VIDEO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    if-eq p1, v5, :cond_d1

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile_FlushPending(Landroid/net/Uri;[Landroid/content/ContentValues;IZ)V

    .line 1496
    :cond_d1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;
    invoke-static {v0, v6}, Landroid/media/MediaScanner;->access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    .line 1497
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I
    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;I)I

    .line 1499
    :cond_db
    return-void
.end method

.method public setExternalSDCardRemovalFlag(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 2134
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #setter for: Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z
    invoke-static {v1, p1}, Landroid/media/MediaScanner;->access$3002(Landroid/media/MediaScanner;Z)Z

    .line 2135
    if-eqz p1, :cond_17

    .line 2136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MEDIA_SCANNER_EXTERNAL_SD_CARD_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2137
    .local v0, sdCardRemovedIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2139
    .end local v0           #sdCardRemovedIntent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 4
    .parameter "mimeType"

    .prologue
    .line 1744
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1753
    :goto_13
    return-void

    .line 1751
    :cond_14
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1752
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_13
.end method

.method public setProgressStatus(III)V
    .registers 12
    .parameter "device"
    .parameter "total"
    .parameter "curr"

    .prologue
    .line 1504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1507
    .local v0, currTick:J
    if-eqz p3, :cond_1a

    if-eq p3, p2, :cond_1a

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1a

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_41

    .line 1513
    :cond_1a
    const-string v4, "file://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1514
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MEDIA_SCANNER_PROGRESS"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1515
    .local v2, scanProgress:Landroid/content/Intent;
    const-string v4, "ScanType"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1516
    const-string v4, "ScanTotal"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1517
    const-string v4, "ScanDone"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1518
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1521
    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrevStatusTick:J

    .line 1523
    .end local v2           #scanProgress:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_41
    return-void
.end method
