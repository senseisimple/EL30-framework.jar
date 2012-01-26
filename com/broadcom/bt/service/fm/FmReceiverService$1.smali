.class Lcom/broadcom/bt/service/fm/FmReceiverService$1;
.super Landroid/os/Handler;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    .line 343
    :goto_5
    return-void

    .line 325
    :pswitch_6
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BTAPP TIMEOUT ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4b

    .line 328
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 330
    :try_start_3c
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    const/4 v1, 0x1

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_4f

    .line 333
    :goto_42
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 337
    :goto_45
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    goto :goto_5

    .line 336
    :cond_4b
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_45

    .line 331
    :catch_4f
    move-exception v0

    goto :goto_42

    .line 322
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
