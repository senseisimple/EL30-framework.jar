.class public Landroid/webkit/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ViewManager$ChildView;
    }
.end annotation


# static fields
.field private static final MAX_SURFACE_DIMENSION:I = 0x800


# instance fields
.field private final MAX_SURFACE_AREA:I

.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/ViewManager$ChildView;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableQuickResize:Z

.field private mHidden:Z

.field private mPinchZoomMatrix:Landroid/graphics/Matrix;

.field private mReadyToDraw:Z

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomInProgress:Z


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 7
    .parameter "w"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 120
    iput-object p1, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    .line 122
    invoke-virtual {p1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v0, v1, v2

    .line 128
    .local v0, pixelArea:I
    int-to-double v1, v0

    const-wide/high16 v3, 0x4006

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    .line 130
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    .line 131
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ViewManager;Landroid/webkit/ViewManager$ChildView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/ViewManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/ViewManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return p1
.end method

.method private requestLayout(Landroid/webkit/ViewManager$ChildView;)V
    .registers 22
    .parameter "v"

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v13

    .line 143
    .local v13, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v8

    .line 144
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->x:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v14

    .line 145
    .local v14, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->y:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v15

    .line 147
    .local v15, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v16

    if-nez v16, :cond_9e

    .line 149
    new-instance v11, Landroid/graphics/RectF;

    move v0, v14

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    add-int v18, v14, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v15, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    .local v11, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 151
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 152
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 153
    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 154
    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move v15, v0

    .line 158
    .end local v11           #rectF:Landroid/graphics/RectF;
    :cond_9e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 160
    .local v9, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    move-object v0, v9

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move/from16 v16, v0

    if-eqz v16, :cond_eb

    .line 161
    move-object v0, v9

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v10, v0

    .line 162
    .local v10, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 163
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    iput v14, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 165
    iput v15, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 171
    :goto_bb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/SurfaceView;

    move/from16 v16, v0

    if-eqz v16, :cond_ea

    .line 175
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object v12, v0

    check-cast v12, Landroid/view/SurfaceView;

    .line 177
    .local v12, sView:Landroid/view/SurfaceView;
    invoke-virtual {v12}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v16

    if-eqz v16, :cond_f1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f1

    .line 266
    .end local v12           #sView:Landroid/view/SurfaceView;
    :cond_ea
    :goto_ea
    return-void

    .line 167
    .end local v10           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_eb
    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v10, v13, v8, v14, v15}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .restart local v10       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    goto :goto_bb

    .line 192
    .restart local v12       #sView:Landroid/view/SurfaceView;
    :cond_f1
    move v7, v13

    .line 193
    .local v7, fixedW:I
    move v6, v8

    .line 194
    .local v6, fixedH:I
    const/16 v16, 0x800

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_101

    const/16 v16, 0x800

    move v0, v6

    move/from16 v1, v16

    if-le v0, v1, :cond_129

    .line 195
    :cond_101
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_19b

    .line 196
    const/16 v7, 0x800

    .line 197
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    div-int v6, v16, v17

    .line 203
    :cond_129
    :goto_129
    mul-int v16, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_18a

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    .line 205
    .local v5, area:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1b3

    .line 206
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v7, v0

    .line 207
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v16, v0

    mul-int v16, v16, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    div-int v6, v16, v17

    .line 214
    .end local v5           #area:F
    :cond_18a
    :goto_18a
    if-ne v7, v13, :cond_18e

    if-eq v6, v8, :cond_1eb

    .line 217
    :cond_18e
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/16 :goto_ea

    .line 199
    :cond_19b
    const/16 v6, 0x800

    .line 200
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    div-int v7, v16, v17

    goto/16 :goto_129

    .line 209
    .restart local v5       #area:F
    :cond_1b3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v6, v0

    .line 210
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    mul-int v16, v16, v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    div-int v7, v16, v17

    goto :goto_18a

    .line 218
    .end local v5           #area:F
    :cond_1eb
    invoke-virtual {v12}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v16

    if-nez v16, :cond_20a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20a

    .line 221
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getWidth()I

    move-result v17

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHeight()I

    move-result v18

    invoke-interface/range {v16 .. v18}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/16 :goto_ea

    .line 226
    :cond_20a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    move/from16 v16, v0

    if-nez v16, :cond_ea

    .line 245
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_24a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mEnableQuickResize:Z

    move/from16 v16, v0

    if-nez v16, :cond_24a

    .line 250
    const/16 v16, 0x8

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 252
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Landroid/webkit/ViewManager$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/webkit/ViewManager$1;-><init>(Landroid/webkit/ViewManager;Landroid/view/SurfaceView;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ea

    .line 262
    :cond_24a
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto/16 :goto_ea
.end method


# virtual methods
.method createView()Landroid/webkit/ViewManager$ChildView;
    .registers 2

    .prologue
    .line 134
    new-instance v0, Landroid/webkit/ViewManager$ChildView;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager$ChildView;-><init>(Landroid/webkit/ViewManager;)V

    return-object v0
.end method

.method endZoom()V
    .registers 4

    .prologue
    .line 278
    iget-object v2, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 280
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 281
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_e

    .line 284
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1e
    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/ViewManager$ChildView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method hideAll()V
    .registers 5

    .prologue
    .line 305
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v2, :cond_5

    .line 312
    :goto_4
    return-void

    .line 308
    :cond_5
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 309
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 311
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1f
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_4
.end method

.method hitTest(II)Landroid/webkit/ViewManager$ChildView;
    .registers 8
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v2, :cond_7

    move-object v2, v4

    .line 355
    :goto_6
    return-object v2

    .line 347
    :cond_7
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 348
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 349
    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    if-lt p1, v2, :cond_d

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_d

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    if-lt p2, v2, :cond_d

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_d

    move-object v2, v1

    .line 351
    goto :goto_6

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_39
    move-object v2, v4

    .line 355
    goto :goto_6
.end method

.method postReadyToDrawAll()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$3;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$3;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method postResetStateAll()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$2;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$2;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method scaleAll()V
    .registers 4

    .prologue
    .line 299
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 300
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_6

    .line 302
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_16
    return-void
.end method

.method showAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-nez v2, :cond_6

    .line 322
    :goto_5
    return-void

    .line 318
    :cond_6
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 319
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 321
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1e
    iput-boolean v3, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_5
.end method

.method startZoom()V
    .registers 4

    .prologue
    .line 269
    iget-object v2, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 270
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 271
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 272
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_e

    .line 274
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1e
    return-void
.end method

.method transformAll(Landroid/graphics/Matrix;Z)V
    .registers 7
    .parameter "matrix"
    .parameter "zoomInProgress"

    .prologue
    .line 288
    iget-object v3, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 289
    iget-object v3, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 290
    iget-boolean v1, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 291
    .local v1, oldZoomInProgress:Z
    iput-boolean p2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 292
    iget-object v3, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ViewManager$ChildView;

    .line 293
    .local v2, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v2}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_14

    .line 295
    .end local v2           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_24
    iput-boolean v1, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 296
    return-void
