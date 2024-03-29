.class public abstract Lcom/broadcom/bt/service/framework/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEFAULT_BROADCAST_RECEIVER_PRIORITY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BaseProxy"


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

.field protected mIsAvailable:Z

.field protected mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

.field protected mReceiverPriority:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    .line 126
    return-void
.end method

.method protected static actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .parameter "a1"
    .parameter "a2"
    .parameter "offset"

    .prologue
    .line 64
    if-ne p0, p1, :cond_4

    .line 65
    const/4 v1, 0x1

    .line 70
    :goto_3
    return v1

    .line 66
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 67
    .local v0, a1length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 68
    const/4 v1, 0x0

    goto :goto_3

    .line 70
    :cond_10
    sub-int v1, v0, p2

    invoke-virtual {p0, p2, p1, p2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "ctx"
    .parameter "cb"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 186
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_d

    .line 158
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 162
    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_19

    .line 163
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 166
    :cond_19
    monitor-exit p0

    return-void

    .line 157
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finishEventCallbackHandler()V
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_d

    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 120
    :cond_d
    monitor-exit p0

    return-void

    .line 116
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract init(Landroid/os/IBinder;)Z
.end method

.method protected declared-synchronized initEventCallbackHandler()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-nez v0, :cond_1f

    .line 101
    new-instance v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;-><init>(Lcom/broadcom/bt/service/framework/BaseProxy;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 102
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->start()V

    .line 103
    :goto_11
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_25

    if-nez v0, :cond_1f

    .line 105
    const-wide/16 v0, 0x64

    :try_start_19
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 106
    :catch_1d
    move-exception v0

    goto :goto_11

    .line 110
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 100
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v0, "BaseProxy"

    .line 219
    monitor-enter p0

    if-eqz p2, :cond_b

    :try_start_5
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/framework/BaseProxy;->init(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 220
    :cond_b
    const-string v0, "BaseProxy"

    const-string v1, "Unable to create proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_12
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    if-eqz v0, :cond_20

    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    invoke-interface {v0, p0}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_28

    .line 228
    :goto_1e
    monitor-exit p0

    return-void

    .line 226
    :cond_20
    :try_start_20
    const-string v0, "BaseProxy"

    const-string v1, "ProxyCallback is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1e

    .line 219
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 233
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .registers 4
    .parameter "opCode"
    .parameter "allow"
    .parameter "data"

    .prologue
    .line 182
    return-void
.end method
