.class public final Lcom/broadcom/bt/service/fm/FmTransmitterService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmTransmitterService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "FmTransmitterService"

.field private static final V:Z = true


# instance fields
.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;",
            ">;"
        }
    .end annotation
.end field

.field public operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 67
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->classFmTxInitNative()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 466
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    .line 74
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initializeStateMachine()V

    .line 75
    return-void
.end method

.method private native abortScanForBestChannelNative()Z
.end method

.method private static native classFmTxInitNative()V
.end method

.method private native cleanupLoopNative()V
.end method

.method private native disableNative()Z
.end method

.method private native enableNative()Z
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 124
    return-void
.end method

.method private native muteAudioNative(I)Z
.end method

.method private native scanForBestChannelNative(IZ)Z
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setBandwidthNative(I)Z
.end method

.method private native setInterferenceNotifNative(I)Z
.end method

.method private native setPreemphasisNative(I)Z
.end method

.method private native setPwrLevelNative(I)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setTxFrequencyNative(I)Z
.end method

.method private native setTxPowerNative(Z)Z
.end method

.method private native setVolumeNative(I)Z
.end method

.method private native startAudioChirpNative(ZIIIIIIII)Z
.end method

.method private startFM_Loop()V
    .registers 3

    .prologue
    .line 100
    const-string v0, "FmTransmitterService"

    const-string/jumbo v1, "startFmTransmit_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initLoopNative()V

    .line 103
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initNativeDataNative()V

    .line 104
    return-void
.end method

.method private native stopAudioChirpNative()Z
.end method

