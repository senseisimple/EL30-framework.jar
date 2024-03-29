.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private final mNativeMovie:I


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .parameter "nativeMovie"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_e

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_e
    iput p1, p0, Landroid/graphics/Movie;->mNativeMovie:I

    .line 30
    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .registers 4
    .parameter "pathName"

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_a

    .line 62
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    .end local v1           #is:Ljava/io/InputStream;
    :goto_9
    return-object v2

    .line 59
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static native decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .registers 3
    .parameter "is"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, moov:Landroid/graphics/Movie;
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_9

    .line 77
    :goto_8
    return-object v0

    .line 71
    :catch_9
    move-exception v1

    goto :goto_8
.end method


# virtual methods
.method public native delete()V
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .registers 5
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 48
    return-void
.end method

.method public native draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/graphics/Movie;->delete()V

    .line 35
    return-void
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
