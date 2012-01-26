.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0xbb8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousEnd:I

.field private mPreviousStart:I

.field private mPreviousTapPositionX:I

.field private mPreviousTapPositionY:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$HandleView;

.field private mSwapCursorController:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 8527
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8507
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 8512
    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousStart:I

    .line 8513
    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousEnd:I

    .line 8516
    iput-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    .line 8521
    new-instance v0, Landroid/widget/TextView$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$SelectionModifierCursorController$1;-><init>(Landroid/widget/TextView$SelectionModifierCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    .line 8528
    new-instance v0, Landroid/widget/TextView$HandleView;

    invoke-direct {v0, p1, p0, v2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    .line 8529
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    .line 8530
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 8531
    return-void
.end method

.method private hideDelayed(I)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 8572
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8573
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8574
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 8702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 8703
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_5
    if-ge v0, v2, :cond_26

    .line 8704
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 8705
    .local v3, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 8706
    .local v4, y:I
    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->getOffset(II)I

    move-result v1

    .line 8707
    .local v1, offset:I
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v5, :cond_1d

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8708
    :cond_1d
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v5, :cond_23

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 8703
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 8710
    .end local v1           #offset:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_26
    return-void
.end method


# virtual methods
.method public doSwapCursorController()Z
    .registers 2

    .prologue
    .line 8806
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    return v0
.end method

.method public endHandleVisible()I
    .registers 2

    .prologue
    .line 8772
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8773
    const/4 v0, 0x1

    .line 8777
    :goto_9
    return v0

    .line 8774
    :cond_a
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8775
    const/4 v0, 0x2

    goto :goto_9

    .line 8777
    :cond_14
    const/16 v0, 0x270f

    goto :goto_9
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 8762
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8763
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getHeight()I

    move-result v0

    .line 8767
    :goto_e
    return v0

    .line 8764
    :cond_f
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 8765
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getHeight()I

    move-result v0

    goto :goto_e

    .line 8767
    :cond_1e
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public getMaxTouchOffset()I
    .registers 2

    .prologue
    .line 8717
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .registers 2

    .prologue
    .line 8713
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 8752
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8753
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getWidth()I

    move-result v0

    .line 8757
    :goto_e
    return v0

    .line 8754
    :cond_f
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 8755
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getWidth()I

    move-result v0

    goto :goto_e

    .line 8757
    :cond_1e
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public hide()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 8553
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8554
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8555
    iput-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8556
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8558
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_28

    .line 8559
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 8560
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0, v2}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 8564
    :cond_28
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEnableSelection:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8565
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 8566
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mIsInTextSelectionMode:Z
    invoke-static {v0, v2}, Landroid/widget/TextView;->access$2702(Landroid/widget/TextView;Z)Z

    .line 8569
    :cond_40
    return-void
.end method

.method public isSelectionStartDragged()Z
    .registers 2

    .prologue
    .line 8738
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 8577
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public offsetChanged(Landroid/widget/TextView$HandleView;)Z
    .registers 7
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8789
    const/4 v1, 0x0

    .line 8790
    .local v1, result:Z
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v2, :cond_18

    iget v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousStart:I

    move v0, v2

    .line 8792
    .local v0, previousOffset:I
    :goto_a
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v2, :cond_1e

    .line 8793
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-eq v2, v0, :cond_1c

    move v1, v4

    .line 8800
    :goto_17
    return v1

    .line 8790
    .end local v0           #previousOffset:I
    :cond_18
    iget v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousEnd:I

    move v0, v2

    goto :goto_a

    .restart local v0       #previousOffset:I
    :cond_1c
    move v1, v3

    .line 8793
    goto :goto_17

    .line 8794
    :cond_1e
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v2, :cond_2e

    .line 8795
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v2, v0, :cond_2c

    move v1, v4

    :goto_2b
    goto :goto_17

    :cond_2c
    move v1, v3

    goto :goto_2b

    .line 8797
    :cond_2e
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 8748
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 8649
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEnableSelection:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 8650
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    sparse-switch v2, :sswitch_data_44

    .line 8695
    :cond_17
    :goto_17
    const/4 v2, 0x0

    return v2

    .line 8652
    :sswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 8653
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 8656
    .local v1, y:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getOffset(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    goto :goto_17

    .line 8682
    .end local v0           #x:I
    .end local v1           #y:I
    :sswitch_2e
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 8684
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_17

    .line 8650
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_19
        0x5 -> :sswitch_2e
        0x6 -> :sswitch_2e
    .end sparse-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 8742
    if-nez p1, :cond_5

    .line 8743
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 8745
    :cond_5
    return-void
.end method

.method public resetSwapCursorController()V
    .registers 2

    .prologue
    .line 8810
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    .line 8811
    return-void
.end method

.method public resetTouchOffsets()V
    .registers 2

    .prologue
    .line 8721
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8722
    return-void
.end method

.method public setMaxTouchOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 8730
    iput p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 8731
    return-void
.end method

.method public setMinTouchOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 8726
    iput p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8727
    return-void
.end method

.method public setPreviousOffset()V
    .registers 2

    .prologue
    .line 8784
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousStart:I

    .line 8785
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousEnd:I

    .line 8786
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 8535
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsCursorControllerOn:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 8550
    :cond_8
    :goto_8
    return-void

    .line 8540
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8544
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8545
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    .line 8546
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8547
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8548
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)V

    .line 8549
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hideDelayed(I)V

    goto :goto_8
.end method

.method public updatePosition()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 8624
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 8643
    :goto_7
    return-void

    .line 8628
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8629
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8632
    .local v0, selectionEnd:I
    if-ltz v1, :cond_1a

    if-ltz v0, :cond_1a

    if-ne v1, v0, :cond_2a

    .line 8634
    :cond_1a
    const-string v2, "TextView"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8635
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 8636
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->stopTextSelectionMode()V
    invoke-static {v2}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)V

    goto :goto_7

    .line 8641
    :cond_2a
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8642
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    goto :goto_7
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .registers 10
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 8581
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 8582
    .local v3, selectionStart:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8584
    .local v2, selectionEnd:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_3a

    move v1, v3

    .line 8585
    .local v1, previousOffset:I
    :goto_12
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8588
    .local v0, offset:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_3c

    .line 8596
    if-ne v0, v2, :cond_20

    .line 8597
    sub-int v0, v2, v5

    .line 8599
    :cond_20
    move v3, v0

    .line 8615
    :goto_21
    if-ge v2, v3, :cond_42

    move v4, v5

    :goto_24
    iput-boolean v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    .line 8618
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8619
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    .line 8620
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Landroid/widget/TextView$SelectionModifierCursorController;->hideDelayed(I)V

    .line 8621
    return-void

    .end local v0           #offset:I
    .end local v1           #previousOffset:I
    :cond_3a
    move v1, v2

    .line 8584
    goto :goto_12

    .line 8608
    .restart local v0       #offset:I
    .restart local v1       #previousOffset:I
    :cond_3c
    if-ne v0, v3, :cond_40

    .line 8609
    add-int/lit8 v0, v3, 0x1

    .line 8611
    :cond_40
    move v2, v0

    goto :goto_21

    .line 8615
    :cond_42
    const/4 v4, 0x0

    goto :goto_24
.end method
