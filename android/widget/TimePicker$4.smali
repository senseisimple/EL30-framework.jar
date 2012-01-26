.class Landroid/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    .line 193
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 196
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-ge v0, v1, :cond_17

    .line 197
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$012(Landroid/widget/TimePicker;I)I

    .line 206
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x1

    :goto_22
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$202(Landroid/widget/TimePicker;Z)Z

    .line 207
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v0}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    .line 209
    return-void

    .line 202
    :cond_42
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-lt v0, v1, :cond_17

    .line 203
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$020(Landroid/widget/TimePicker;I)I

    goto :goto_17

    .line 206
    :cond_50
    const/4 v1, 0x0

    goto :goto_22

    .line 207
    :cond_52
    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39
.end method
