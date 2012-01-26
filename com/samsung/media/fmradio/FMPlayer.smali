.class public Lcom/samsung/media/fmradio/FMPlayer;
.super Ljava/lang/Object;
.source "FMPlayer.java"


# static fields
.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final DEBUG:Z = true

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FMPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sput-object p1, Lcom/samsung/media/fmradio/FMPlayer;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 68
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private checkBusy()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, code:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBusy()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_1a

    move-result v0

    .line 512
    :goto_7
    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    .line 513
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x3

    const-string v4, "Player is scanning channel"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 508
    :catch_1a
    move-exception v2

    move-object v1, v2

    .line 509
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7

    .line 520
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_20
    return-void
.end method

.method private checkOnStatus()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    .line 495
    .local v0, val:Z
    if-nez v0, :cond_16

    .line 496
    new-instance v1, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v2, 0x1

    const-string v3, "Player is not ON.Call on() method to start player"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 502
    :cond_16
    return-void
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .registers 6
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 348
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, 0x1

    const-string v2, "Radio service is not running restart the phone."

    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cancelAFSwitching()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 308
    :goto_5
    return-void

    .line 305
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public cancelScan()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelScan()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 332
    :goto_6
    return v1

    .line 329
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 332
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public cancelSeek()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 430
    :goto_5
    return-void

    .line 427
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 428
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public disableAF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 296
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 300
    :goto_8
    return-void

    .line 297
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public disableRDS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 277
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 281
    :goto_8
    return-void

    .line 278
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public enableAF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableAF()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 291
    :goto_8
    return-void

    .line 287
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 288
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public enableRDS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableRDS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 272
    :goto_8
    return-void

    .line 268
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 619
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 620
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 621
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 622
    return-void
.end method

.method public getCnt_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 609
    const/4 v1, -0x1

    .line 611
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCnt_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 615
    :goto_7
    return v1

    .line 612
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getCurrentChannel()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 435
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 436
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 440
    :goto_c
    return-wide v1

    .line 437
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 438
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 440
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public getCurrentRSSI()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentRSSI()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 397
    :goto_6
    return-wide v1

    .line 394
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 395
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 397
    const-wide/16 v1, -0x1

    goto :goto_6
.end method

