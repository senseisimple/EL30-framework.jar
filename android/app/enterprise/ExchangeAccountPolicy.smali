.class public Landroid/app/enterprise/ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "ExchangeAccountPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccId:J

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private final mService:Landroid/app/enterprise/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "ExchangeAccountPolicy"

    sput-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    .line 25
    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 42
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v3, v0

    if-eqz v3, :cond_43

    .line 86
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-interface/range {v3 .. v21}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_35

    move-result-wide v3

    .line 97
    :goto_34
    return-wide v3

    .line 93
    :catch_35
    move-exception v3

    move-object/from16 v22, v3

    .line 94
    .local v22, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with exchange account policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_43
    const-wide/16 v3, -0x1

    goto :goto_34
.end method

.method public deleteAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 559
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 561
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->deleteAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 566
    :goto_a
    return v1

    .line 562
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 563
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .registers 6
    .parameter "accId"

    .prologue
    .line 541
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 543
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 548
    :goto_a
    return-object v1

    .line 544
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    .line 522
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 524
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 530
    :goto_a
    return-wide v1

    .line 526
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public sendAccountsChangedBroadcast()V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const-string/jumbo v0, "setAccountBaseParameters : "

    .line 573
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_b6

    .line 575
    :try_start_9
    iget-wide v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b1

    .line 576
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/enterprise/ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 584
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 586
    :cond_b1
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v0}, Landroid/app/enterprise/IExchangeAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_b6} :catch_b7

    .line 591
    :cond_b6
    :goto_b6
    return-void

    .line 587
    :catch_b7
    move-exception v0

    move-object v7, v0

    .line 588
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b6
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .registers 7
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 248
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 250
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAcceptAllCertificates(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 256
    :goto_a
    return v1

    .line 252
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 253
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 15
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_19

    .line 125
    :try_start_4
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-wide v0

    .line 131
    :goto_f
    return-wide v0

    .line 127
    :catch_10
    move-exception v0

    move-object v7, v0

    .line 128
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_19
    const-wide/16 v0, -0x1

    goto :goto_f
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 498
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 500
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 505
    :goto_a
    return v1

    .line 501
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 502
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .registers 7
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 271
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 273
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 279
    :goto_a
    return v1

    .line 275
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAsDefaultAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 477
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 479
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 484
    :goto_a
    return v1

    .line 480
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .registers 8
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 604
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_9

    .line 606
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IExchangeAccountPolicy;->setClientAuthCert([BLjava/lang/String;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 611
    :cond_9
    :goto_9
    return-void

    .line 607
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setDomain(Ljava/lang/String;J)V
    .registers 5
    .parameter "domain"
    .parameter "accId"

    .prologue
    .line 315
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 317
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    .line 318
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 323
    :cond_8
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .registers 5
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 187
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    .line 188
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 193
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setHost(Ljava/lang/String;J)V
    .registers 5
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 146
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    .line 147
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 152
    :cond_8
    return-void
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .registers 7
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 335
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 337
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPassword(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 342
    :goto_a
    return v1

    .line 338
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setPastDaysToSync(IJ)Z
    .registers 7
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    .line 396
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 398
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 403
    :goto_a
    return v1

    .line 399
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .registers 7
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    .line 355
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 357
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setProtocolVersion(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 362
    :goto_a
    return v1

    .line 358
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSSL(ZJ)Z
    .registers 7
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 206
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 208
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSSL(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 213
    :goto_a
    return v1

    .line 209
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "senderName"
    .parameter "accId"

    .prologue
    .line 439
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 441
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 446
    :goto_a
    return v1

    .line 442
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setServerPathPrefix(Ljava/lang/String;J)Z
    .registers 7
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 459
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 461
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 466
    :goto_a
    return v1

    .line 462
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .registers 7
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 375
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 377
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 382
    :goto_a
    return v1

    .line 378
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .registers 7
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 294
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 296
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 302
    :goto_a
    return v1

    .line 298
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSyncInterval(IJ)Z
    .registers 7
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    .line 419
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 421
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 426
    :goto_a
    return v1

    .line 422
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 423
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setTLS(ZJ)Z
    .registers 7
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 226
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_14

    .line 228
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setTLS(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 233
    :goto_a
    return v1

    .line 229
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUser(Ljava/lang/String;J)V
    .registers 5
    .parameter "user"
    .parameter "accId"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 166
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 167
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 172
    :cond_8
    return-void
.end method
