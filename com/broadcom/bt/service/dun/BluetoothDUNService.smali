.class public final Lcom/broadcom/bt/service/dun/BluetoothDUNService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothDUNService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDUNService"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFinish:Z

.field private mNativeData:I

.field final mPortState:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->classInitNative()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    .line 45
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 62
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative(B)V
.end method

.method private onDisableEvent()V
    .registers 3

    .prologue
    .line 142
    const-string v0, "BluetoothDUNService"

    const-string/jumbo v1, "onDisableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 144
    :try_start_b
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 145
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_16

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 148
    return-void

    .line 145
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private onEnableEvent()V
    .registers 3

    .prologue
    .line 137
    const-string v0, "BluetoothDUNService"

    const-string/jumbo v1, "onEnableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 139
    return-void
.end method

.method private onPortStateChangeEvent(BBLjava/lang/String;)V
    .registers 9
    .parameter "appId"
    .parameter "portState"
    .parameter "address"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 152
    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2f

    .line 156
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ADDR"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "APPID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 159
    const-string v1, "PORTSTATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 174
    return-void

    .line 153
    .end local v0           #i:Landroid/content/Intent;
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method


# virtual methods
.method public native cleanupNative()V
.end method

.method public close(B)V
    .registers 2
    .parameter "appId"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->closeNative(B)V

    .line 120
    return-void
.end method

.method public native disableNative()V
.end method

.method public native enableNative()V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->finish()V

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-nez v1, :cond_f

    .line 85
    :try_start_5
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->cleanupNative()V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_11

    .line 90
    :goto_c
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1b

    .line 92
    :cond_f
    monitor-exit p0

    return-void

    .line 87
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, t:Ljava/lang/Throwable;
    :try_start_13
    const-string v1, "BluetoothDUNService"

    const-string v2, "Unable to cleanup DUN service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_c

    .line 83
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllPortStatus()Landroid/os/Bundle;
    .registers 9

    .prologue
    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, status:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    iget-object v7, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v7

    .line 103
    :try_start_4
    iget-object v6, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v4, v0

    .line 104
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_3d

    .line 106
    new-instance v1, Landroid/os/Bundle;

    const/4 v6, 0x3

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 107
    .local v1, b:Landroid/os/Bundle;
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 108
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    .line 110
    .local v3, key:Ljava/lang/Byte;
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    .line 111
    .local v5, val:Ljava/lang/Byte;
    if-eqz v5, :cond_1d

    .line 112
    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_1d

    .line 104
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    .end local v3           #key:Ljava/lang/Byte;
    .end local v5           #val:Ljava/lang/Byte;
    :catchall_3d
    move-exception v6

    :try_start_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v6

    .line 115
    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_40
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, "bluetooth_dun"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->initNative()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initNative()V
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 125
    if-eqz p1, :cond_7

    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 128
    :cond_7
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->enableNative()V

    .line 76
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->disableNative()V

    .line 80
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 131
    if-eqz p1, :cond_7

    .line 132
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 134
    :cond_7
    return-void
.end method
