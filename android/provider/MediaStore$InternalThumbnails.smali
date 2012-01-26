.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 274
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .registers 13
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 334
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 337
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 339
    .local v6, c:Landroid/database/Cursor;
    :try_start_26
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_36

    move-result-object v6

    .line 342
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_35
    return-void

    .line 342
    :catchall_36
    move-exception v0

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 283
    .local v3, thumbUri:Landroid/net/Uri;
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 284
    .local v1, thumbId:J
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 285
    .local p0, filePath:Ljava/lang/String;
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_2f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_f} :catch_7f

    move-result-object v1

    .line 286
    .end local v3           #thumbUri:Landroid/net/Uri;
    .local v1, thumbUri:Landroid/net/Uri;
    :try_start_10
    const-string/jumbo p0, "r"

    .end local p0           #filePath:Ljava/lang/String;
    invoke-virtual {p2, v1, p0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 297
    .local p1, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_c1

    .line 298
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_29} :catch_b7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_29} :catch_a7

    .end local p2
    move-result-object p0

    .line 310
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2d} :catch_bd
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_b4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2d} :catch_ac

    move-object p1, v1

    .line 319
    .end local v1           #thumbUri:Landroid/net/Uri;
    .end local p3
    .local p1, thumbUri:Landroid/net/Uri;
    :goto_2e
    return-object p0

    .line 311
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .restart local p2
    .restart local p3
    :catch_2f
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 312
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/io/FileNotFoundException;
    :goto_33
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t open thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 318
    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_2e

    .line 313
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    .restart local p3
    :catch_57
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 314
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/io/IOException;
    :goto_5b
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t open thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 318
    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_2e

    .line 315
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    .restart local p3
    :catch_7f
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 316
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/lang/OutOfMemoryError;
    :goto_83
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to allocate memory for thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_2e

    .line 315
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p3
    :catch_a7
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_83

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .local p1, pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_ac
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto :goto_83

    .line 313
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    :catch_af
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_5b

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_b4
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto :goto_5b

    .line 311
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    :catch_b7
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_33

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_bd
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto/16 :goto_33

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    :cond_c1
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_2a
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 39
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 362
    const/4 v13, 0x0

    .line 363
    .local v13, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 366
    .local v12, filePath:Ljava/lang/String;
    const/16 v21, 0x0

    .line 367
    .local v21, saveMini:Z
    const/16 v23, 0x0

    .line 368
    .local v23, thumbUri:Landroid/net/Uri;
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "thumbnails"

    const-string v7, "media"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 377
    .local v6, uri:Landroid/net/Uri;
    invoke-static/range {p7 .. p7}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v22

    .line 378
    .local v22, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J

    move-result-wide v17

    .line 384
    .local v17, magic:J
    const-wide/16 v14, 0x0

    .line 385
    .local v14, mini_thumb_magic:J
    const/4 v11, 0x0

    .line 387
    .local v11, c0:Landroid/database/Cursor;
    const/4 v5, 0x2

    :try_start_35
    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "mini_thumb_magic"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "_data"

    aput-object v8, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_49} :catch_bf

    move-result-object v5

    .line 388
    .end local v11           #c0:Landroid/database/Cursor;
    .local v5, c0:Landroid/database/Cursor;
    if-eqz v5, :cond_8ac

    :try_start_4c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8ac

    .line 389
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_806
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_56} :catch_818

    move-result-wide v8

    .line 390
    .end local v14           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    const/4 v7, 0x1

    :try_start_58
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_80f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_5b} :catch_81c

    move-result-object v7

    .line 395
    .end local v12           #filePath:Ljava/lang/String;
    .local v7, filePath:Ljava/lang/String;
    :goto_5c
    if-eqz v5, :cond_8a5

    .line 396
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local v15, c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .local v19, mini_thumb_magic:J
    move-object/from16 v16, v7

    .line 399
    .end local v7           #filePath:Ljava/lang/String;
    .local v16, filePath:Ljava/lang/String;
    :goto_66
    const-wide/16 v7, 0x0

    cmp-long v5, v17, v7

    if-eqz v5, :cond_897

    cmp-long v5, v17, v19

    if-nez v5, :cond_897

    .line 402
    const/4 v5, 0x3

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_e7

    .line 403
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p3
    monitor-enter p3

    .line 404
    :try_start_79
    sget-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p4, :cond_87

    .line 405
    const/16 p4, 0x2710

    move/from16 v0, p4

    new-array v0, v0, [B

    move-object/from16 p4, v0

    sput-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 414
    :cond_87
    sget-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B

    move-result-object p0

    .end local p0
    if-eqz p0, :cond_89a

    .line 417
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p1, 0x0

    sget-object p2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p2, v0

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_a5
    .catchall {:try_start_79 .. :try_end_a5} :catchall_e0

    move-result-object p0

    .line 418
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_af

    .line 419
    :try_start_a8
    const-string p1, "MediaStore"

    const-string p2, "couldn\'t decode byte array."

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_af
    :goto_af
    monitor-exit p3
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_803

    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 v5, p0

    .line 590
    .end local v6           #uri:Landroid/net/Uri;
    :goto_be
    return-object v5

    .line 392
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v11       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_bf
    move-exception v5

    move-object v7, v5

    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    move-object v5, v11

    .line 393
    .end local v11           #c0:Landroid/database/Cursor;
    .restart local v5       #c0:Landroid/database/Cursor;
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :goto_c3
    :try_start_c3
    const-string v10, "MediaStore"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_80f

    .line 395
    if-eqz v5, :cond_89e

    .line 396
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto :goto_66

    .line 395
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v11       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v14       #mini_thumb_magic:J
    :catchall_d3
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v14

    .end local v14           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v11

    .end local v11           #c0:Landroid/database/Cursor;
    .end local p3           #groupId:J
    .local p0, c0:Landroid/database/Cursor;
    :goto_da
    if-eqz p0, :cond_df

    .line 396
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_df
    throw p3

    .line 422
    .end local v12           #filePath:Ljava/lang/String;
    .end local p0           #c0:Landroid/database/Cursor;
    .end local p1           #mini_thumb_magic:J
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    :catchall_e0
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_e5
    :try_start_e5
    monitor-exit p3
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_803

    throw p1

    .line 424
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #groupId:J
    :cond_e7
    const/4 v5, 0x1

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_897

    .line 425
    if-eqz p8, :cond_13d

    const-string/jumbo v5, "video_id="

    move-object v7, v5

    .line 426
    .local v7, column:Ljava/lang/String;
    :goto_f3
    const/4 v5, 0x0

    .line 428
    .local v5, c:Landroid/database/Cursor;
    :try_start_f4
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v7           #column:Ljava/lang/String;
    move-object v0, v7

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p7

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_113
    .catchall {:try_start_f4 .. :try_end_113} :catchall_199

    move-result-object v7

    .line 429
    .end local v5           #c:Landroid/database/Cursor;
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_141

    :try_start_116
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_141

    .line 430
    move-object v0, v7

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_126
    .catchall {:try_start_116 .. :try_end_126} :catchall_7fc

    move-result-object v5

    .line 431
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_142

    .line 436
    if-eqz v7, :cond_12e

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_12e
    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_be

    .line 425
    .end local v7           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :cond_13d
    const-string v5, "image_id="

    move-object v7, v5

    goto :goto_f3

    .restart local v7       #c:Landroid/database/Cursor;
    :cond_141
    move-object v5, v13

    .line 436
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_142
    if-eqz v7, :cond_147

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 441
    .end local v7           #c:Landroid/database/Cursor;
    :cond_147
    :goto_147
    const/4 v13, 0x0

    .line 443
    .local v13, c:Landroid/database/Cursor;
    :try_start_148
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "blocking"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .end local p3           #groupId:J
    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 446
    .local v8, blockingUri:Landroid/net/Uri;
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17b
    .catchall {:try_start_148 .. :try_end_17b} :catchall_4aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_148 .. :try_end_17b} :catch_73f
    .catch Ljava/io/FileNotFoundException; {:try_start_148 .. :try_end_17b} :catch_41c
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_17b} :catch_463

    move-result-object p4

    .line 448
    .end local v13           #c:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    if-nez p4, :cond_1a4

    const/16 p0, 0x0

    .line 588
    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_185

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_185
    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .end local p4           #c:Landroid/database/Cursor;
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v24, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local v24, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, p0

    move-object/from16 p0, v24

    .end local v24           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_be

    .line 436
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .local v5, c:Landroid/database/Cursor;
    .local v13, bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_199
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .end local p1           #origId:J
    .local p0, c:Landroid/database/Cursor;
    :goto_19e
    if-eqz p0, :cond_1a3

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_1a3
    throw p1

    .line 451
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local p3           #groupId:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_1a4
    const/16 p3, 0x3

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_328

    .line 478
    const/16 p3, 0x2

    :try_start_1ae
    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 p3, 0x0

    const-string p6, "mini_thumb_magic"

    .end local p6
    aput-object p6, v11, p3

    const/16 p3, 0x1

    const-string p6, "_data"

    aput-object p6, v11, p3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v10, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c8
    .catchall {:try_start_1ae .. :try_end_1c8} :catchall_2bd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ae .. :try_end_1c8} :catch_2a1

    move-result-object p3

    .line 479
    .end local v15           #c0:Landroid/database/Cursor;
    .local p3, c0:Landroid/database/Cursor;
    if-eqz p3, :cond_891

    :try_start_1cb
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p6

    if-eqz p6, :cond_891

    .line 480
    const/16 p6, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1da
    .catchall {:try_start_1cb .. :try_end_1da} :catchall_7de
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1cb .. :try_end_1da} :catch_7f4

    move-result-wide v6

    .line 481
    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    const/16 p6, 0x1

    :try_start_1dd
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1e4
    .catchall {:try_start_1dd .. :try_end_1e4} :catchall_7e9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1dd .. :try_end_1e4} :catch_7f9

    move-result-object p6

    .line 486
    .end local v16           #filePath:Ljava/lang/String;
    .local p6, filePath:Ljava/lang/String;
    :goto_1e5
    if-eqz p3, :cond_88a

    .line 487
    :try_start_1e7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_1ea
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_4c3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e7 .. :try_end_1ea} :catch_754
    .catch Ljava/io/FileNotFoundException; {:try_start_1e7 .. :try_end_1ea} :catch_671
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1ea} :catch_5a3

    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p6, p3

    .line 490
    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    :goto_1ef
    const-wide/16 v6, 0x0

    cmp-long p3, v8, v6

    if-eqz p3, :cond_875

    .line 491
    :try_start_1f5
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J
    :try_end_1fe
    .catchall {:try_start_1f5 .. :try_end_1fe} :catchall_4ff
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f5 .. :try_end_1fe} :catch_77e
    .catch Ljava/io/FileNotFoundException; {:try_start_1f5 .. :try_end_1fe} :catch_6ae
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1fe} :catch_5e0

    move-result-wide v6

    .line 492
    .end local v17           #magic:J
    .local v6, magic:J
    cmp-long p3, v6, v8

    if-nez p3, :cond_865

    .line 493
    :try_start_203
    sget-object v10, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_513
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_203 .. :try_end_206} :catch_793
    .catch Ljava/io/FileNotFoundException; {:try_start_203 .. :try_end_206} :catch_6c3
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_206} :catch_5f5

    .line 494
    :try_start_206
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_214

    .line 495
    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 497
    :cond_214
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B

    move-result-object p3

    if-eqz p3, :cond_861

    .line 498
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v11, 0x0

    sget-object v12, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v12, v12

    move-object/from16 v0, p3

    move v1, v11

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_231
    .catchall {:try_start_206 .. :try_end_231} :catchall_30f

    move-result-object p3

    .line 499
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_23b

    .line 500
    :try_start_234
    const-string v5, "MediaStore"

    const-string v11, "couldn\'t decode byte array."

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_23b
    :goto_23b
    monitor-exit v10
    :try_end_23c
    .catchall {:try_start_234 .. :try_end_23c} :catchall_7d4

    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v10, thumbUri:Landroid/net/Uri;
    move-wide/from16 v24, v6

    .end local v6           #magic:J
    .local v24, magic:J
    move-wide/from16 v5, v24

    .end local v24           #magic:J
    .local v5, magic:J
    move-wide/from16 v26, v8

    .end local v8           #mini_thumb_magic:J
    .local v26, mini_thumb_magic:J
    move-wide/from16 v7, v26

    .end local v26           #mini_thumb_magic:J
    .local v7, mini_thumb_magic:J
    move/from16 v9, v21

    .line 530
    .end local v21           #saveMini:Z
    .local v9, saveMini:Z
    :goto_248
    if-nez p3, :cond_83f

    .line 531
    :try_start_24a
    const-string v11, "MediaStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Create the thumbnail in memory: origId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #origId:J
    const-string p2, ", kind="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isVideo="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_284
    .catchall {:try_start_24a .. :try_end_284} :catchall_565
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24a .. :try_end_284} :catch_7bf
    .catch Ljava/io/FileNotFoundException; {:try_start_24a .. :try_end_284} :catch_717
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_284} :catch_649

    .line 554
    if-nez p7, :cond_39d

    .line 555
    const/16 p0, 0x0

    .line 588
    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_28d

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_28d
    move-object/from16 p1, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-object/from16 p8, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-wide/from16 p5, v7

    .end local v7           #mini_thumb_magic:J
    .local p5, mini_thumb_magic:J
    move/from16 p7, v9

    .end local v9           #saveMini:Z
    .local p7, saveMini:Z
    move-wide/from16 v24, v5

    .end local v5           #magic:J
    .restart local v24       #magic:J
    move-object/from16 v5, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p3, v24

    .end local v24           #magic:J
    .end local p4           #c:Landroid/database/Cursor;
    .local p3, magic:J
    goto/16 :goto_be

    .line 483
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_2a1
    move-exception p3

    move-object/from16 p6, p3

    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    move-object/from16 p3, v15

    .line 484
    .end local v15           #c0:Landroid/database/Cursor;
    .local p3, c0:Landroid/database/Cursor;
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    :goto_2a8
    :try_start_2a8
    const-string p7, "MediaStore"

    .end local p7           #baseUri:Landroid/net/Uri;
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b1
    .catchall {:try_start_2a8 .. :try_end_2b1} :catchall_7e9

    .line 486
    if-eqz p3, :cond_883

    .line 487
    :try_start_2b3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_2b6
    .catchall {:try_start_2b3 .. :try_end_2b6} :catchall_4d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b3 .. :try_end_2b6} :catch_769
    .catch Ljava/io/FileNotFoundException; {:try_start_2b3 .. :try_end_2b6} :catch_686
    .catch Ljava/io/IOException; {:try_start_2b3 .. :try_end_2b6} :catch_5b8

    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_1ef

    .line 486
    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .local p7, baseUri:Landroid/net/Uri;
    :catchall_2bd
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v19

    .end local v19           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v15

    .end local v6           #uri:Landroid/net/Uri;
    .end local v15           #c0:Landroid/database/Cursor;
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    :goto_2c4
    if-eqz p0, :cond_2c9

    .line 487
    :try_start_2c6
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_2c9
    throw p3
    :try_end_2ca
    .catchall {:try_start_2c6 .. :try_end_2ca} :catchall_4eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c6 .. :try_end_2ca} :catch_2ca
    .catch Ljava/io/FileNotFoundException; {:try_start_2c6 .. :try_end_2ca} :catch_69b
    .catch Ljava/io/IOException; {:try_start_2c6 .. :try_end_2ca} :catch_5cd

    .line 581
    :catch_2ca
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 582
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Landroid/database/sqlite/SQLiteException;
    :goto_2db
    :try_start_2db
    const-string v7, "MediaStore"

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e3
    .catchall {:try_start_2db .. :try_end_2e3} :catchall_58f

    .line 588
    if-eqz p1, :cond_81f

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .local v26, saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    :goto_2f7
    move-object/from16 p1, p2

    .end local p2           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-wide/from16 v24, p4

    .end local p4           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p3, v24

    .end local v24           #magic:J
    .local p3, magic:J
    move-object/from16 v26, v5

    .end local v5           #thumbUri:Landroid/net/Uri;
    .local v26, thumbUri:Landroid/net/Uri;
    move-object/from16 v5, p0

    move/from16 v27, p8

    .end local p8           #saveMini:Z
    .local v27, saveMini:Z
    move-object/from16 p8, v26

    .end local v26           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move-wide/from16 v28, p6

    .end local p6           #mini_thumb_magic:J
    .local v28, mini_thumb_magic:J
    move-wide/from16 p5, v28

    .end local v28           #mini_thumb_magic:J
    .local p5, mini_thumb_magic:J
    move/from16 p7, v27

    .line 590
    .end local v27           #saveMini:Z
    .local p7, saveMini:Z
    goto/16 :goto_be

    .line 503
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_30f
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_314
    :try_start_314
    monitor-exit v10
    :try_end_315
    .catchall {:try_start_314 .. :try_end_315} :catchall_7db

    :try_start_315
    throw p1
    :try_end_316
    .catchall {:try_start_315 .. :try_end_316} :catchall_527
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_315 .. :try_end_316} :catch_316
    .catch Ljava/io/FileNotFoundException; {:try_start_315 .. :try_end_316} :catch_6d8
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_316} :catch_60a

    .line 581
    :catch_316
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto :goto_2db

    .line 508
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :cond_328
    const/16 p3, 0x1

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_36b

    .line 509
    :try_start_330
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_851

    .line 510
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_341
    .catchall {:try_start_330 .. :try_end_341} :catchall_53b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_330 .. :try_end_341} :catch_388
    .catch Ljava/io/FileNotFoundException; {:try_start_330 .. :try_end_341} :catch_6eb
    .catch Ljava/io/IOException; {:try_start_330 .. :try_end_341} :catch_61d

    move-result-object p3

    .line 513
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v5, 0x0

    cmp-long p6, v19, v5

    if-nez p6, :cond_843

    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    if-nez p3, :cond_843

    .line 518
    const/16 p6, 0x0

    :try_start_34c
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 519
    .end local v6           #uri:Landroid/net/Uri;
    .local v5, thumbId:J
    move-object/from16 v0, p7

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_35a
    .catchall {:try_start_34c .. :try_end_35a} :catchall_550
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34c .. :try_end_35a} :catch_7a8
    .catch Ljava/io/FileNotFoundException; {:try_start_34c .. :try_end_35a} :catch_700
    .catch Ljava/io/IOException; {:try_start_34c .. :try_end_35a} :catch_632

    move-result-object p7

    .line 520
    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p7, thumbUri:Landroid/net/Uri;
    const/16 p6, 0x1

    .end local v21           #saveMini:Z
    .local p6, saveMini:Z
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-wide/from16 v5, v17

    .end local v17           #magic:J
    .local v5, magic:J
    move-object/from16 v10, p7

    .end local p7           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, p6

    .end local p6           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-object/from16 p7, v16

    .line 521
    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_248

    .line 526
    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_36b
    :try_start_36b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #cr:Landroid/content/ContentResolver;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #origId:J
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported kind: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_388
    .catchall {:try_start_36b .. :try_end_388} :catchall_53b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36b .. :try_end_388} :catch_388
    .catch Ljava/io/FileNotFoundException; {:try_start_36b .. :try_end_388} :catch_6eb
    .catch Ljava/io/IOException; {:try_start_36b .. :try_end_388} :catch_61d

    .line 581
    :catch_388
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2db

    .line 557
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :cond_39d
    if-eqz p8, :cond_3bb

    .line 558
    :try_start_39f
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_3a6
    .catchall {:try_start_39f .. :try_end_3a6} :catchall_565
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39f .. :try_end_3a6} :catch_7bf
    .catch Ljava/io/FileNotFoundException; {:try_start_39f .. :try_end_3a6} :catch_717
    .catch Ljava/io/IOException; {:try_start_39f .. :try_end_3a6} :catch_649

    move-result-object p0

    .line 588
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .end local p5           #kind:I
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_3a7
    if-eqz p4, :cond_830

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_2f7

    .line 560
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_3bb
    :try_start_3bb
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_3c2
    .catchall {:try_start_3bb .. :try_end_3c2} :catchall_565
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3bb .. :try_end_3c2} :catch_7bf
    .catch Ljava/io/FileNotFoundException; {:try_start_3bb .. :try_end_3c2} :catch_717
    .catch Ljava/io/IOException; {:try_start_3bb .. :try_end_3c2} :catch_649

    move-result-object p1

    .line 561
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3f7

    .line 562
    if-eqz v9, :cond_3f7

    .line 563
    :try_start_3c7
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 564
    .local p2, thumbOut:Ljava/io/OutputStream;
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/16 p3, 0x55

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 565
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/FileOutputStream;

    move/from16 p0, v0
    :try_end_3e3
    .catchall {:try_start_3c7 .. :try_end_3e3} :catchall_579
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c7 .. :try_end_3e3} :catch_409
    .catch Ljava/io/FileNotFoundException; {:try_start_3c7 .. :try_end_3e3} :catch_72c
    .catch Ljava/io/IOException; {:try_start_3c7 .. :try_end_3e3} :catch_65e

    if-eqz p0, :cond_3f2

    .line 567
    :try_start_3e5
    move-object/from16 v0, p2

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 p3, v0

    invoke-virtual/range {p3 .. p3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3f2
    .catchall {:try_start_3e5 .. :try_end_3f2} :catchall_579
    .catch Ljava/lang/Throwable; {:try_start_3e5 .. :try_end_3f2} :catch_3fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e5 .. :try_end_3f2} :catch_409
    .catch Ljava/io/FileNotFoundException; {:try_start_3e5 .. :try_end_3f2} :catch_72c
    .catch Ljava/io/IOException; {:try_start_3e5 .. :try_end_3f2} :catch_65e

    .line 572
    .end local p5           #kind:I
    :cond_3f2
    :goto_3f2
    if-eqz p2, :cond_3f7

    .line 573
    :try_start_3f4
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    .end local p2           #thumbOut:Ljava/io/OutputStream;
    :cond_3f7
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_3a7

    .line 568
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p1       #bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #thumbOut:Ljava/io/OutputStream;
    .restart local p5       #kind:I
    :catch_3fa
    move-exception p0

    .line 569
    .local p0, t:Ljava/lang/Throwable;
    const-string p3, "MediaStore"

    const-string p5, "Unable to sync thumbnail file"

    .end local p5           #kind:I
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_408
    .catchall {:try_start_3f4 .. :try_end_408} :catchall_579
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f4 .. :try_end_408} :catch_409
    .catch Ljava/io/FileNotFoundException; {:try_start_3f4 .. :try_end_408} :catch_72c
    .catch Ljava/io/IOException; {:try_start_3f4 .. :try_end_408} :catch_65e

    goto :goto_3f2

    .line 581
    .end local p0           #t:Ljava/lang/Throwable;
    .end local p2           #thumbOut:Ljava/io/OutputStream;
    :catch_409
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_2db

    .line 583
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p4           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v13, c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_41c
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p4       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 584
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Ljava/io/FileNotFoundException;
    :goto_42f
    :try_start_42f
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #ex:Ljava/io/FileNotFoundException;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44d
    .catchall {:try_start_42f .. :try_end_44d} :catchall_58f

    .line 588
    if-eqz p1, :cond_81f

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .local v26, saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_2f7

    .line 585
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p4           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_463
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 586
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Ljava/io/IOException;
    :goto_476
    :try_start_476
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #ex:Ljava/io/IOException;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_494
    .catchall {:try_start_476 .. :try_end_494} :catchall_58f

    .line 588
    if-eqz p1, :cond_81f

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .restart local v26       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .restart local v27       #mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_2f7

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p4           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_4aa
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .restart local p4       #magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v6           #uri:Landroid/net/Uri;
    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    :goto_4bd
    if-eqz p1, :cond_4c2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_4c2
    throw v6

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, filePath:Ljava/lang/String;
    .restart local p7       #baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_4c3
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p3, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v6

    .end local v6           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move-object/from16 v6, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4bd

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .local p8, isVideo:Z
    :catchall_4d7
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v6

    .end local v6           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 v6, p0

    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4bd

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p6           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p8, isVideo:Z
    :catchall_4eb
    move-exception p3

    move-object/from16 v6, p3

    move-wide/from16 p6, p1

    .end local p1           #mini_thumb_magic:J
    .restart local p6       #mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4bd

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_4ff
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4bd

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_513
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v6

    .end local v6           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-object/from16 v6, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4bd

    .end local v5           #thumbUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .restart local v6       #magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_527
    move-exception p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v5       #thumbUri:Landroid/net/Uri;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-object/from16 v24, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local v24, c:Landroid/database/Cursor;
    move-wide/from16 p4, v6

    .end local v6           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 v6, p1

    move-object/from16 p1, v24

    .end local v24           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_4bd

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_53b
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_4bd

    .end local v5           #thumbUri:Landroid/net/Uri;
    .end local v6           #uri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p6           #mini_thumb_magic:J
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .restart local p7       #baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_550
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .restart local p6       #mini_thumb_magic:J
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v5       #thumbUri:Landroid/net/Uri;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_4bd

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_565
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    goto/16 :goto_4bd

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_579
    move-exception p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 v24, v5

    .end local v5           #magic:J
    .local v24, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, p0

    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    goto/16 :goto_4bd

    .end local p3           #filePath:Ljava/lang/String;
    .end local p6           #mini_thumb_magic:J
    .end local p8           #saveMini:Z
    .local v5, saveMini:Z
    .local v6, thumbUri:Landroid/net/Uri;
    .local p4, filePath:Ljava/lang/String;
    .local p5, magic:J
    .local p7, mini_thumb_magic:J
    :catchall_58f
    move-exception p3

    move-object/from16 v24, p3

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 v25, p7

    .end local p7           #mini_thumb_magic:J
    .local v25, mini_thumb_magic:J
    move/from16 p8, v5

    .end local v5           #saveMini:Z
    .restart local p8       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, v24

    move-wide/from16 v27, p5

    .end local p5           #magic:J
    .local v27, magic:J
    move-wide/from16 p4, v27

    .end local v27           #magic:J
    .local p4, magic:J
    move-wide/from16 p6, v25

    .end local v25           #mini_thumb_magic:J
    .restart local p6       #mini_thumb_magic:J
    goto/16 :goto_4bd

    .line 585
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_5a3
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_476

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_5b8
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_476

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p8       #isVideo:Z
    :catch_5cd
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_476

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_5e0
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_476

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_5f5
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_476

    .end local v5           #saveMini:Z
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_60a
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_476

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_61d
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_476

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_632
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_476

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_649
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_476

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p5           #magic:J
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_65e
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .restart local p5       #magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_476

    .line 583
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_671
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_42f

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_686
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_42f

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p8       #isVideo:Z
    :catch_69b
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_42f

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_6ae
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_42f

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_6c3
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_42f

    .end local v5           #saveMini:Z
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_6d8
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_42f

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_6eb
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_42f

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_700
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_42f

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_717
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_42f

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p5           #magic:J
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_72c
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .restart local p5       #magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_42f

    .line 581
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p4           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_73f
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p4       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2db

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_754
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2db

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_769
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2db

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_77e
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2db

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_793
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_2db

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_7a8
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_2db

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_7bf
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_2db

    .line 503
    .end local v5           #saveMini:Z
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catchall_7d4
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_314

    .end local p1           #origId:J
    :catchall_7db
    move-exception p1

    goto/16 :goto_314

    .line 486
    .end local p6           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p7, baseUri:Landroid/net/Uri;
    :catchall_7de
    move-exception p0

    move-wide/from16 p1, v19

    .end local v19           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 v24, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local v24, c0:Landroid/database/Cursor;
    move-object/from16 p3, p0

    move-object/from16 p0, v24

    .end local v24           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_2c4

    .end local p7           #baseUri:Landroid/net/Uri;
    .local v6, mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    :catchall_7e9
    move-exception p0

    move-wide/from16 p1, v6

    .end local v6           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 v24, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local v24       #c0:Landroid/database/Cursor;
    move-object/from16 p3, p0

    move-object/from16 p0, v24

    .end local v24           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_2c4

    .line 483
    .local v6, uri:Landroid/net/Uri;
    .restart local v19       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .restart local p7       #baseUri:Landroid/net/Uri;
    :catch_7f4
    move-exception p6

    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    goto/16 :goto_2a8

    :catch_7f9
    move-exception p6

    goto/16 :goto_2a8

    .line 436
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v7, c:Landroid/database/Cursor;
    .local v13, bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v19       #mini_thumb_magic:J
    .local p3, groupId:J
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    :catchall_7fc
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v7

    .end local v7           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_19e

    .line 422
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .end local p3           #groupId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :catchall_803
    move-exception p1

    goto/16 :goto_e5

    .line 395
    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .local v5, c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p3       #groupId:J
    :catchall_806
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v14

    .end local v14           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_da

    .restart local v5       #c0:Landroid/database/Cursor;
    .local v8, mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :catchall_80f
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v8

    .end local v8           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_da

    .line 392
    .restart local v5       #c0:Landroid/database/Cursor;
    .restart local v14       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :catch_818
    move-exception v7

    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    goto/16 :goto_c3

    :catch_81c
    move-exception v7

    goto/16 :goto_c3

    .end local v8           #mini_thumb_magic:J
    .end local v12           #filePath:Ljava/lang/String;
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #magic:J
    .end local v21           #saveMini:Z
    .end local v23           #thumbUri:Landroid/net/Uri;
    .end local p3           #groupId:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .end local p8           #isVideo:Z
    .local v5, saveMini:Z
    .local v6, thumbUri:Landroid/net/Uri;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p1, c:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    .local p4, filePath:Ljava/lang/String;
    .local p5, magic:J
    .local p7, mini_thumb_magic:J
    :cond_81f
    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .local v24, magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .restart local v26       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_2f7

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, magic:J
    .local v7, mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_830
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_2f7

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_83f
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_3a7

    .end local v5           #magic:J
    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_843
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-wide/from16 v5, v17

    .end local v6           #uri:Landroid/net/Uri;
    .end local v17           #magic:J
    .restart local v5       #magic:J
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_248

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_851
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v5, v17

    .end local v6           #uri:Landroid/net/Uri;
    .end local v17           #magic:J
    .local v5, magic:J
    goto/16 :goto_248

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    :cond_861
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_23b

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_865
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v24, v8

    .end local v8           #mini_thumb_magic:J
    .local v24, mini_thumb_magic:J
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-wide/from16 v26, v6

    .end local v6           #magic:J
    .local v26, magic:J
    move-wide/from16 v5, v26

    .end local v26           #magic:J
    .local v5, magic:J
    move-wide/from16 v7, v24

    .end local v24           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    goto/16 :goto_248

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    :cond_875
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v5, v17

    .end local v17           #magic:J
    .local v5, magic:J
    move-wide/from16 v24, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v24       #mini_thumb_magic:J
    move-wide/from16 v7, v24

    .end local v24           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    goto/16 :goto_248

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p7           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p3, c0:Landroid/database/Cursor;
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    :cond_883
    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p7       #filePath:Ljava/lang/String;
    goto/16 :goto_1ef

    .restart local v6       #mini_thumb_magic:J
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_88a
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    goto/16 :goto_1ef

    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_891
    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    move-object/from16 p6, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p6, filePath:Ljava/lang/String;
    goto/16 :goto_1e5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .local p3, groupId:J
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    :cond_897
    move-object v5, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_147

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local p0           #cr:Landroid/content/ContentResolver;
    .end local p3           #groupId:J
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    :cond_89a
    move-object/from16 p0, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_af

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .local v5, c0:Landroid/database/Cursor;
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    .local v8, mini_thumb_magic:J
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #groupId:J
    :cond_89e
    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto/16 :goto_66

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v5       #c0:Landroid/database/Cursor;
    .local v7, filePath:Ljava/lang/String;
    .restart local v8       #mini_thumb_magic:J
    :cond_8a5
    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v7

    .end local v7           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto/16 :goto_66

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v5       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v14       #mini_thumb_magic:J
    :cond_8ac
    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    move-object v7, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    goto/16 :goto_5c
.end method
