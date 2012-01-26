.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$Adapter2D;,
        Landroid/renderscript/Allocation$Adapter1D;
    }
.end annotation


# static fields
.field private static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mType:Landroid/renderscript/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 244
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 246
    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 247
    return-void
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V
    .registers 4
    .parameter "id"
    .parameter "rs"
    .parameter "t"

    .prologue
    .line 38
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 39
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 40
    iput-object p3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 41
    return-void
.end method

.method public static createBitmapRef(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 7
    .parameter "rs"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 317
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Type;

    move-result-object v2

    .line 319
    .local v2, t:Landroid/renderscript/Type;
    invoke-virtual {v2}, Landroid/renderscript/Type;->getID()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 320
    .local v1, id:I
    if-nez v1, :cond_19

    .line 321
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Load failed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_19
    new-instance v0, Landroid/renderscript/Allocation;

    invoke-direct {v0, v1, p0, v2}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 325
    .local v0, a:Landroid/renderscript/Allocation;
    iput-object p1, v0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 326
    return-object v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .registers 8
    .parameter "rs"
    .parameter "b"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 304
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Type;

    move-result-object v1

    .line 306
    .local v1, t:Landroid/renderscript/Type;
    iget v2, p2, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v2, p3, p1}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(IZLandroid/graphics/Bitmap;)I

    move-result v0

    .line 307
    .local v0, id:I
    if-nez v0, :cond_17

    .line 308
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Load failed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_17
    new-instance v2, Landroid/renderscript/Allocation;

    invoke-direct {v2, v0, p0, v1}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v2
.end method

.method static createFromBitmapBoxed(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .registers 7
    .parameter "rs"
    .parameter "b"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 333
    iget v1, p2, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v1, p3, p1}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmapBoxed(IZLandroid/graphics/Bitmap;)I

    move-result v0

    .line 334
    .local v0, id:I
    if-nez v0, :cond_13

    .line 335
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Load failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_13
    new-instance v1, Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v1
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .registers 13
    .parameter "rs"
    .parameter "res"
    .parameter "id"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 343
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 344
    const/4 v3, 0x0

    .line 346
    .local v3, is:Ljava/io/InputStream;
    :try_start_5
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 347
    .local v4, value:Landroid/util/TypedValue;
    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    .line 349
    move-object v0, v3

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v2

    .line 350
    .local v2, asset:I
    iget v5, p3, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v5, p4, v2}, Landroid/renderscript/RenderScript;->nAllocationCreateFromAssetStream(IZI)I

    move-result v1

    .line 353
    .local v1, allocationId:I
    if-nez v1, :cond_2e

    .line 354
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Load failed."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_26

    .line 357
    .end local v1           #allocationId:I
    .end local v2           #asset:I
    .end local v4           #value:Landroid/util/TypedValue;
    :catch_26
    move-exception v5

    .line 360
    if-eqz v3, :cond_2c

    .line 362
    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_43

    :cond_2c
    :goto_2c
    move-object v5, v7

    .line 369
    :cond_2d
    :goto_2d
    return-object v5

    .line 356
    .restart local v1       #allocationId:I
    .restart local v2       #asset:I
    .restart local v4       #value:Landroid/util/TypedValue;
    :cond_2e
    :try_start_2e
    new-instance v5, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    invoke-direct {v5, v1, p0, v6}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_34} :catch_26

    .line 360
    if-eqz v3, :cond_2d

    .line 362
    :try_start_36
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_2d

    .line 363
    :catch_3a
    move-exception v6

    goto :goto_2d

    .line 360
    .end local v1           #allocationId:I
    .end local v2           #asset:I
    .end local v4           #value:Landroid/util/TypedValue;
    :catchall_3c
    move-exception v5

    if-eqz v3, :cond_42

    .line 362
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_45

    .line 360
    :cond_42
    :goto_42
    throw v5

    .line 363
    :catch_43
    move-exception v5

    goto :goto_2c

    :catch_45
    move-exception v6

    goto :goto_42
.end method

.method public static createFromBitmapResourceBoxed(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Element;Z)Landroid/renderscript/Allocation;
    .registers 8
    .parameter "rs"
    .parameter "res"
    .parameter "id"
    .parameter "dstFmt"
    .parameter "genMips"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 375
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 376
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_1a

    .line 377
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 386
    :cond_f
    :goto_f
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmapBoxed(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Element;Z)Landroid/renderscript/Allocation;

    move-result-object v1

    return-object v1

    .line 378
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1a
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_25

    .line 379
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_f

    .line 380
    :cond_25
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_30

    .line 381
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_f

    .line 382
    :cond_30
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-ne p3, v1, :cond_f

    .line 383
    sget-object v1, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_f
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .registers 8
    .parameter "rs"
    .parameter "e"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 264
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 265
    .local v0, b:Landroid/renderscript/Type$Builder;
    sget-object v3, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    invoke-virtual {v0, v3, p2}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 266
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 268
    .local v2, t:Landroid/renderscript/Type;
    iget v3, v2, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v3}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(I)I

    move-result v1

    .line 269
    .local v1, id:I
    if-nez v1, :cond_21

    .line 270
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Bad element."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_21
    new-instance v3, Landroid/renderscript/Allocation;

    invoke-direct {v3, v1, p0, v2}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v3
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .registers 5
    .parameter "rs"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 253
    iget v1, p1, Landroid/renderscript/BaseObj;->mID:I

    if-nez v1, :cond_f

    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_f
    iget v1, p1, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v1}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(I)I

    move-result v0

    .line 257
    .local v0, id:I
    new-instance v1, Landroid/renderscript/Allocation;

    invoke-direct {v1, v0, p0, p1}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;)V

    return-object v1
