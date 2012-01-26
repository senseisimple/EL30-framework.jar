.class Landroid/view/ViewRoot$2;
.super Ljava/lang/Object;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRoot;


# direct methods
.method constructor <init>(Landroid/view/ViewRoot;)V
    .registers 2
    .parameter

    .prologue
    .line 3390
    iput-object p1, p0, Landroid/view/ViewRoot$2;->this$0:Landroid/view/ViewRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 3404
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 3396
    iget-object v0, p0, Landroid/view/ViewRoot$2;->this$0:Landroid/view/ViewRoot;

    #getter for: Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/view/ViewRoot;->access$300(Landroid/view/ViewRoot;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 3435
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    .prologue
    .line 3400
    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 3425
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .parameter "dirty"

    .prologue
    .line 3429
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 3407
    return-void
.end method

.method public setFixedSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3410
    return-void
.end method

.method public setFormat(I)V
    .registers 2
    .parameter "format"

    .prologue
    .line 3416
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 2
    .parameter "screenOn"

    .prologue
    .line 3422
    return-void
.end method

.method public setSizeFromLayout()V
    .registers 1

    .prologue
    .line 3413
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 3419
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 3433
    return-void
.end method
