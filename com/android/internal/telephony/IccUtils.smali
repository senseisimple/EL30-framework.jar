.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MccMncConvert(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "s"

    .prologue
    const/4 v4, 0x2

    const-string v5, "IccUtils"

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 619
    .local v1, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ddd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_45

    .line 625
    :cond_3c
    const-string v2, "IccUtils"

    const-string v2, "[MccMncConvert] MCC Value is invalid(\'fff\')!"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v2, 0x0

    .line 657
    :goto_44
    return-object v2

    .line 629
    :cond_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 633
    .local v0, MCC:I
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_6d

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_9b

    .line 639
    :cond_6d
    const/16 v2, 0x136

    if-lt v0, v2, :cond_7a

    const/16 v2, 0x13c

    if-gt v0, v2, :cond_7a

    .line 642
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_7a
    :goto_7a
    const-string v2, "IccUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MccMncConvert] Convert Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    .line 652
    :cond_9b
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7a
.end method

.method public static SSbcdToString([BII)Ljava/lang/String;
    .registers 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, p2, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    .local v1, ret:Ljava/lang/StringBuilder;
    aget-byte v4, p0, p1

    and-int/lit16 v2, v4, 0xff

    .line 106
    .local v2, ton:I
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_16
    add-int v4, p1, p2

    if-ge v0, v4, :cond_5d

    .line 109
    aget-byte v4, p0, v0

    and-int/lit8 v3, v4, 0xf

    .line 110
    .local v3, v:I
    if-ne v3, v7, :cond_55

    .line 111
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    const/16 v4, 0x91

    if-ne v2, v4, :cond_35

    add-int/lit8 v4, p1, 0x1

    sub-int v4, v0, v4

    if-le v4, v5, :cond_35

    .line 113
    const/4 v2, 0x0

    .line 114
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_35
    :goto_35
    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 125
    if-ne v3, v7, :cond_69

    .line 126
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    const/16 v4, 0x91

    if-ne v2, v4, :cond_52

    add-int/lit8 v4, p1, 0x1

    sub-int v4, v0, v4

    if-le v4, v5, :cond_52

    .line 128
    const/4 v2, 0x0

    .line 129
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 117
    :cond_55
    if-ne v3, v8, :cond_5b

    .line 118
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 120
    :cond_5b
    if-le v3, v6, :cond_62

    .line 141
    .end local v3           #v:I
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 121
    .restart local v3       #v:I
    :cond_62
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 132
    :cond_69
    if-ne v3, v8, :cond_6f

    .line 133
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 135
    :cond_6f
    if-gt v3, v6, :cond_5d

    .line 136
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52
.end method

.method public static SetupCallbcdToString([BII)Ljava/lang/String;
    .registers 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, p2, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .local v1, ret:Ljava/lang/StringBuilder;
    aget-byte v4, p0, p1

    and-int/lit16 v2, v4, 0xff

    .line 67
    .local v2, ton:I
    const/16 v4, 0x91

    if-ne v2, v4, :cond_1e

    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_1e
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_20
    add-int v4, p1, p2

    if-ge v0, v4, :cond_4f

    .line 72
    aget-byte v4, p0, v0

    and-int/lit8 v3, v4, 0xf

    .line 73
    .local v3, v:I
    if-ne v3, v6, :cond_3f

    .line 74
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :goto_2f
    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 85
    if-ne v3, v6, :cond_5b

    .line 86
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 75
    :cond_3f
    if-ne v3, v7, :cond_45

    .line 76
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 77
    :cond_45
    if-ne v3, v8, :cond_4d

    .line 78
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 80
    :cond_4d
    if-le v3, v5, :cond_54

    .line 96
    .end local v3           #v:I
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 81
    .restart local v3       #v:I
    :cond_54
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 87
    :cond_5b
    if-ne v3, v7, :cond_61

    .line 88
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 89
    :cond_61
    if-ne v3, v8, :cond_69

    .line 90
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 92
    :cond_69
    if-gt v3, v5, :cond_4f

    .line 93
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 234
    const/4 v0, 0x1

    if-lt p2, v0, :cond_42

    .line 235
    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_42

    .line 236
    const/4 v0, 0x1

    sub-int v0, p2, v0

    div-int/lit8 v2, v0, 0x2

    .line 237
    .local v2, ucslen:I
    const/4 v1, 0x0

    .line 240
    .local v1, ret:Ljava/lang/String;
    :try_start_f
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v2, v2, 0x2

    const-string/jumbo v4, "utf-16be"

    .end local v2           #ucslen:I
    invoke-direct {v0, p0, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1b} :catch_32

    .line 246
    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    :goto_1b
    if-eqz v0, :cond_42

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    .line 250
    .end local p2
    .local p0, ucslen:I
    :goto_21
    if-lez p0, :cond_3c

    const/4 p2, 0x1

    sub-int p2, p0, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const v1, 0xffff

    if-ne p2, v1, :cond_3c

    .line 251
    add-int/lit8 p0, p0, -0x1

    goto :goto_21

    .line 241
    .end local v0           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    .local p0, data:[B
    .restart local p2
    :catch_32
    move-exception v0

    .line 242
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_1b

    .line 253
    .end local p2
    .local p0, ucslen:I
    :cond_3c
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 309
    .end local v0           #ret:Ljava/lang/String;
    .end local p0           #ucslen:I
    :goto_41
    return-object p0

    .line 258
    .local p0, data:[B
    .restart local p2
    :cond_42
    const/4 v1, 0x0

    .line 259
    .local v1, isucs2:Z
    const/4 v0, 0x0

    .line 260
    .local v0, base:C
    const/4 v2, 0x0

    .line 262
    .local v2, len:I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_91

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_91

    .line 263
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .line 264
    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x3

    sub-int v1, p2, v1

    if-le v0, v1, :cond_d8

    .line 265
    .end local v1           #isucs2:Z
    const/4 v0, 0x3

    sub-int v0, p2, v0

    move v2, v0

    .line 267
    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_5d
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x7

    int-to-char v0, v0

    .line 268
    .local v0, base:C
    add-int/lit8 p1, p1, 0x3

    .line 269
    const/4 v1, 0x1

    .line 281
    .restart local v1       #isucs2:Z
    :cond_69
    :goto_69
    if-eqz v1, :cond_ce

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, ret:Ljava/lang/StringBuilder;
    move p2, v2

    .line 284
    .end local v1           #isucs2:Z
    .end local v2           #len:I
    .local p2, len:I
    :goto_71
    if-lez p2, :cond_c8

    .line 287
    aget-byte v1, p0, p1

    if-gez v1, :cond_d4

    .line 288
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 p1, p1, 0x1

    .line 290
    add-int/lit8 p2, p2, -0x1

    move v1, p2

    .line 295
    .end local p2           #len:I
    .local v1, len:I
    :goto_85
    const/4 p2, 0x0

    .line 296
    .local p2, count:I
    :goto_86
    if-ge p2, v1, :cond_bd

    add-int v2, p1, p2

    aget-byte v2, p0, v2

    if-ltz v2, :cond_bd

    .line 297
    add-int/lit8 p2, p2, 0x1

    goto :goto_86

    .line 270
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_91
    const/4 v3, 0x4

    if-lt p2, v3, :cond_69

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_69

    .line 271
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .line 272
    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x4

    sub-int v1, p2, v1

    if-le v0, v1, :cond_d6

    .line 273
    .end local v1           #isucs2:Z
    const/4 v0, 0x4

    sub-int v0, p2, v0

    move v2, v0

    .line 275
    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_a9
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    .line 277
    .local v0, base:C
    add-int/lit8 p1, p1, 0x4

    .line 278
    const/4 v1, 0x1

    .restart local v1       #isucs2:Z
    goto :goto_69

    .line 299
    .end local v2           #len:I
    .local v1, len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .local p2, count:I
    :cond_bd
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/2addr p1, p2

    .line 303
    sub-int p2, v1, p2

    .line 304
    .end local v1           #len:I
    .local p2, len:I
    goto :goto_71

    .line 306
    :cond_c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_41

    .line 309
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_ce
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_41

    .end local v1           #isucs2:Z
    .end local v2           #len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .local p2, len:I
    :cond_d4
    move v1, p2

    .end local p2           #len:I
    .local v1, len:I
    goto :goto_85

    .end local v1           #len:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v0, len:I
    .local p2, length:I
    :cond_d6
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_a9

    .end local v2           #len:I
    .restart local v0       #len:I
    :cond_d8
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_5d
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_a
    add-int v3, p1, p2

    if-ge v0, v3, :cond_14

    .line 49
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 50
    .local v2, v:I
    if-le v2, v4, :cond_19

    .line 58
    .end local v2           #v:I
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 51
    .restart local v2       #v:I
    :cond_19
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 54
    if-gt v2, v4, :cond_14

    .line 55
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private static bitToRGB(I)I
    .registers 2
    .parameter "bit"

    .prologue
    .line 485
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 486
    const/4 v0, -0x1

    .line 488
    :goto_4
    return v0

    :cond_5
    const/high16 v0, -0x100

    goto :goto_4
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .registers 5
    .parameter "a"

    .prologue
    const-string v3, "0123456789abcdef"

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v1, ret:Ljava/lang/StringBuilder;
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 392
    .local v0, b:I
    const-string v2, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    and-int/lit8 v0, p0, 0xf

    .line 396
    const-string v2, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 6
    .parameter "bytes"

    .prologue
    const-string v4, "0123456789abcdef"

    .line 357
    if-nez p0, :cond_6

    const/4 v3, 0x0

    .line 373
    :goto_5
    return-object v3

    .line 359
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_31

    .line 364
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 366
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 370
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 373
    .end local v0           #b:I
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5
.end method

.method public static cdmaBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 186
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_d

    .line 187
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 190
    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 191
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 194
    :cond_16
    return v0
.end method

.method private static getCLUT([BII)[I
    .registers 12
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 581
    if-nez p0, :cond_4

    .line 582
    const/4 v7, 0x0

    .line 596
    :goto_3
    return-object v7

    .line 585
    :cond_4
    new-array v4, p2, [I

    .line 586
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 587
    .local v3, endIndex:I
    move v5, p1

    .line 588
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 589
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 591
    .local v0, alpha:I
    :goto_e
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 595
    if-lt v6, v3, :cond_2f

    move-object v7, v4

    .line 596
    goto :goto_3

    :cond_2f
    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_e
.end method

.method public static gsmBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 164
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_b

    .line 165
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 168
    :cond_b
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 169
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 172
    :cond_16
    return v0
.end method

.method static hexCharToInt(C)I
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 314
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    sub-int v0, p0, v1

    .line 316
    :goto_e
    return v0

    .line 315
    :cond_f
    if-lt p0, v2, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 316
    :cond_1a
    if-lt p0, v3, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 318
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .parameter "s"

    .prologue
    .line 335
    if-nez p0, :cond_4

    const/4 v3, 0x0

    .line 346
    :goto_3
    return-object v3

    .line 337
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 339
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 341
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_2c

    .line 342
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 341
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    :cond_2c
    move-object v3, v1

    .line 346
    goto :goto_3
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .registers 16
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 531
    rem-int v9, v10, p4

    if-eqz v9, :cond_13

    .line 532
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v9

    .line 564
    :goto_12
    return-object v9

    .line 537
    :cond_13
    const/4 v0, 0x1

    .line 538
    .local v0, mask:I
    packed-switch p4, :pswitch_data_4c

    .line 553
    :goto_17
    :pswitch_17
    new-array v2, p2, [I

    .line 554
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 555
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 556
    .end local p1
    .local v8, valueIndex:I
    :goto_1d
    if-ge v3, p2, :cond_48

    .line 557
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 558
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_25
    if-ge v6, v5, :cond_45

    .line 559
    sub-int v9, v5, v6

    const/4 v10, 0x1

    sub-int v1, v9, v10

    .line 560
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 558
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_25

    .line 540
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_3b
    const/4 v0, 0x1

    .line 541
    goto :goto_17

    .line 543
    :pswitch_3d
    const/4 v0, 0x3

    .line 544
    goto :goto_17

    .line 546
    :pswitch_3f
    const/16 v0, 0xf

    .line 547
    goto :goto_17

    .line 549
    :pswitch_42
    const/16 v0, 0xff

    goto :goto_17

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_45
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 563
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_1d

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_48
    move p1, v8

    .end local v8           #valueIndex:I
    .restart local p1
    move-object v9, v2

    .line 564
    goto :goto_12

    .line 538
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3d
        :pswitch_17
        :pswitch_3f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_42
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .registers 8
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 569
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_12

    .line 570
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v1

    .line 577
    :goto_11
    return-object v1

    .line 575
    :cond_12
    new-array v0, p2, [I

    .local v0, resultArray:[I
    move-object v1, v0

    .line 577
    goto :goto_11
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .registers 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v6, 0x1

    .line 411
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_b

    if-ge p2, v6, :cond_e

    .line 412
    :cond_b
    const-string v4, ""

    .line 449
    :goto_d
    return-object v4

    .line 415
    :cond_e
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_4c

    .line 436
    const-string v2, ""

    .line 444
    .local v2, ret:Ljava/lang/String;
    :goto_19
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1f

    :cond_1f
    move-object v4, v2

    .line 449
    goto :goto_d

    .line 419
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_21
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 420
    .local v3, unusedBits:I
    sub-int v4, p2, v6

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 421
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 422
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_19

    .line 426
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_33
    :try_start_33
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    sub-int v5, p2, v6

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_3f} :catch_40

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_19

    .line 428
    .end local v2           #ret:Ljava/lang/String;
    :catch_40
    move-exception v4

    move-object v1, v4

    .line 429
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 430
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 415
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_33
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "data"
    .parameter "length"

    .prologue
    .line 459
    const/4 v8, 0x0

    .line 460
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 461
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 462
    .local v3, height:I
    mul-int v4, v10, v3

    .line 464
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 466
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 467
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 468
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 469
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_16
    if-ge v6, v4, :cond_33

    .line 471
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_44

    .line 472
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 473
    const/4 v0, 0x7

    .line 475
    :goto_21
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_16

    .line 478
    :cond_33
    if-eq v6, v4, :cond_3d

    .line 479
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_3d
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_44
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_21
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    const/4 v11, 0x1

    .line 502
    const/4 v6, 0x0

    .line 503
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 504
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 505
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 506
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 507
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 509
    .local v1, clutOffset:I
    const/4 v9, 0x6

    sub-int/2addr p1, v9

    .line 511
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 512
    .local v2, colorIndexArray:[I
    if-ne v11, p2, :cond_37

    .line 513
    sub-int v9, v3, v11

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 516
    :cond_37
    const/4 v5, 0x0

    .line 517
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_4a

    .line 518
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 525
    :goto_43
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 521
    :cond_4a
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_43
.end method
