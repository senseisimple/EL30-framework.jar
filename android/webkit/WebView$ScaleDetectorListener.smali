.class Landroid/webkit/WebView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 6409
    iput-object p1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6409
    invoke-direct {p0, p1}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .registers 10
    .parameter "detector"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6512
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_53

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v6, :cond_53

    .line 6515
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_42

    .line 6516
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6517
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6519
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v7, v2, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6522
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 6523
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6527
    :cond_42
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onNewScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    .line 6530
    .local v0, flag:Z
    if-ne v0, v6, :cond_51

    .line 6532
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v6}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    :cond_51
    move v2, v0

    .line 6556
    .end local v0           #flag:Z
    :goto_52
    return v2

    .line 6539
    :cond_53
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 6541
    .local v1, scale:F
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c8

    .line 6542
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v6}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 6544
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_b9

    .line 6545
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    const/high16 v3, 0x3fa0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 6549
    :goto_9a
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;F)F

    .line 6550
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6551
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v1, v6, v7, v3}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6553
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    move v2, v6

    .line 6554
    goto :goto_52

    .line 6547
    :cond_b9
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_9a

    :cond_c8
    move v2, v7

    .line 6556
    goto :goto_52
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .registers 7
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 6414
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6415
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6417
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v2, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6420
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 6421
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6424
    :cond_29
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->startZoom()V

    .line 6428
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v4, :cond_69

    .line 6430
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v1

    if-ne v1, v4, :cond_56

    .line 6432
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6433
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v2, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6434
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6437
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_56
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/webkit/OnPinchZoomListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;FF)Z

    .line 6442
    :cond_69
    return v4
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .registers 12
    .parameter "detector"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6448
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_74

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_74

    .line 6450
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 6451
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;F)F

    .line 6452
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6453
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getScale()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 6455
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_59

    .line 6456
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 6458
    :cond_59
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_74

    .line 6459
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 6462
    :cond_74
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 6463
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 6464
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2400(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorX:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;I)I

    .line 6465
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorY:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2502(Landroid/webkit/WebView;I)I

    .line 6468
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_de

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    iget-object v6, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_165

    :cond_de
    move v1, v8

    .line 6473
    .local v1, reflowNow:Z
    :goto_df
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v3, v1, v8, v4}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6475
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 6478
    .end local v1           #reflowNow:Z
    :cond_f0
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_111

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;Z)Z

    move-result v2

    if-eqz v2, :cond_111

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 6482
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6487
    :cond_111
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/16 v3, 0x8

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 6488
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;Z)Z

    .line 6489
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v5}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)J

    move-result-wide v5

    #calls: Landroid/webkit/WebView;->startTouch(FFJ)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;FFJ)V

    .line 6492
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 6496
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_164

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_164

    .line 6498
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 6499
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v2

    if-ne v2, v8, :cond_164

    .line 6501
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6502
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v8, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6503
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6506
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_164
    return-void

    :cond_165
    move v1, v9

    .line 6468
    goto/16 :goto_df
.end method
