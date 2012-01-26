.class Landroid/view/SurfaceView$3;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 13
    .parameter "dirty"

    .prologue
    .line 770
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v7, v7, Landroid/view/SurfaceView;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    .line 771
    new-instance v7, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    const-string v8, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    invoke-direct {v7, v8}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 774
    :cond_f
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-boolean v7, v7, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v7, :cond_2e

    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v7, :cond_2e

    .line 781
    if-eqz p1, :cond_3a

    move-object v2, p1

    .line 783
    .local v2, frame:Landroid/graphics/Rect;
    :goto_26
    :try_start_26
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_40

    move-result-object v0

    .line 790
    .end local v2           #frame:Landroid/graphics/Rect;
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_4a

    .line 791
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/view/SurfaceView;->mLastLockTime:J

    move-object v7, v0

    .line 810
    :goto_39
    return-object v7

    .line 781
    :cond_3a
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v7

    goto :goto_26

    .line 784
    .restart local v2       #frame:Landroid/graphics/Rect;
    :catch_40
    move-exception v7

    move-object v1, v7

    .line 785
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "SurfaceHolder"

    const-string v8, "Exception locking surface"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 798
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #frame:Landroid/graphics/Rect;
    :cond_4a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 799
    .local v5, now:J
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-wide v7, v7, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v9, 0x64

    add-long v3, v7, v9

    .line 800
    .local v3, nextTime:J
    cmp-long v7, v3, v5

    if-lez v7, :cond_63

    .line 802
    sub-long v7, v3, v5

    :try_start_5c
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_70

    .line 805
    :goto_5f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 807
    :cond_63
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput-wide v5, v7, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 808
    iget-object v7, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 810
    const/4 v7, 0x0

    goto :goto_39

    .line 803
    :catch_70
    move-exception v7

    goto :goto_5f
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 693
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 696
    :try_start_5
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 697
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_16
    monitor-exit v0

    .line 700
    return-void

    .line 699
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView$3;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .parameter "dirty"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$3;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 703
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 704
    :try_start_5
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 705
    monitor-exit v0

    .line 706
    return-void

    .line 705
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setFixedSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 709
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_19

    .line 710
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 711
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 712
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 714
    :cond_19
    return-void
.end method

.method public setFormat(I)V
    .registers 4
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 727
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 728
    const/4 p1, 0x4

    .line 730
    :cond_5
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 731
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_14

    .line 732
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    .line 734
    :cond_14
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 5
    .parameter "screenOn"

    .prologue
    const/4 v2, 0x1

    .line 756
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 757
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_16

    move v1, v2

    :goto_c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 758
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 759
    return-void

    .line 757
    :cond_16
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setSizeFromLayout()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 717
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1a

    .line 718
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 719
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 721
    :cond_1a
    return-void
.end method

.method public setType(I)V
    .registers 4
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 737
    packed-switch p1, :pswitch_data_1a

    .line 744
    :goto_4
    packed-switch p1, :pswitch_data_22

    .line 753
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 741
    :pswitch_8
    const/4 p1, 0x0

    goto :goto_4

    .line 747
    :pswitch_a
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 748
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_7

    .line 749
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    goto :goto_7

    .line 737
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 744
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 814
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 815
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 816
    return-void
.end method
