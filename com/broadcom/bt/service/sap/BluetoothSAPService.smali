.class public Lcom/broadcom/bt/service/sap/BluetoothSAPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothSAPService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothSAPService"


# instance fields
.field private deviceAddr:Ljava/lang/String;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 53
    invoke-static {}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->classEventLoopInitNative()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 45
    iput v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    .line 50
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 60
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    .line 61
    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    .line 62
    iput v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    .line 63
    return-void
.end method

.method private static native classEventLoopInitNative()V
.end method

.method private native cleanupEventLoopNative()V
.end method

.method private native disableNative()V
.end method

.method private native disconnectNative(B)V
.end method

.method private native enableNative()V
.end method

.method private native initEventLoopNative()V
.end method

.method private onConnected(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 197
    const-string v0, "BluetoothSAPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnected: address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onConnectStateChanged(B)V

    .line 204
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.sap.action.ON_SAP_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private onDisconnected()V
    .registers 4

    .prologue
    .line 230
    const-string v0, "BluetoothSAPService"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onConnectStateChanged(B)V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.sap.action.ON_SAP_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 259
    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .registers 5

    .prologue
    const-string v1, "BluetoothSAPService"

    .line 167
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothSAPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable: enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    if-eqz v1, :cond_27

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_32

    .line 172
    :try_start_24
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disableNative()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_29

    .line 177
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 173
    :catch_29
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    const-string v1, "BluetoothSAPService"

    const-string v2, "disableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_27

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(B)V
    .registers 5
    .parameter "type"

    .prologue
    const-string v1, "BluetoothSAPService"

    .line 185
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothSAPService"

    const-string v2, "disconnect..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    .line 187
    :try_start_a
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disconnectNative(B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    .line 191
    :goto_d
    monitor-exit p0

    return-void

    .line 188
    :catch_f
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    :try_start_10
    const-string v1, "BluetoothSAPService"

    const-string v2, "disconnectNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_d

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enable()V
    .registers 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enableNative()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 158
    monitor-exit p0

    return-void

    .line 154
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "BluetoothSAPService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->finish()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    const-string v1, "BluetoothSAPService"

    .line 102
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothSAPService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    if-nez v1, :cond_14

    .line 106
    :try_start_e
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->cleanupEventLoopNative()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_16

    .line 110
    :goto_11
    const/4 v1, 0x1

    :try_start_12
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1f

    .line 112
    :cond_14
    monitor-exit p0

    return-void

    .line 107
    :catch_16
    move-exception v0

    .line 108
    .local v0, t:Ljava/lang/Throwable;
    :try_start_17
    const-string v1, "BluetoothSAPService"

    const-string v2, "Unable to cleanup SAP EventLoop service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 102
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 279
    const-string v0, "BluetoothSAPService"

    const-string v1, "getBluetoothDevice: address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 283
    :goto_c
    return-object v0

    .line 282
    :cond_d
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 283
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_c
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "bluetooth_sap"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAPService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->initEventLoopNative()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 76
    monitor-exit p0

    return-void

    .line 71
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnectStateChanged(B)V
    .registers 6
    .parameter "state"

    .prologue
    .line 265
    iget v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    if-eq v1, p1, :cond_48

    .line 266
    const-string v1, "BluetoothSAPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectStateChanged: mCurState/state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    iput p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    .line 269
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 272
    const-string v1, "SVC_NAME"

    const-string v2, "bluetooth_sap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 275
    .end local v0           #intent:Landroid/content/Intent;
    :cond_48
    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 133
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 135
    :cond_8
    monitor-exit p0

    return-void

    .line 132
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAPService"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enable()V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onStateChangeEvent(Z)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 86
    monitor-exit p0

    return-void

    .line 82
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAPService"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disable()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onConnectStateChanged(B)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onStateChangeEvent(Z)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 98
    monitor-exit p0

    return-void

    .line 90
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 145
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 147
    :cond_8
    monitor-exit p0

    return-void

    .line 144
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