.end method

.method public updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIIIFFFI)V
    .registers 23
    .parameter "parentView"
    .parameter "parentViewX"
    .parameter "parentViewY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ViewManager;->mEnableQuickResize:Z

    .line 366
    :try_start_3
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/webkit/ViewManager$ChildView;

    .line 367
    .local v12, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v0, v12, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, v12, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_9

    .line 368
    iget-object v1, v12, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_43

    .local v1, sView:Landroid/view/SurfaceView;
    move-object v0, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 370
    :try_start_33
    invoke-virtual/range {v0 .. v9}, Landroid/view/SurfaceView;->moveChildWindowOnMyFlip(Landroid/view/SurfaceView;IIIIFFFI)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_9

    .line 372
    :catch_37
    move-exception v11

    .line 373
    .local v11, t:Ljava/lang/Throwable;
    :try_start_38
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "SurfaceView.updateWindow() failed (transient failure? let\'s continue.)"

    .end local v1           #sView:Landroid/view/SurfaceView;
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_9

    .line 378
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #t:Ljava/lang/Throwable;
    .end local v12           #v:Landroid/webkit/ViewManager$ChildView;
    :catch_43
    move-exception v0

    move-object v11, v0

    .line 380
    .restart local v11       #t:Ljava/lang/Throwable;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ViewManager.mChildren is changed concurrently. This should be OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 384
    .end local v11           #t:Ljava/lang/Throwable;
    :cond_4f
    return-void
.end method
