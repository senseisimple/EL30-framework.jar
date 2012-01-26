.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final MAX_NETWORK_TYPE:I = 0x6

.field public static final MAX_RADIO_TYPE:I = 0x2

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SECURITY_POLICY:I = 0x14

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .registers 4
    .parameter "service"

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    if-nez p1, :cond_d

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConnectivityManager() cannot be constructed with null service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_d
    iput-object p1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 440
    return-void
.end method

.method public static isNetworkTypeValid(I)Z
    .registers 2
    .parameter "networkType"

    .prologue
    .line 233
    if-ltz p0, :cond_7

    const/4 v0, 0x6

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 255
    :goto_6
    return-object v1

    .line 254
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 255
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 271
    :goto_6
    return-object v1

    .line 270
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBackgroundDataSetting()Z
    .registers 3

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getBackgroundDataSetting()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 375
    :goto_6
    return v1

    .line 373
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 375
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getInterfaceName(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getInterfaceName(ILjava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 337
    :goto_6
    return-object v1

    .line 336
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 4
    .parameter "iface"

    .prologue
    .line 567
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 569
    :goto_6
    return v1

    .line 568
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 569
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public getMobileDataEnabled()Z
    .registers 3

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 406
    :goto_6
    return v1

    .line 405
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 263
    :goto_6
    return-object v1

    .line 262
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkPreference()I
    .registers 3

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 247
    :goto_6
    return v1

    .line 246
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 447
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 449
    :goto_6
    return-object v1

    .line 448
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 449
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 517
    :goto_6
    return-object v1

    .line 516
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 528
    :goto_6
    return-object v1

    .line 527
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 460
    :goto_6
    return-object v1

    .line 459
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 460
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 471
    :goto_6
    return-object v1

    .line 470
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public isTetheringSupported()Z
    .registers 3

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 506
    :goto_6
    return v1

    .line 505
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 506
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reportInetCondition(II)V
    .registers 4
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 580
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 583
    :goto_5
    return-void

    .line 581
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestRouteToHost(II)Z
    .registers 5
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->requestRouteToHost(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 355
    :goto_6
    return v1

    .line 354
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 3
    .parameter "allowBackgroundData"

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setBackgroundDataSetting(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 394
    :goto_5
    return-void

    .line 392
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMobileDataEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 422
    :goto_5
    return-void

    .line 420
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setNetworkPreference(I)V
    .registers 3
    .parameter "preference"

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 241
    :goto_5
    return-void

    .line 239
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRadio(IZ)Z
    .registers 5
    .parameter "networkType"
    .parameter "turnOn"

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 289
    :goto_6
    return v1

    .line 288
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRadios(Z)Z
    .registers 4
    .parameter "turnOn"

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 280
    :goto_6
    return v1

    .line 279
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamingMobileDataEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 595
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setRoamingMobileDataEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 598
    :goto_5
    return-void

    .line 596
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 6
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 309
    :goto_b
    return v1

    .line 308
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 5
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 328
    :goto_6
    return v1

    .line 327
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public tether(Ljava/lang/String;)I
    .registers 4
    .parameter "iface"

    .prologue
    .line 481
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 483
    :goto_6
    return v1

    .line 482
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 483
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public untether(Ljava/lang/String;)I
    .registers 4
    .parameter "iface"

    .prologue
    .line 493
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 495
    :goto_6
    return v1

    .line 494
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 495
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method
