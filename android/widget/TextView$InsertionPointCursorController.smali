.class Landroid/widget/TextView$InsertionPointCursorController;
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
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0xbb8


# instance fields
.field private mCurrentOffset:I

.field private final mHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field private mPreviousEnd:I

.field private mPreviousStart:I

.field private mSwapCursorController:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 8374
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8361
    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    .line 8362
    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousEnd:I

    .line 8365
    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mSwapCursorController:Z

    .line 8368
    new-instance v0, Landroid/widget/TextView$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionPointCursorController$1;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    .line 8375
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    .line 8376
    return-void
.end method

.method private hideDelayed(I)V
    .registers 6
    .parameter "msec"

    .prologue
    .line 8402
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8403
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8404
    return-void
.end method


# virtual methods
.method public doSwapCursorController()Z
    .registers 2

    .prologue
    .line 8490
    const/4 v0, 0x0

    return v0
.end method

.method public endHandleVisible()I
    .registers 2

    .prologue
    .line 8467
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8468
    const/4 v0, 0x3

    .line 8470
    :goto_9
    return v0

    :cond_a
    const/16 v0, 0x270f

    goto :goto_9
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 8459
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8460
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getHeight()I

    move-result v0

    .line 8462
    :goto_e
    return v0

    :cond_f
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 8451
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8452
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getWidth()I

    move-result v0

    .line 8454
    :goto_e
    return v0

    :cond_f
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 8391
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8392
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8394
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsInTextSelectionMode:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_29

    .line 8395
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 8396
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 8399
    :cond_29
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 8407
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetChanged(Landroid/widget/TextView$HandleView;)Z
    .registers 5
    .parameter "handle"

    .prologue
    .line 8482
    const/4 v0, 0x0

    .line 8483
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    move v0, v1

    .line 8484
    :goto_d
    return v0

    .line 8483
    :cond_e
    const/4 v1, 0x0

    move v0, v1

    goto :goto_d
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 8446
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8447
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 8435
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 8439
    if-nez p1, :cond_5

    .line 8440
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8442
    :cond_5
    return-void
.end method

.method public resetSwapCursorController()V
    .registers 2

    .prologue
    .line 8494
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mSwapCursorController:Z

    .line 8495
    return-void
.end method

.method public setPreviousOffset()V
    .registers 2

    .prologue
    .line 8477
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    .line 8478
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousEnd:I

    .line 8479
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 8380
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsCursorControllerOn:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 8388
    :goto_8
    return-void

    .line 8385
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8386
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8387
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    goto :goto_8
.end method

.method public updatePosition()V
    .registers 4

    .prologue
    .line 8422
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8424
    .local v0, offset:I
    if-gez v0, :cond_13

    .line 8426
    const-string v1, "TextView"

    const-string v2, "Update cursor controller position called with no cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8427
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8432
    :goto_12
    return-void

    .line 8431
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    goto :goto_12
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .registers 7
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8411
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8412
    .local v1, previousOffset:I
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8414
    .local v0, offset:I
    if-eq v0, v1, :cond_1c

    .line 8415
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8416
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8418
    :cond_1c
    const/16 v2, 0xbb8

    invoke-direct {p0, v2}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8419
    return-void
.end method
