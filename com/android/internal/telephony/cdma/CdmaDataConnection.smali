.class public Lcom/android/internal/telephony/cdma/CdmaDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "CdmaDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaDataConnection$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final PS_NET_DOWN_REASON_AUTH_FAILED:I = 0x1d

.field private static final PS_NET_DOWN_REASON_OPERATOR_DETERMINED_BARRING:I = 0x8

.field private static final PS_NET_DOWN_REASON_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PS_NET_DOWN_REASON_OPTION_UNSUBSCRIBED:I = 0x21


# instance fields
.field protected dataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

.field dataLink:Lcom/android/internal/telephony/DataLink;

.field private dcTracker:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)V
    .registers 3
    .parameter "phone"
    .parameter "name"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .registers 5
    .parameter "dataConnectionTracker"
    .parameter "phone"

    .prologue
    .line 73
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_3
    sget v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount:I

    .line 75
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_45

    .line 76
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaDataConnection-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)V

    .line 77
    .local v0, cdmaDc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->setdataLink(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->start()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 80
    return-object v0

    .line 75
    .end local v0           #cdmaDc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method private setdataLink(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 8
    .parameter "dataConnectionTracker"
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 313
    const-string v1, "CDMA"

    const-string v2, "CdmaDataConnection : setdataLink()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    .line 316
    new-instance v1, Lcom/android/internal/telephony/cdma/PppLink;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/cdma/PppLink;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/DataLink;->setOnLinkChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dcTracker:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    .line 321
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 322
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "DataConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 324
    return-void
.end method


# virtual methods
.method protected getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 3
    .parameter "rilCause"

    .prologue
    .line 141
    sparse-switch p1, :sswitch_data_12

    .line 155
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 157
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_5
    return-object v0

    .line 143
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 144
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 146
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 147
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 149
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 150
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 152
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_f
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 153
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 141
    :sswitch_data_12
    .sparse-switch
        0x8 -> :sswitch_6
        0x1d -> :sswitch_9
        0x20 -> :sswitch_c
        0x21 -> :sswitch_f
    .end sparse-switch
.end method

.method protected isDnsOk([Ljava/lang/String;)Z
    .registers 6
    .parameter "domainNameServers"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "0.0.0.0"

    .line 162
    const-string v0, "0.0.0.0"

    aget-object v0, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "0.0.0.0"

    aget-object v0, p1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v1

    .line 167
    :goto_23
    return v0

    :cond_24
    move v0, v2

    goto :goto_23
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 173
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .registers 12
    .parameter "cp"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    const-string v0, "CdmaDataConnection Connecting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 94
    iput-wide v5, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 95
    iput-wide v5, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 96
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 97
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 99
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_66

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_66

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_66

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 101
    const-string v0, "CdmaDataConnection using DUN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 102
    const/4 v9, 0x1

    .line 108
    .local v9, dataProfile:I
    :goto_3d
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 109
    .local v8, msg:Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "IP"

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 116
    const-string/jumbo v0, "onConnect() mWakeLock.acquire"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    return-void

    .line 104
    .end local v8           #msg:Landroid/os/Message;
    .end local v9           #dataProfile:I
    :cond_66
    const/4 v9, 0x0

    .restart local v9       #dataProfile:I
    goto :goto_3d
.end method

.method public onDisconnect()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    if-eqz v0, :cond_20

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaDataConnection Disconnecting..., state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 125
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    if-eqz v0, :cond_29

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataLink;->disconnect()V

    .line 129
    :cond_29
    return-void
.end method

.method protected onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    .registers 15
    .parameter "linkState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v8, "ril.cdma.ppp.down"

    const-string v12, "0"

    const-string v11, ""

    .line 177
    const/4 v5, 0x0

    .line 179
    .local v5, result:Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaDataConnection$1;->$SwitchMap$com$android$internal$telephony$DataLinkInterface$LinkState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_212

    .line 231
    :goto_15
    return-object v5

    .line 181
    :pswitch_16
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    if-eqz v6, :cond_18b

    .line 182
    const-string/jumbo v6, "net.cdma.ppp.interface"

    const-string/jumbo v7, "ppp0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "remote-ip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "remote-ip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    .line 187
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 188
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "local-ip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ipAddress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gateway="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 195
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_173

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v6, v6, v9

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v6, v6, v10

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDnsCheckDisabled()Z

    move-result v6

    if-eqz v6, :cond_173

    :cond_169
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18b

    .line 198
    :cond_173
    const v6, 0xc3b4

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 199
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataLink;->disconnect()V

    .line 200
    const-string v6, "NULL DNS Server!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 201
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 202
    goto/16 :goto_15

    .line 205
    .end local v4           #prefix:Ljava/lang/String;
    :cond_18b
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 206
    const-string/jumbo v6, "ril.cdma.ppp.up"

    const-string v7, "0"

    invoke-static {v6, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 207
    .local v3, pppUp:I
    const-string/jumbo v6, "ril.cdma.ppp.up"

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Up:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 209
    goto/16 :goto_15

    .line 212
    .end local v3           #pppUp:I
    :pswitch_1ac
    const-string/jumbo v6, "onLinkStateChanged() LINK_DOWN"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 213
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dcTracker:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, msg:Landroid/os/Message;
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 215
    const-string v6, "PPP Down"

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    const-string/jumbo v6, "ril.cdma.ppp.down"

    const-string v6, "0"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, pppDown:I
    const-string/jumbo v6, "ril.cdma.ppp.down"

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Down:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 221
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #pppDown:I
    :pswitch_1de
    const-string/jumbo v6, "onLinkStateChanged() LINK_EXITED"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v7, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->ModemHangup(I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onDisconnect()V

    .line 224
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 225
    const-string/jumbo v6, "ril.cdma.ppp.exit"

    const-string v7, "0"

    invoke-static {v6, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, pppExit:I
    const-string/jumbo v6, "ril.cdma.ppp.down"

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Exited:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    goto/16 :goto_15

    .line 179
    nop

    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1ac
        :pswitch_1de
    .end packed-switch
.end method

.method protected onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .registers 14
    .parameter "ar"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v11, "net.cdma.datalinkinterface"

    .line 242
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 243
    .local v4, response:[Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 245
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_72

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataConnection Init failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 248
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_6f

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_6f

    .line 251
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 252
    .local v5, result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v6, v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 253
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 308
    :goto_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataConnection setup result=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' on cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 309
    return-object v5

    .line 255
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_6f
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto :goto_4c

    .line 257
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_72
    iget v6, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v7, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-eq v6, v7, :cond_9f

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mtag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 261
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto :goto_4c

    .line 267
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_9f
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    if-eqz v6, :cond_d8

    .line 268
    array-length v6, v4

    if-le v6, v9, :cond_cb

    .line 269
    aget-object v2, v4, v9

    .line 270
    .local v2, dataLinkInterfaceName:Ljava/lang/String;
    const-string/jumbo v6, "net.cdma.datalinkinterface"

    invoke-static {v11, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataLinkInterfaceName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "net.cdma.datalinkinterface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 275
    .end local v2           #dataLinkInterfaceName:Ljava/lang/String;
    :cond_cb
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 276
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataLink;->connect()V

    .line 277
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_4c

    .line 279
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_d8
    array-length v6, v4

    if-lt v6, v8, :cond_1b9

    .line 280
    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 281
    aget-object v6, v4, v9

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    .line 282
    array-length v6, v4

    if-le v6, v8, :cond_1b5

    .line 283
    aget-object v6, v4, v8

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    .line 286
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 287
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ipAddress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gateway="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 294
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b1

    .line 295
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_4c

    .line 297
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_1b1
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_4c

    .line 300
    .end local v3           #prefix:Ljava/lang/String;
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_1b5
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_4c

    .line 303
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_1b9
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_4c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFasilCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
