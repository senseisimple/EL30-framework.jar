.class Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;
.super Lcom/broadcom/bt/service/opp/IOppCallback$Stub;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/BluetoothOPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V
    .registers 2
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;Lcom/broadcom/bt/service/opp/BluetoothOPP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .registers 6
    .parameter "filePathName"

    .prologue
    const-string v1, "BluetoothOPP"

    .line 766
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 767
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOpOwnerVcardNotSet ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3f

    .line 769
    :try_start_2a
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3f
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_33} :catch_35

    .line 774
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 770
    :catch_35
    move-exception v1

    move-object v0, v1

    .line 771
    .local v0, t:Ljava/lang/Throwable;
    :try_start_37
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpOwnerVcardNotSet event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_33

    .line 766
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_3f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcClose(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 703
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 705
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcClose(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 711
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 706
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 707
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcClose event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 703
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcEnable()V
    .registers 4

    .prologue
    .line 652
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 654
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcEnable()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 659
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 655
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 656
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcEnable event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 652
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 693
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 695
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 700
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 696
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 697
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcObjectPushed event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 693
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 683
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 685
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 690
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 686
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 687
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcObjectReceived event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 683
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcOpen()V
    .registers 4

    .prologue
    .line 662
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 664
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcOpen()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 669
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 665
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 666
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcOpen event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 662
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcProgress(II)V
    .registers 6
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 673
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 675
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcProgress(II)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 680
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 676
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 677
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcProgress event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 673
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 15
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 745
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    move-result-object v0

    if-eqz v0, :cond_18

    .line 747
    :try_start_9
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_18} :catch_1a

    .line 753
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 749
    :catch_1a
    move-exception v0

    move-object v7, v0

    .line 750
    .local v7, t:Ljava/lang/Throwable;
    :try_start_1c
    const-string v0, "BluetoothOPP"

    const-string v1, "Error processing OPP onOpsAccessRequest event"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_18

    .line 745
    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsClose()V
    .registers 4

    .prologue
    .line 756
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 758
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsClose()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 763
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 759
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 760
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsClose event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 756
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .registers 6
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 724
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 726
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 731
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 727
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 728
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsObjectReceived event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 724
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsOpen()V
    .registers 4

    .prologue
    .line 734
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 736
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsOpen()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 741
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 737
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 738
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsOpen event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 734
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsProgress(II)V
    .registers 6
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 714
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 716
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsProgress(II)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 721
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 717
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 718
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcProgess event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 714
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
