.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern; = null

.field static final FILE_BASE:Ljava/lang/String; = "file://"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 485
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "inQuery"
    .parameter "template"
    .parameter "queryPlaceHolder"

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, placeHolderIndex:I
    if-gez v2, :cond_9

    move-object v4, v5

    .line 107
    :goto_8
    return-object v4

    .line 94
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :try_start_16
    const-string/jumbo v4, "utf-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, query:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_20} :catch_31

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 100
    .end local v3           #query:Ljava/lang/String;
    :catch_31
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    move-object v4, v5

    .line 101
    goto :goto_8
.end method

.method public static decode([B)[B
    .registers 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 111
    array-length v6, p0

    if-nez v6, :cond_7

    .line 112
    new-array v6, v8, [B

    .line 134
    :goto_6
    return-object v6

    .line 116
    :cond_7
    array-length v6, p0

    new-array v5, v6, [B

    .line 118
    .local v5, tempData:[B
    const/4 v3, 0x0

    .line 119
    .local v3, tempCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v6, p0

    if-ge v1, v6, :cond_40

    .line 120
    aget-byte v0, p0, v1

    .line 121
    .local v0, b:B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_30

    .line 122
    array-length v6, p0

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_38

    .line 123
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v0, v6

    .line 125
    add-int/lit8 v1, v1, 0x2

    .line 130
    :cond_30
    add-int/lit8 v4, v3, 0x1

    .end local v3           #tempCount:I
    .local v4, tempCount:I
    aput-byte v0, v5, v3

    .line 119
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #tempCount:I
    .restart local v3       #tempCount:I
    goto :goto_c

    .line 127
    :cond_38
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid format"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    .end local v0           #b:B
    :cond_40
    new-array v2, v3, [B

    .line 133
    .local v2, retData:[B
    invoke-static {v5, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v2

    .line 134
    goto :goto_6
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    const/16 v11, 0x2f

    const/16 v9, 0x2e

    const/4 v10, 0x0

    const-string v12, "."

    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, filename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 308
    .local v2, extension:Ljava/lang/String;
    if-nez v3, :cond_23

    if-eqz p1, :cond_23

    .line 309
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    if-eqz v3, :cond_23

    .line 312
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 313
    .local v4, index:I
    if-lez v4, :cond_23

    .line 314
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    .end local v4           #index:I
    :cond_23
    if-nez v3, :cond_4b

    .line 321
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, decodedUrl:Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 323
    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 325
    .local v6, queryIndex:I
    if-lez v6, :cond_37

    .line 326
    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_37
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 329
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 330
    .restart local v4       #index:I
    if-lez v4, :cond_4b

    .line 331
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v4           #index:I
    .end local v6           #queryIndex:I
    :cond_4b
    if-nez v3, :cond_4f

    .line 339
    const-string v3, "downloadfile"

    .line 344
    :cond_4f
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 345
    .local v1, dotIndex:I
    if-gez v1, :cond_a8

    .line 346
    if-eqz p2, :cond_74

    .line 347
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    if-eqz v2, :cond_74

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    :cond_74
    if-nez v2, :cond_90

    .line 353
    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 354
    const-string/jumbo v8, "text/html"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 355
    const-string v2, ".html"

    .line 383
    :cond_90
    :goto_90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 357
    :cond_a2
    const-string v2, ".txt"

    goto :goto_90

    .line 360
    :cond_a5
    const-string v2, ".bin"

    goto :goto_90

    .line 364
    :cond_a8
    if-eqz p2, :cond_e1

    .line 367
    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 368
    .local v5, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, typeFromExt:Ljava/lang/String;
    if-eqz v7, :cond_e1

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e1

    .line 371
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    if-eqz v2, :cond_e1

    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .end local v5           #lastDotIndex:I
    .end local v7           #typeFromExt:Ljava/lang/String;
    :cond_e1
    if-nez v2, :cond_e7

    .line 378
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    :cond_e7
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_90
.end method

.method public static final guessFileNameEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    const/16 v11, 0x2f

    const/16 v9, 0x2e

    const/4 v10, 0x0

    const-string v12, "."

    .line 402
    const/4 v3, 0x0

    .line 403
    .local v3, filename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 406
    .local v2, extension:Ljava/lang/String;
    if-nez v3, :cond_1f

    if-eqz p1, :cond_1f

    .line 407
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    if-eqz v3, :cond_1f

    .line 409
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 410
    .local v4, index:I
    if-lez v4, :cond_1f

    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 417
    .end local v4           #index:I
    :cond_1f
    if-nez v3, :cond_47

    .line 418
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, decodedUrl:Ljava/lang/String;
    if-eqz v0, :cond_47

    .line 420
    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 422
    .local v6, queryIndex:I
    if-lez v6, :cond_33

    .line 423
    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_33
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 426
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 427
    .restart local v4       #index:I
    if-lez v4, :cond_47

    .line 428
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v4           #index:I
    .end local v6           #queryIndex:I
    :cond_47
    if-nez v3, :cond_4b

    .line 436
    const-string v3, "downloadfile"

    .line 441
    :cond_4b
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 442
    .local v1, dotIndex:I
    if-gez v1, :cond_a4

    .line 443
    if-eqz p2, :cond_70

    .line 444
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    if-eqz v2, :cond_70

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_70
    if-nez v2, :cond_8c

    .line 450
    if-eqz p2, :cond_a1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 451
    const-string/jumbo v8, "text/html"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 452
    const-string v2, ".html"

    .line 480
    :cond_8c
    :goto_8c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 454
    :cond_9e
    const-string v2, ".txt"

    goto :goto_8c

    .line 457
    :cond_a1
    const-string v2, ".bin"

    goto :goto_8c

    .line 461
    :cond_a4
    if-eqz p2, :cond_df

    .line 464
    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 465
    .local v5, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 467
    .local v7, typeFromExt:Ljava/lang/String;
    if-eqz v7, :cond_df

    if-nez p1, :cond_df

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_df

    .line 468
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_df

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    .end local v5           #lastDotIndex:I
    .end local v7           #typeFromExt:Ljava/lang/String;
    :cond_df
    if-nez v2, :cond_e5

    .line 475
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    :cond_e5
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_8c
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "inUrl"

    .prologue
    const/4 v5, 0x1

    .line 47
    move-object v1, p0

    .line 52
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    move-object v3, p0

    .line 83
    :goto_9
    return-object v3

    .line 53
    :cond_a
    const-string v3, "about:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v3, p0

    goto :goto_9

    .line 55
    :cond_14
    const-string v3, "data:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, p0

    goto :goto_9

    .line 57
    :cond_1e
    const-string v3, "file:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    move-object v3, p0

    goto :goto_9

    .line 59
    :cond_28
    const-string/jumbo v3, "rtsp:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    move-object v3, p0

    goto :goto_9

    .line 61
    :cond_33
    const-string v3, "javascript:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move-object v3, p0

    goto :goto_9

    .line 64
    :cond_3d
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_4f

    .line 65
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 69
    :cond_4f
    :try_start_4f
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/net/ParseException; {:try_start_4f .. :try_end_54} :catch_82

    .line 79
    .local v2, webAddress:Landroid/net/WebAddress;
    iget-object v3, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7d

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 83
    :cond_7d
    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 70
    .end local v2           #webAddress:Landroid/net/WebAddress;
    :catch_82
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/net/ParseException;
    move-object v3, v1

    .line 75
    goto :goto_9
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 209
    if-eqz p0, :cond_c

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isAssetUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 175
    if-eqz p0, :cond_c

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isContentUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 258
    if-eqz p0, :cond_c

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    if-eqz p0, :cond_c

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isDataUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 216
    if-eqz p0, :cond_c

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isFileUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 200
    if-eqz p0, :cond_1c

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .registers 4
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 230
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_19

    const/4 v0, 0x7

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    move v0, v2

    goto :goto_18
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .registers 4
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 239
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1a

    const/16 v0, 0x8

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    move v0, v2

    goto :goto_19
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 223
    if-eqz p0, :cond_c

    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 248
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 251
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    move v0, v1

    goto :goto_a
.end method

.method public static isResourceUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 183
    if-eqz p0, :cond_c

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 265
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 269
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3b
    const/4 v0, 0x1

    goto :goto_a

    :cond_3d
    move v0, v1

    goto :goto_a
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "contentDisposition"

    .prologue
    .line 500
    :try_start_0
    sget-object v1, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 501
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 502
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 507
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_11
    return-object v1

    .line 504
    :catch_12
    move-exception v1

    .line 507
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static parseHex(B)I
    .registers 5
    .parameter "b"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 164
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    sub-int v0, p0, v1

    .line 166
    :goto_e
    return v0

    .line 165
    :cond_f
    if-lt p0, v2, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 166
    :cond_1a
    if-lt p0, v3, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 168
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 283
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 284
    .local v0, anchorIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 285
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_e
    return-object v1

    :cond_f
    move-object v1, p0

    goto :goto_e
.end method

.method static verifyURLEncoding(Ljava/lang/String;)Z
    .registers 7
    .parameter "url"

    .prologue
    const/16 v5, 0x25

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 142
    .local v0, count:I
    if-nez v0, :cond_b

    move v3, v4

    .line 160
    :goto_a
    return v3

    .line 146
    :cond_b
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 147
    .local v2, index:I
    :goto_f
    if-ltz v2, :cond_39

    if-ge v2, v0, :cond_39

    .line 148
    const/4 v3, 0x2

    sub-int v3, v0, v3

    if-ge v2, v3, :cond_37

    .line 150
    add-int/lit8 v2, v2, 0x1

    :try_start_1a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 151
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_2c} :catch_33

    .line 158
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_f

    .line 152
    :catch_33
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/IllegalArgumentException;
    move v3, v4

    .line 153
    goto :goto_a

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_37
    move v3, v4

    .line 156
    goto :goto_a

    .line 160
    :cond_39
    const/4 v3, 0x1

    goto :goto_a
.end method
