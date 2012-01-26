.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# instance fields
.field private mParent:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/list/ClipboardDataBitmap;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->mParent:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 17
    iput-object p1, p0, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->mParent:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 18
    return-void
.end method

.method private downloadSimpleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "urlname"

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 22
    .local v2, url:Ljava/net/URL;
    const/4 v0, 0x0

    .line 24
    .local v0, Result:Landroid/graphics/Bitmap;
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_15

    .line 26
    .end local v2           #url:Ljava/net/URL;
    .local v3, url:Ljava/net/URL;
    :try_start_7
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_e} :catch_1d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_19

    move-result-object v0

    move-object v2, v3

    .line 35
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    :goto_10
    return-object v0

    .line 27
    :catch_11
    move-exception v4

    move-object v1, v4

    .line 29
    .local v1, e:Ljava/net/MalformedURLException;
    :goto_13
    const/4 v0, 0x0

    .line 33
    goto :goto_10

    .line 30
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_15
    move-exception v4

    move-object v1, v4

    .line 32
    .local v1, e:Ljava/io/IOException;
    :goto_17
    const/4 v0, 0x0

    goto :goto_10

    .line 30
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_19
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_17

    .line 27
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_1d
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_13
.end method


# virtual methods
.method public SetBitmap(Ljava/lang/String;)Z
    .registers 5
    .parameter "sUrl"

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_b

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->mParent:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v1, :cond_d

    :cond_b
    const/4 v1, 0x0

    .line 44
    :goto_c
    return v1

    .line 42
    :cond_d
    invoke-direct {p0, p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->mParent:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_c
.end method
