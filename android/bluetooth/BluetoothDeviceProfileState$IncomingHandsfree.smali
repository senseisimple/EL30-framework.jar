.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandsfree"
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
    .line 452
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 452
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .registers 4

    .prologue
    const-string v2, "BluetoothDeviceProfileState"

    .line 458
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering IncomingHandsfree state with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    .line 460
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_50

    .line 462
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: IncomingHandsfree state with command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_50
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    .line 465
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    if-nez v0, :cond_71

    .line 466
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 467
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 470
    :cond_71
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .registers 10
    .parameter "message"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 474
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IncomingHandsfree State -> Processing Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 475
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_8e

    move v2, v6

    .line 539
    :goto_23
    return v2

    .line 477
    :sswitch_24
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_29
    :goto_29
    :sswitch_29
    move v2, v5

    .line 539
    goto :goto_23

    .line 481
    :sswitch_2b
    const-string v2, "BluetoothDeviceProfileState"

    const-string v3, "Error: Incoming connection with a pending incoming connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 484
    :sswitch_33
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 485
    .local v0, val:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v2, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 486
    const/4 v1, 0x0

    .line 487
    .local v1, value:Z
    if-ne v0, v5, :cond_3e

    .line 488
    const/4 v1, 0x1

    .line 490
    :cond_3e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 492
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v2, v7, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_29

    .line 495
    .end local v0           #val:I
    .end local v1           #value:Z
    :sswitch_49
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5100(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 496
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v2, v7, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 497
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 498
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_29

    .line 503
    :sswitch_63
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_29

    .line 506
    :sswitch_69
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_29

    .line 513
    :sswitch_6f
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_29

    .line 520
    :sswitch_75
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_29

    .line 531
    :sswitch_7b
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_29

    .line 534
    :sswitch_81
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_29

    .line 475
    nop

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_69
        0x4 -> :sswitch_63
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_29
        0x7 -> :sswitch_75
        0x8 -> :sswitch_29
        0x9 -> :sswitch_7b
        0x64 -> :sswitch_7b
        0x65 -> :sswitch_7b
        0x66 -> :sswitch_81
        0x67 -> :sswitch_7b
        0x68 -> :sswitch_33
        0x69 -> :sswitch_49
    .end sparse-switch
.end method