.method private stopFM_Loop()V
    .registers 3

    .prologue
    .line 108
    const-string v0, "FmTransmitterService"

    const-string/jumbo v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanupLoopNative()V

    .line 111
    return-void
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .registers 5

    .prologue
    const-string v2, "FmTransmitterService"

    .line 373
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 375
    const/4 v1, 0x5

    .line 378
    .local v1, returnStatus:I
    :try_start_b
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->abortScanForBestChannelNative()Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_14

    move-result v2

    if-eqz v2, :cond_12

    .line 379
    const/4 v1, 0x0

    .line 385
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    .line 380
    :catch_14
    move-exception v0

    .line 381
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 382
    :try_start_16
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 373
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disableFmTransmitter()I
    .registers 5

    .prologue
    const-string v2, "FmTransmitterService"

    .line 148
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string v3, "disableFmTransmitter()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 150
    const/4 v1, 0x5

    .line 153
    .local v1, returnStatus:I
    :try_start_b
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->disableNative()Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_14

    move-result v2

    if-eqz v2, :cond_12

    .line 154
    const/4 v1, 0x0

    .line 160
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    .line 155
    :catch_14
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 157
    :try_start_16
    const-string v2, "FmTransmitterService"

    const-string v3, "disableFmTransmitter failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 148
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableFmTransmitter()I
    .registers 5

    .prologue
    const-string v2, "FmTransmitterService"

    .line 128
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string v3, "enableFmTransmitter()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    .line 131
    const/4 v1, 0x5

    .line 136
    .local v1, returnStatus:I
    :try_start_e
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->enableNative()Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_17

    move-result v2

    if-eqz v2, :cond_15

    .line 137
    const/4 v1, 0x0

    .line 143
    :cond_15
    :goto_15
    monitor-exit p0

    return v1

    .line 138
    :catch_17
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 140
    :try_start_19
    const-string v2, "FmTransmitterService"

    const-string v3, "enableFmTransmitter failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    const-string v0, "FmTransmitterService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "bluetooth_fm_transmitter_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .registers 2

    .prologue
    .line 51
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized muteAudio(I)I
    .registers 6
    .parameter "mute"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 323
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "muteAudio()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 325
    const/4 v1, 0x5

    .line 328
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->muteAudioNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 329
    const/4 v1, 0x0

    .line 334
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 330
    :catch_15
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 332
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "muteAudio failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 323
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onBestChannelEvent(II[I[I)V
    .registers 10
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    .line 671
    const-string v3, "FmTransmitterService"

    const-string/jumbo v4, "onBestChannelEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 686
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_25

    .line 689
    :try_start_11
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onBestChannelEvent(II[I[I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1f

    .line 686
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 690
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 691
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    .line 694
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_25
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 696
    return-void
.end method

.method public onChannelStatusEvent(III)V
    .registers 9
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    .line 712
    const-string v3, "FmTransmitterService"

    const-string/jumbo v4, "onChannelStatusEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 726
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_25

    .line 729
    :try_start_11
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onChannelStatusEvent(III)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1f

    .line 726
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 731
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 732
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    .line 735
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_25
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 737
    return-void
.end method

.method public onFmTransmitterDisabledEvent(I)V
    .registers 7
    .parameter "status"

    .prologue
    .line 515
    const-string v3, "FmTransmitterService"

    const-string/jumbo v4, "onFmTransmitterDisabledEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 520
    if-nez p1, :cond_10

    .line 522
    const/4 v3, 0x0

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 532
    :cond_10
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 533
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2d

    .line 536
    :try_start_19
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterDisabledEvent(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_27

    .line 533
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 537
    :catch_27
    move-exception v3

    move-object v1, v3

    .line 538
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_24

    .line 541
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 544
    return-void
.end method

.method public onFmTransmitterEnabledEvent(I)V
    .registers 7
    .parameter "status"

    .prologue
    .line 486
    const-string v3, "FmTransmitterService"

    const-string/jumbo v4, "onFmTransmitterEnabledEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-nez p1, :cond_d

    .line 491
    const/4 v3, 0x1

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 500
    :cond_d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 501
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_2a

    .line 504
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterEnabledEvent(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_24

    .line 501
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 505
    :catch_24
    move-exception v3

    move-object v1, v3

    .line 506
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21

    .line 509
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2a
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 511
    return-void
.end method

.method public onSetTxFrequencyEvent(II)V
    .registers 8
    .parameter "status"
    .parameter "frequency"

    .prologue
    .line 597
    const-string v3, "FmTransmitterService"

    const-string/jumbo v4, "onSetTxFrequencyEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 610
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_25

    .line 613
    :try_start_11
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxFrequencyEvent(II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1f

    .line 610
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 614
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 615
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    .line 618
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_25
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 620
    return-void
.end method

.method public onSetTxPowerEvent(IZ)V
    .registers 8
    .parameter "status"
    .parameter "powerOn"

    .prologue
    .line 633
    const-string v3, "FmTransmitterService"

    const-string/jumbo v4, "onSetTxPowerEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 645
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_25

    .line 648
    :try_start_11
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxPowerEvent(IZ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1f

    .line 645
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 649
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 650
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    .line 653
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_25
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 655
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .registers 3
    .parameter "started"

    .prologue
    .line 740
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_10

    .line 741
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 742
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_12

    .line 743
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    .line 755
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 745
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    goto :goto_10

    .line 740
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStatusEvent(II)V
    .registers 9
    .parameter "type"
    .parameter "status"

    .prologue
    .line 563
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStatusEvent: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 575
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    if-ge v2, v0, :cond_40

    .line 578
    :try_start_2c
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onStatusEvent(II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_37} :catch_3a

    .line 575
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 579
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 580
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37

    .line 583
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_40
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 585
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_7

    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 58
    :cond_7
    return-void
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .registers 7
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 356
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "scanForBestChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 358
    const/4 v1, 0x5

    .line 361
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->scanForBestChannelNative(IZ)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 362
    const/4 v1, 0x0

    .line 368
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 363
    :catch_15
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 365
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "scanForBestChannel failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 356
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 6
    .parameter "audioMode"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 222
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setAudioMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 225
    const/4 v1, 0x5

    .line 228
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioModeNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 229
    const/4 v1, 0x0

    .line 234
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 230
    :catch_15
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 232
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setAudioMode failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 6
    .parameter "audioPath"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 306
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setAudioPath()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 308
    const/4 v1, 0x5

    .line 311
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioPathNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 312
    const/4 v1, 0x0

    .line 318
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 313
    :catch_15
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 315
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setAudioPath failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 306
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setBandwidth(I)I
    .registers 6
    .parameter "bandwidth"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 272
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setBandwidth()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 274
    const/4 v1, 0x5

    .line 277
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setBandwidthNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 278
    const/4 v1, 0x0

    .line 283
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 279
    :catch_15
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 281
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setBandwidth failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 272
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .registers 6
    .parameter "notifBitmask"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 339
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setInterferenceNotif()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 341
    const/4 v1, 0x5

    .line 344
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setInterferenceNotifNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 345
    const/4 v1, 0x0

    .line 351
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 346
    :catch_15
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 348
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setInterferenceNotif failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 339
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPreemphasis(I)I
    .registers 6
    .parameter "preemph"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 288
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setPreemphasis()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 291
    const/4 v1, 0x5

    .line 294
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPreemphasisNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 295
    const/4 v1, 0x0

    .line 301
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 296
    :catch_15
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 298
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setPreemphasis failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 288
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPwrLevel(I)I
    .registers 6
    .parameter "dbGain"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 200
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setPwrLevel()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 203
    const/4 v1, 0x5

    .line 206
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPwrLevelNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 207
    const/4 v1, 0x0

    .line 213
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 208
    :catch_15
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 210
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setPwrLevel failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegion(I)I
    .registers 6
    .parameter "region"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 255
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setRegion()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 257
    const/4 v1, 0x5

    .line 260
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setRegionNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 261
    const/4 v1, 0x0

    .line 267
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 262
    :catch_15
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 264
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setRegion failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxFrequency(I)I
    .registers 6
    .parameter "frequency"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 183
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setTxFrequency()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 185
    const/4 v1, 0x5

    .line 188
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxFrequencyNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 189
    const/4 v1, 0x0

    .line 195
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 190
    :catch_15
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 192
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setTxFrequency failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxPower(Z)I
    .registers 6
    .parameter "powerOn"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 165
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setTxPower()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 168
    const/4 v1, 0x5

    .line 171
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxPowerNative(Z)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 172
    const/4 v1, 0x0

    .line 178
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 173
    :catch_15
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 175
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setTxPower failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setVolume(I)I
    .registers 6
    .parameter "volume"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 239
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setVolume()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 241
    const/4 v1, 0x5

    .line 244
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setVolumeNative(I)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 245
    const/4 v1, 0x0

    .line 250
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 246
    :catch_15
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 248
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "setVolume failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    const-string v0, "FmTransmitterService"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startFM_Loop()V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 88
    monitor-exit p0

    return-void

    .line 84
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .registers 14
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    const-string v2, "FmTransmitterService"

    .line 391
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "startAudioChirp()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 393
    const/4 v1, 0x5

    .line 396
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startAudioChirpNative(ZIIIIIIII)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 398
    const/4 v1, 0x0

    .line 404
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 399
    :catch_15
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 401
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "startAudioChirp failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 391
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    const-string v0, "FmTransmitterService"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 96
    monitor-exit p0

    return-void

    .line 92
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .registers 5

    .prologue
    const-string v2, "FmTransmitterService"

    .line 409
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "stopAudioChirp()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 411
    const/4 v1, 0x5

    .line 414
    .local v1, returnStatus:I
    :try_start_c
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopAudioChirpNative()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    .line 415
    const/4 v1, 0x0

    .line 421
    :cond_13
    :goto_13
    monitor-exit p0

    return v1

    .line 416
    :catch_15
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 418
    :try_start_17
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "stopAudioChirpNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 409
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 62
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 64
    :cond_8
    monitor-exit p0

    return-void

    .line 61
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
