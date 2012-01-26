.class public final Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;
.super Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;
.source "BluetoothTestModeServiceStub.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothTestModeServiceStub"


# instance fields
.field private mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;-><init>()V

    .line 40
    const-string v0, "bluetooth_test"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    .line 42
    return-void
.end method

.method private native setTestModeNative(I)V
.end method


# virtual methods
.method public SendBtldApiCmd(II[B)I
    .registers 6
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 180
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, -0x1

    .line 183
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->SendBtldApiCmd(II[B)I

    move-result v0

    goto :goto_c
.end method

.method public Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .registers 4
    .parameter "txRxTestParam"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 160
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, -0x1

    .line 164
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I

    move-result v0

    goto :goto_c
.end method

.method public declared-synchronized connectTestMode()I
    .registers 3

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 63
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 64
    const/4 v0, -0x1

    .line 66
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->connectTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 62
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 4
    .parameter "callback"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 71
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 72
    const/4 v0, -0x1

    .line 74
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 70
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enterDUTMode()I
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 144
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, -0x1

    .line 147
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterDUTMode()I

    move-result v0

    goto :goto_c
.end method

.method public declared-synchronized enterTestMode()I
    .registers 3

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 82
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 83
    const/4 v0, -0x1

    .line 85
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 81
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exitCurrentTestMode()I
    .registers 3

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 134
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 135
    const/4 v0, -0x1

    .line 137
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitCurrentTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 133
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exitDUTMode()I
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 152
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, -0x1

    .line 155
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitDUTMode()I

    move-result v0

    goto :goto_c
.end method

.method public declared-synchronized exitTestMode()I
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 93
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 94
    const/4 v0, -0x1

    .line 97
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 92
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestMode()I
    .registers 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 102
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 103
    const/4 v0, -0x1

    .line 105
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->getTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 101
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 3
    .parameter "cb"

    .prologue
    .line 49
    monitor-enter p0

    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-eqz v0, :cond_f

    .line 50
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 52
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_d

    .line 49
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTraceLevel(BB)I
    .registers 5
    .parameter "layer_id"
    .parameter "level"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 120
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 121
    const/4 v0, -0x1

    .line 123
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTraceLevel(BB)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 119
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-eqz v0, :cond_a

    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->unregisterBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 59
    :cond_a
    monitor-exit p0

    return-void

    .line 56
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
