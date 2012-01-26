.class Lcom/android/internal/telephony/RIL$2;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-string v3, "RILJ"

    .line 688
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 708
    :goto_7
    return-void

    .line 690
    :pswitch_8
    const-string v0, "RILJ"

    const-string/jumbo v0, "toast"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Start factory reset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 692
    const-string v0, "RILJ"

    const-string/jumbo v0, "send EVENT_FACTORY_RESET"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Lcom/android/internal/telephony/RIL$2$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RIL$2$1;-><init>(Lcom/android/internal/telephony/RIL$2;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/RIL$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 688
    nop

    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch
.end method