.end method

.method private data1DChecks(IIII)V
    .registers 7
    .parameter "off"
    .parameter "count"
    .parameter "len"
    .parameter "dataSize"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 81
    if-ltz p1, :cond_14

    const/4 v0, 0x1

    if-lt p2, v0, :cond_14

    add-int v0, p1, p2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    if-le v0, v1, :cond_1c

    .line 82
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset or Count out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1c
    if-ge p3, p4, :cond_26

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_26
    return-void
.end method

.method private static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .registers 5
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 277
    .local v0, bc:Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_d

    .line 278
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    .line 287
    :goto_c
    return-object v1

    .line 280
    :cond_d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_16

    .line 281
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_c

    .line 283
    :cond_16
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1f

    .line 284
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_c

    .line 286
    :cond_1f
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_28

    .line 287
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_c

    .line 289
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad bitmap type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Type;
    .registers 6
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 293
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 294
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 295
    .local v1, tb:Landroid/renderscript/Type$Builder;
    sget-object v2, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 296
    sget-object v2, Landroid/renderscript/Dimension;->Y:Landroid/renderscript/Dimension;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 297
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public createAdapter1D()Landroid/renderscript/Allocation$Adapter1D;
    .registers 4

    .prologue
    .line 189
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 190
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->nAdapter1DCreate()I

    move-result v0

    .line 191
    .local v0, id:I
    if-nez v0, :cond_15

    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "allocation failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_15
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v2, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v1, v0, v2}, Landroid/renderscript/RenderScript;->nAdapter1DBindAllocation(II)V

    .line 195
    new-instance v1, Landroid/renderscript/Allocation$Adapter1D;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, p0, v0, v2}, Landroid/renderscript/Allocation$Adapter1D;-><init>(Landroid/renderscript/Allocation;ILandroid/renderscript/RenderScript;)V

    return-object v1
.end method

.method public createAdapter2D()Landroid/renderscript/Allocation$Adapter2D;
    .registers 4

    .prologue
    .line 232
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 233
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->nAdapter2DCreate()I

    move-result v0

    .line 234
    .local v0, id:I
    if-nez v0, :cond_15

    .line 235
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "allocation failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_15
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v2, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v1, v0, v2}, Landroid/renderscript/RenderScript;->nAdapter2DBindAllocation(II)V

    .line 238
    new-instance v1, Landroid/renderscript/Allocation$Adapter2D;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, p0, v0, v2}, Landroid/renderscript/Allocation$Adapter2D;-><init>(Landroid/renderscript/Allocation;ILandroid/renderscript/RenderScript;)V

    return-object v1
.end method

.method public data(Ljava/lang/Object;)V
    .registers 6
    .parameter "o"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 137
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSubDataFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V

    .line 144
    :goto_12
    return-void

    .line 141
    :cond_13
    const-string v0, "RenderScript"

    const-string v1, "mRS context NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public data([B)V
    .registers 4
    .parameter "d"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 72
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[B)V

    .line 73
    return-void
.end method

.method public data([F)V
    .registers 4
    .parameter "d"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 76
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    .line 77
    return-void
.end method

.method public data([I)V
    .registers 4
    .parameter "d"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 64
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[I)V

    .line 65
    return-void
.end method

.method public data([S)V
    .registers 4
    .parameter "d"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 68
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElementCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/Allocation;->subData1D(II[S)V

    .line 69
    return-void
.end method

.method public bridge synthetic destroy()V
    .registers 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method public getType()Landroid/renderscript/Type;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public read(Ljava/lang/Object;)V
    .registers 6
    .parameter "o"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 148
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSubReadFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public readData([F)V
    .registers 4
    .parameter "d"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 129
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[F)V

    .line 130
    return-void
.end method

.method public readData([I)V
    .registers 4
    .parameter "d"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 124
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[I)V

    .line 125
    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public subData(ILjava/lang/Object;)V
    .registers 6
    .parameter "offset"
    .parameter "o"

    .prologue
    .line 152
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 153
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nAllocationSubDataFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V

    .line 154
    return-void
.end method

.method public subData1D(II[B)V
    .registers 10
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 101
    .local v5, dataSize:I
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 102
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[BI)V

    .line 103
    return-void
.end method

.method public subData1D(II[F)V
    .registers 10
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 106
    .local v5, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 107
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[FI)V

    .line 108
    return-void
.end method

.method public subData1D(II[I)V
    .registers 10
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 91
    .local v5, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 92
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[II)V

    .line 93
    return-void
.end method

.method public subData1D(II[S)V
    .registers 10
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v5, v0, p2

    .line 96
    .local v5, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 97
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationSubData1D(III[SI)V

    .line 98
    return-void
.end method

.method public subData2D(IIII[F)V
    .registers 14
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 119
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    array-length v2, p5

    mul-int/lit8 v7, v2, 0x4

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nAllocationSubData2D(IIIII[FI)V

    .line 120
    return-void
.end method

.method public subData2D(IIII[I)V
    .registers 14
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 114
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    array-length v2, p5

    mul-int/lit8 v7, v2, 0x4

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nAllocationSubData2D(IIIII[II)V

    .line 115
    return-void
.end method

.method public uploadToBufferObject()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 59
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nAllocationUploadToBufferObject(I)V

    .line 60
    return-void
.end method

.method public uploadToTexture(I)V
    .registers 5
    .parameter "baseMipLevel"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 49
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationUploadToTexture(IZI)V

    .line 50
    return-void
.end method

.method public uploadToTexture(ZI)V
    .registers 5
    .parameter "genMips"
    .parameter "baseMipLevel"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 54
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nAllocationUploadToTexture(IZI)V

    .line 55
    return-void
.end method
