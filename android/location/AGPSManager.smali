.class public Landroid/location/AGPSManager;
.super Ljava/lang/Object;
.source "AGPSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/AGPSManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_CHAP:I = 0x2

.field public static final AUTH_TYPE_NONE:I = 0x0

.field public static final AUTH_TYPE_PAP:I = 0x1

.field public static final KEY_LBSREQUEST_CHANGED:Ljava/lang/String; = "lbsrequest"

.field public static final KEY_NMEA_CHANGED:Ljava/lang/String; = "nmea"

.field public static final OPERATION_MODE_MS_ASSISTED:I = 0x2

.field public static final OPERATION_MODE_MS_BASED:I = 0x1

.field public static final OPERATION_MODE_STANDALONE:I = 0x0

.field public static final SESSION_TYPE_SINGLE_FIX:I = 0x0

.field public static final SESSION_TYPE_TRACKING:I = 0x1

.field public static final START_MODE_COLD_START:I = 0x0

.field public static final START_MODE_HOT_START:I = 0x1

.field public static final START_MODE_WARM_START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AGpsManager"

.field public static final TRANSPORT_CONTROL_PLANE:I = 0x1

.field public static final TRANSPORT_USER_PLANE:I = 0x0

.field public static final USER_RESPONSE_ACCEPT:I = 0x0

.field public static final USER_RESPONSE_NO_RESPONSE:I = 0x2

.field public static final USER_RESPONSE_REJECT:I = 0x1

.field public static final USE_DEFAULT_PDE_ADDRESS:I = 0x0

.field public static final USE_LOCAL_PDE_ADDRESS:I = 0x1


# instance fields
.field public b:Landroid/os/Bundle;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/AGPSListener;",
            "Landroid/location/AGPSManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/location/IAGPSManager;


