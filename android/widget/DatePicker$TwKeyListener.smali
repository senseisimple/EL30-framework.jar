.class Landroid/widget/DatePicker$TwKeyListener;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;I)V
    .registers 3
    .parameter
    .parameter "next_id"

    .prologue
    .line 650
    iput-object p1, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p2, p0, Landroid/widget/DatePicker$TwKeyListener;->mNext:I

    .line 652
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 655
    iget-object v0, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 656
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_13

    move v0, v3

    .line 668
    :goto_12
    return v0

    .line 658
    :cond_13
    sparse-switch p2, :sswitch_data_32

    move v0, v3

    .line 668
    goto :goto_12

    .line 660
    :sswitch_18
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 661
    :cond_21
    iget-object v0, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwKeyListener;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v2

    .line 662
    goto :goto_12

    :sswitch_30
    move v0, v2

    .line 666
    goto :goto_12

    .line 658
    :sswitch_data_32
    .sparse-switch
        0x17 -> :sswitch_30
        0x3d -> :sswitch_18
        0x42 -> :sswitch_30
    .end sparse-switch
.end method
