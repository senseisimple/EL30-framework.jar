.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingA2dp"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 3
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .registers 4

    .prologue
    const-string v2, "BluetoothDeviceProfileState"

    .line 642
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering IncomingA2dp state with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    .line 644
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_51

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_51

    .line 646
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: IncomingA2DP state with command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_51
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    .line 649
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    if-nez v0, :cond_72

    .line 650
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 651
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 654
    :cond_72
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .registers 12
    .parameter "message"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 658
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingA2dp State->Processing Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 659
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 660
    .local v1, deferMsg:Landroid/os/Message;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_c6

    move v4, v8

    .line 730
    :goto_28
    return v4

    .line 662
    :sswitch_29
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_2e
    :goto_2e
    :sswitch_2e
    move v4, v7

    .line 730
    goto :goto_28

    .line 666
    :sswitch_30
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 670
    :sswitch_36
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getTrust()I
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v0

    .line 671
    .local v0, access:I
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "During the processing Incoming A2DP, request comes again access: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 672
    if-ne v0, v7, :cond_2e

    .line 673
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 674
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/server/BluetoothA2dpService;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_2e

    .line 680
    .end local v0           #access:I
    :sswitch_6e
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 681
    .local v2, val:I
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 682
    const/4 v3, 0x0

    .line 683
    .local v3, value:Z
    if-ne v2, v7, :cond_79

    .line 684
    const/4 v3, 0x1

    .line 686
    :cond_79
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 687
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v9, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_2e

    .line 692
    .end local v2           #val:I
    .end local v3           #value:Z
    :sswitch_84
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5100(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 693
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v9, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 694
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 695
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_2e

    .line 700
    :sswitch_9e
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 703
    :sswitch_a4
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 713
    :sswitch_aa
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_2e

    .line 722
    :sswitch_b1
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_2e

    .line 725
    :sswitch_b8
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v5

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto/16 :goto_2e

    .line 660
    nop

    :sswitch_data_c6
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_30
        0x3 -> :sswitch_9e
        0x4 -> :sswitch_36
        0x5 -> :sswitch_a4
        0x6 -> :sswitch_2e
        0x7 -> :sswitch_aa
        0x8 -> :sswitch_2e
        0x9 -> :sswitch_b1
        0x64 -> :sswitch_b1
        0x65 -> :sswitch_b1
        0x66 -> :sswitch_b8
        0x67 -> :sswitch_b1
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_84
    .end sparse-switch
.end method