# direct methods
.method public constructor <init>(Landroid/location/IAGPSManager;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/AGPSManager;->mListeners:Ljava/util/HashMap;

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/AGPSManager;->b:Landroid/os/Bundle;

    .line 175
    const-string v0, "AGpsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    .line 178
    return-void
.end method

.method private _requestAGpsUpdates(Landroid/location/AGPSListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 645
    :try_start_0
    iget-object v2, p0, Landroid/location/AGPSManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_21

    .line 646
    :try_start_3
    iget-object v3, p0, Landroid/location/AGPSManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/AGPSManager$ListenerTransport;

    .line 648
    .local v1, transport:Landroid/location/AGPSManager$ListenerTransport;
    if-nez v1, :cond_12

    .line 649
    new-instance v1, Landroid/location/AGPSManager$ListenerTransport;

    .end local v1           #transport:Landroid/location/AGPSManager$ListenerTransport;
    invoke-direct {v1, p0, p1}, Landroid/location/AGPSManager$ListenerTransport;-><init>(Landroid/location/AGPSManager;Landroid/location/AGPSListener;)V

    .line 651
    .restart local v1       #transport:Landroid/location/AGPSManager$ListenerTransport;
    :cond_12
    iget-object v3, p0, Landroid/location/AGPSManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v3, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v3, v1}, Landroid/location/IAGPSManager;->requestAGpsUpdates(Landroid/location/IAGPSListener;)V

    .line 653
    monitor-exit v2

    .line 657
    .end local v1           #transport:Landroid/location/AGPSManager$ListenerTransport;
    :goto_1d
    return-void

    .line 653
    :catchall_1e
    move-exception v3

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    .line 654
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 655
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string/jumbo v3, "requestLocationUpdates: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method


# virtual methods
.method public acceptLbsRequest(I)V
    .registers 5
    .parameter "result"

    .prologue
    const-string v2, "AGpsManager"

    .line 623
    const-string v1, "AGpsManager"

    const-string v1, "acceptLbsRequest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :try_start_9
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->acceptLbsRequest(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 631
    :goto_e
    return-void

    .line 627
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 628
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string v1, "acceptLbsRequest: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public enableNmea(ZLjava/lang/String;)V
    .registers 6
    .parameter "on"
    .parameter "path"

    .prologue
    const-string v2, "AGpsManager"

    .line 576
    const-string v1, "AGpsManager"

    const-string v1, "enableNmea"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :try_start_9
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1, p2}, Landroid/location/IAGPSManager;->enableNmea(ZLjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 583
    :goto_e
    return-void

    .line 580
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 581
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string v1, "Failed to enable Nmea"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public enableSsl(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    const-string v3, "AGpsManager"

    .line 474
    const-string v1, "AGpsManager"

    const-string v1, "enableSsl"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-eqz p1, :cond_12

    .line 477
    :try_start_b
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/location/IAGPSManager;->setSsl(I)V

    .line 484
    :goto_11
    return-void

    .line 479
    :cond_12
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/location/IAGPSManager;->setSsl(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_11

    .line 481
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 482
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setSSL: RemoteException"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public enableXtra(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    const-string v3, "AGpsManager"

    .line 505
    const-string v1, "AGpsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableXtra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :try_start_1a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->enableXtra(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 513
    :goto_1f
    return-void

    .line 509
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 510
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enableXtra. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public getAGpsTransport()I
    .registers 6

    .prologue
    const-string v4, "AGpsManager"

    .line 454
    const/4 v0, -0x1

    .line 457
    .local v0, Agps_transport:I
    :try_start_3
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getAGpsTransport()I

    move-result v0

    .line 458
    const-string v2, "AGpsManager"

    const-string v3, "getAGpsTransport"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    .line 462
    :goto_10
    return v0

    .line 459
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 460
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "getAGpsTransport: RemoteException"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getGprsApn()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, Gprs_Apn:Ljava/lang/String;
    const-string v2, "AGpsManager"

    const-string v2, "getGprsApn"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getGprsApn()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    .line 376
    :goto_10
    return-object v0

    .line 373
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 374
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_GprsApn: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getGprsAuthType()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 405
    const/4 v0, -0x1

    .line 407
    .local v0, Gprs_AuthType:I
    const-string v2, "AGpsManager"

    const-string v2, "getGprsAuthType"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getGprsAuthType()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 413
    :goto_10
    return v0

    .line 410
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 411
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_GprsAuth_Type: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getGprsPassword()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, GprsPassword:Ljava/lang/String;
    const-string v2, "AGpsManager"

    const-string v2, "getGprsPassword"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getGprsPassword()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    .line 401
    :goto_10
    return-object v0

    .line 397
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 398
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "failed to getGprsPassword"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getGprsUsername()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 380
    const/4 v0, 0x0

    .line 382
    .local v0, Gprs_Username:Ljava/lang/String;
    const-string v2, "AGpsManager"

    const-string v2, "getGprsUsername"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getGprsUsername()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    .line 388
    :goto_10
    return-object v0

    .line 385
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 386
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "getGprsUsername: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getHorizontalAccuracy()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 429
    const/4 v0, -0x1

    .line 431
    .local v0, Qos_HorAccuracy:I
    const-string v2, "AGpsManager"

    const-string v2, "getHorizontalAccuracy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getQosHorizontalAccuracy()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 438
    :goto_10
    return v0

    .line 434
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 435
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_Qos_Horizontal_Accuracy: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getHslpAddress()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, Hslp_Address:Ljava/lang/String;
    const-string v2, "AGpsManager"

    const-string v2, "getHslpAddress"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getHslpAddress()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    .line 353
    :goto_10
    return-object v0

    .line 350
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 351
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_HslpAddress: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getHslpPort()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 357
    const/4 v0, -0x1

    .line 359
    .local v0, Hslp_Port:I
    const-string v2, "AGpsManager"

    const-string v2, "getHslpPort"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getHslpPort()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 365
    :goto_10
    return v0

    .line 362
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 363
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_HslpPort: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getOperationType()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 320
    const/4 v0, -0x1

    .line 322
    .local v0, Operation_Type:I
    const-string v2, "AGpsManager"

    const-string v2, "getOperationType"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getOperationType()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 328
    :goto_10
    return v0

    .line 325
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 326
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_OperationType: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getPdeServerOption()I
    .registers 6

    .prologue
    const-string v4, "AGpsManager"

    .line 604
    const/4 v1, 0x0

    .line 606
    .local v1, mode:I
    const-string v2, "AGpsManager"

    const-string v2, "getPdeServerOption:"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getPdeServerOption()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 614
    :goto_10
    return v1

    .line 610
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 611
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get Xtra auto download interval. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getSessionTimeout()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 417
    const/4 v0, -0x1

    .line 419
    .local v0, Qos_performance:I
    const-string v2, "AGpsManager"

    const-string v2, "getSessionTimeout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getQosPerformance()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 425
    :goto_10
    return v0

    .line 422
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 423
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "getSessionTimeout: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getSessionType()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 308
    const/4 v0, -0x1

    .line 310
    .local v0, Session_Type:I
    const-string v2, "AGpsManager"

    const-string v2, "getSessionType"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getSessionType()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 316
    :goto_10
    return v0

    .line 313
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 314
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_SessionType: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getStartMode()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 332
    const/4 v0, -0x1

    .line 334
    .local v0, Start_Mode:I
    const-string v2, "AGpsManager"

    const-string v2, "getStartMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getStartMode()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 341
    :goto_10
    return v0

    .line 337
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 338
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "getStartMode: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getVerticalAccuracy()I
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 442
    const/4 v0, -0x1

    .line 444
    .local v0, Qos_VerAccuracy:I
    const-string v2, "AGpsManager"

    const-string v2, "getVerticalAccuracy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getQosVerticalAccuracy()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 450
    :goto_10
    return v0

    .line 447
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 448
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "getVerticalAccuracy: RemoteException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getXtraDownloadInterval()I
    .registers 6

    .prologue
    const-string v4, "AGpsManager"

    .line 556
    const/4 v1, 0x0

    .line 558
    .local v1, hour:I
    const-string v2, "AGpsManager"

    const-string v2, "getXtraDownloadInterval: "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getXtraDownloadInterval()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 566
    :goto_10
    return v1

    .line 562
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 563
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get Xtra auto download interval. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public invalidateXtraData()V
    .registers 5

    .prologue
    const-string v3, "AGpsManager"

    .line 530
    const-string v1, "AGpsManager"

    const-string v1, "invalidateXtraData:"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :try_start_9
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1}, Landroid/location/IAGPSManager;->invalidateXtraData()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 537
    :goto_e
    return-void

    .line 534
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 535
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invalidate Xtra data. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public isSslEnabled()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const-string v5, "AGpsManager"

    .line 487
    const/4 v1, -0x1

    .line 490
    .local v1, ssl_mode:I
    :try_start_4
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->getSsl()I

    move-result v1

    .line 491
    const-string v2, "AGpsManager"

    const-string v3, "getSSL in location manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_15

    .line 495
    :goto_11
    if-ne v1, v4, :cond_1f

    move v2, v4

    :goto_14
    return v2

    .line 492
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 493
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string v2, "get_Current_SSL: RemoteException"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 495
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public isXtraEnabled()Z
    .registers 6

    .prologue
    const-string v4, "AGpsManager"

    .line 516
    const/4 v0, 0x0

    .line 518
    .local v0, enable:Z
    const-string v2, "AGpsManager"

    const-string v2, "isXtraEnabled: "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :try_start_a
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2}, Landroid/location/IAGPSManager;->isXtraEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    .line 526
    :goto_10
    return v0

    .line 522
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 523
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get Xtra status. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public removeAGpsUpdates(Landroid/location/AGPSListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    const-string v4, "AGpsManager"

    .line 661
    const-string v2, "AGpsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAGpsUpdates: listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    if-nez p1, :cond_25

    .line 665
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    :cond_25
    :try_start_25
    iget-object v2, p0, Landroid/location/AGPSManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/AGPSManager$ListenerTransport;

    .line 670
    .local v1, transport:Landroid/location/AGPSManager$ListenerTransport;
    if-eqz v1, :cond_34

    .line 671
    iget-object v2, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v2, v1}, Landroid/location/IAGPSManager;->removeAGpsUpdates(Landroid/location/IAGPSListener;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_35

    .line 676
    .end local v1           #transport:Landroid/location/AGPSManager$ListenerTransport;
    :cond_34
    :goto_34
    return-void

    .line 673
    :catch_35
    move-exception v2

    move-object v0, v2

    .line 674
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "AGpsManager"

    const-string/jumbo v2, "removeAGpsUpdates: DeadObjectException"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method

.method public requestAGpsUpdates(Landroid/location/AGPSListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 634
    const-string v0, "AGpsManager"

    const-string/jumbo v1, "requestAGpsUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-nez p1, :cond_12

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_12
    invoke-direct {p0, p1}, Landroid/location/AGPSManager;->_requestAGpsUpdates(Landroid/location/AGPSListener;)V

    .line 640
    return-void
.end method

.method public setAGpsTransport(I)V
    .registers 5
    .parameter "tranport"

    .prologue
    const-string v2, "AGpsManager"

    .line 288
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setAGPSTransport"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->setAGpsTransport(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 295
    :goto_f
    return-void

    .line 291
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setAGPSTransport: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setGprsOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "apn"
    .parameter "username"
    .parameter "passwd"
    .parameter "auth_type"

    .prologue
    const-string v2, "AGpsManager"

    .line 255
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setGptsOptions"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/location/IAGPSManager;->setGprsOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 261
    :goto_f
    return-void

    .line 258
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 259
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setGprsOptions: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setHslpAddress(Ljava/lang/String;I)V
    .registers 6
    .parameter "url"
    .parameter "port"

    .prologue
    const-string v2, "AGpsManager"

    .line 239
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setHslpAddress"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1, p2}, Landroid/location/IAGPSManager;->setHslpAddress(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 245
    :goto_f
    return-void

    .line 242
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 243
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setHslpAddress: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method setLbsTimer(I)V
    .registers 5
    .parameter "timervalue"

    .prologue
    const-string v2, "AGpsManager"

    .line 299
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setLbsTimer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->setLbsTimer(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 305
    :goto_f
    return-void

    .line 302
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 303
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setLBSTimer: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setOperationType(I)V
    .registers 5
    .parameter "type"

    .prologue
    const-string v2, "AGpsManager"

    .line 207
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setOperationType"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->setOperationType(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 213
    :goto_f
    return-void

    .line 210
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setOperationType: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setPdeServerOption(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const-string v3, "AGpsManager"

    .line 594
    const-string v1, "AGpsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPdeServerOption: mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_1b
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->setPdeServerOption(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 601
    :goto_20
    return-void

    .line 598
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 599
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string v1, "Failed to set PDE server option."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public setQos(III)V
    .registers 7
    .parameter "performance"
    .parameter "hor_accuracy"
    .parameter "vert_accuracy"

    .prologue
    const-string v2, "AGpsManager"

    .line 270
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setQos in agps manager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/IAGPSManager;->setQos(III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 277
    :goto_f
    return-void

    .line 273
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 274
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setQos: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setSessionType(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const-string v2, "AGpsManager"

    .line 190
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setSessionType"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->setSessionType(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 196
    :goto_f
    return-void

    .line 193
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 194
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setSessionType: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setStartMode(I)V
    .registers 5
    .parameter "type"

    .prologue
    const-string v2, "AGpsManager"

    .line 224
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setStartMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_a
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->setStartMode(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 230
    :goto_f
    return-void

    .line 227
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 228
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    const-string/jumbo v1, "setStartMode: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setXtraDownloadInterval(I)V
    .registers 6
    .parameter "hour"

    .prologue
    const-string v3, "AGpsManager"

    .line 546
    const-string v1, "AGpsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setXtraDownloadInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hour"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :try_start_21
    iget-object v1, p0, Landroid/location/AGPSManager;->mService:Landroid/location/IAGPSManager;

    invoke-interface {v1, p1}, Landroid/location/IAGPSManager;->setXtraDownloadInterval(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 553
    :goto_26
    return-void

    .line 550
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 551
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AGpsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set Xtra auto download interval. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
