.class Landroid/widget/TextView$CommitSelectionReceiver;
.super Landroid/os/ResultReceiver;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommitSelectionReceiver"
.end annotation


# instance fields
.field private final mPrevEnd:I

.field private final mPrevStart:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .registers 5
    .parameter
    .parameter "prevStart"
    .parameter "prevEnd"

    .prologue
    .line 6927
    iput-object p1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    .line 6928
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6929
    iput p2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevStart:I

    .line 6930
    iput p3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevEnd:I

    .line 6931
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 6937
    const/4 v4, 0x2

    if-ne p1, v4, :cond_45

    .line 6938
    iget-object v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6939
    .local v1, len:I
    iget v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevStart:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6940
    .local v3, start:I
    iget v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevEnd:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6941
    .local v0, end:I
    iget-object v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6943
    iget-object v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectAllOnFocus:Z
    invoke-static {v4}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTouchFocusSelected:Z
    invoke-static {v4}, Landroid/widget/TextView;->access$1100(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x1

    move v2, v4

    .line 6944
    .local v2, selectAllGotFocus:Z
    :goto_36
    iget-object v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_45

    if-nez v2, :cond_45

    .line 6945
    iget-object v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startTextSelectionMode()V
    invoke-static {v4}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)V

    .line 6948
    .end local v0           #end:I
    .end local v1           #len:I
    .end local v2           #selectAllGotFocus:Z
    .end local v3           #start:I
    :cond_45
    return-void

    .line 6943
    .restart local v0       #end:I
    .restart local v1       #len:I
    .restart local v3       #start:I
    :cond_46
    const/4 v4, 0x0

    move v2, v4

    goto :goto_36
.end method
