.class Landroid/webkit/WebView$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private fout:Ljava/io/FileOutputStream;

.field private mFilePath:Ljava/lang/String;

.field private mIsBigFile:Z

.field final synthetic this$0:Landroid/webkit/WebView;

.field private total:I


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter "out"

    .prologue
    const/4 v0, 0x0

    .line 11168
    iput-object p1, p0, Landroid/webkit/WebView$CountingOutputStream;->this$0:Landroid/webkit/WebView;

    .line 11169
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 11165
    iput-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    .line 11170
    iput v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    .line 11171
    check-cast p2, Ljava/io/FileOutputStream;

    .end local p2
    iput-object p2, p0, Landroid/webkit/WebView$CountingOutputStream;->fout:Ljava/io/FileOutputStream;

    .line 11172
    return-void
.end method

.method private check(I)Z
    .registers 4
    .parameter "size"

    .prologue
    .line 11188
    iget v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    .line 11189
    iget v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    const v1, 0xf4240

    if-le v0, v1, :cond_e

    .line 11190
    const/4 v0, 0x0

    .line 11192
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11184
    iget-object v0, p0, Landroid/webkit/WebView$CountingOutputStream;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 11185
    return-void
.end method

.method public isBigFile()Z
    .registers 2

    .prologue
    .line 11196
    iget-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    return v0
.end method

.method public setIsBigFile(Z)V
    .registers 2
    .parameter "isBigFile"

    .prologue
    .line 11200
    iput-boolean p1, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    .line 11201
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11175
    invoke-direct {p0, p3}, Landroid/webkit/WebView$CountingOutputStream;->check(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    if-nez v0, :cond_10

    .line 11176
    iget-object v0, p0, Landroid/webkit/WebView$CountingOutputStream;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 11181
    return-void

    .line 11178
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    .line 11179
    new-instance v0, Ljava/io/IOException;

    const-string v1, "file is too big."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