.method public getLastScanResult()[J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    .line 490
    :goto_8
    return-object v1

    .line 486
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_8

    .line 487
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    move-object v1, v2

    .line 490
    goto :goto_8
.end method

.method public getMaxVolume()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getMaxVolume()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 473
    :goto_6
    return-wide v1

    .line 470
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 473
    const-wide/16 v1, -0x1

    goto :goto_6
.end method

.method public getRSSI_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v1, -0x1

    .line 591
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRSSI_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 595
    :goto_7
    return v1

    .line 592
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getSNR_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 599
    const/4 v1, -0x1

    .line 601
    .local v1, val:I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSNR_th()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 605
    :goto_7
    return v1

    .line 602
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getVolume()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getVolume()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 463
    :goto_6
    return-wide v1

    .line 459
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 460
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 463
    const-wide/16 v1, -0x1

    goto :goto_6
.end method

.method public isAFEnable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAFEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 536
    :goto_6
    return v1

    .line 533
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 534
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 536
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isAirPlaneMode()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 164
    :goto_6
    return v1

    .line 161
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 164
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isBatteryLow()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 173
    :goto_6
    return v1

    .line 170
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 173
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isHeadsetPlugged()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 144
    :goto_6
    return v1

    .line 141
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 144
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isOn()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 207
    :goto_6
    return v1

    .line 204
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 207
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isRDSEnable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 528
    :goto_6
    return v1

    .line 525
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 528
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isScanning()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isScanning()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 341
    :goto_6
    return v1

    .line 338
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 341
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isTvOutPlugged()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 153
    :goto_6
    return v1

    .line 150
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 153
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 58
    const-string v0, "FMPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public off()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, val:Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->off()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 198
    :goto_7
    return v1

    .line 195
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public on()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const-string v7, "Headset is not presents."

    const-string v6, "AirPlane mode is on."

    .line 80
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isTvOutPlugged()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 81
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x7

    const-string v4, "TV out is on"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "TV out is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 85
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_30

    .line 86
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x4

    const-string v4, "Headset is not presents."

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Headset is not presents."

    invoke-direct {v4, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 90
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 91
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "AirPlane mode is on."

    invoke-direct {v4, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 95
    :cond_46
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isBatteryLow()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 96
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x6

    const-string v4, "Battery is low."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Batterys is low."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    :cond_5c
    const/4 v1, 0x0

    .line 103
    .local v1, val:Z
    :try_start_5d
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on()Z
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_64

    move-result v1

    .line 108
    :goto_63
    return v1

    .line 105
    :catch_64
    move-exception v2

    move-object v0, v2

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_63
.end method

.method public on(Z)Z
    .registers 9
    .parameter "testMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const-string v6, "AirPlane mode is on."

    .line 117
    if-eqz p1, :cond_29

    .line 118
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 119
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "AirPlane mode is on."

    invoke-direct {v4, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 125
    :cond_1a
    const/4 v1, 0x0

    .line 128
    .local v1, val:Z
    :try_start_1b
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23

    move-result v1

    :goto_21
    move v2, v1

    .line 135
    .end local v1           #val:Z
    :goto_22
    return v2

    .line 130
    .restart local v1       #val:Z
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_21

    .line 135
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #val:Z
    :cond_29
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v2

    goto :goto_22
.end method

.method public removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 551
    if-nez p1, :cond_3

    .line 559
    :goto_2
    return-void

    .line 554
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 555
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 556
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2
.end method

.method public scan()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 215
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 216
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    .line 221
    :goto_b
    return-void

    .line 217
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public searchDown()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 232
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 233
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchDown()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 237
    :goto_c
    return-wide v1

    .line 234
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 237
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public searchUp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 255
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 256
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchUp()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 260
    :goto_c
    return-wide v1

    .line 257
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 260
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public seekDown()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 416
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 417
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekDown()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 421
    :goto_c
    return-wide v1

    .line 418
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 419
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 421
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public seekUp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 404
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 405
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekUp()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 409
    :goto_c
    return-wide v1

    .line 406
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 409
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public setBand(I)V
    .registers 4
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 316
    :goto_5
    return-void

    .line 313
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setChannelSpacing(I)V
    .registers 4
    .parameter "spacing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 324
    :goto_5
    return-void

    .line 321
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setCnt_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 582
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCnt_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 586
    :goto_8
    return-void

    .line 583
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setDEConstant(J)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 367
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setDEConstant(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 371
    :goto_8
    return-void

    .line 368
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 540
    if-nez p1, :cond_3

    .line 547
    :goto_2
    return-void

    .line 543
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 544
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2
.end method

.method public setRSSI_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 564
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRSSI_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 568
    :goto_8
    return-void

    .line 565
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 566
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSNR_th(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSNR_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 577
    :goto_8
    return-void

    .line 574
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSeekRSSI(J)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 376
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekRSSI(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 380
    :goto_8
    return-void

    .line 377
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSeekSNR(J)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 385
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekSNR(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 389
    :goto_8
    return-void

    .line 386
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSpeakerOn(Z)Z
    .registers 4
    .parameter "bSpeakerOn"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting bSpeakerOn = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 189
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public setStereo(Z)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setStereo(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 249
    :goto_8
    return-void

    .line 246
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setVolume(J)V
    .registers 5
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 451
    :goto_5
    return-void

    .line 447
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public tune(J)Z
    .registers 5
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 356
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 357
    const/4 v1, 0x1

    .line 361
    :goto_9
    return v1

    .line 358
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 361
    const/4 v1, 0x0

    goto :goto_9
.end method
