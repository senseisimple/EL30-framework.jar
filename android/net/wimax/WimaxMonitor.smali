.class public Landroid/net/wimax/WimaxMonitor;
.super Ljava/lang/Object;
.source "WimaxMonitor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wimax/WimaxMonitor$1;,
        Landroid/net/wimax/WimaxMonitor$EventHandler;,
        Landroid/net/wimax/WimaxMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static final DRIVER_STATE:I = 0x7

.field static final EVENT_AUTH_FAIL_MSG:I = 0x3

.field static final EVENT_AUTH_UTC_TIME:I = 0x9

.field static final EVENT_CARD_PRESENCE:I = 0x1

.field static final EVENT_DEVICE_STATUS:I = 0x0

.field static final EVENT_LINK_WEAK_INFO:I = 0x8

.field static final EVENT_MRU_LIST_MSG:I = 0x4

.field static final EVENT_MRU_UPDATE_MSG:I = 0x5

.field static final EVENT_OMADM_RESPONSE:I = 0x6

.field static final EVENT_POWER_STATE:I = 0x2

.field static final EVENT_RADIO_INFO_RESPONSE:I = 0x7

.field private static final LINK_SPEED:I = 0x5

.field private static final STATE_CHANGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WimaxMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final UNKNOWN:I = 0x8


# instance fields
.field protected mEventHandler:Landroid/net/wimax/WimaxMonitor$EventHandler;

.field private final mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

.field private m_bLog:Z

.field private oldInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;


# direct methods
.method public constructor <init>(Landroid/net/wimax/WimaxStateTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wimax/WimaxMonitor;->m_bLog:Z

    .line 76
    new-instance v0, Landroid/net/wimax/WimaxMonitor$EventHandler;

    invoke-direct {v0, p0, p0}, Landroid/net/wimax/WimaxMonitor$EventHandler;-><init>(Landroid/net/wimax/WimaxMonitor;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mEventHandler:Landroid/net/wimax/WimaxMonitor$EventHandler;

    .line 78
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    .line 79
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 82
    iput-object p1, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    .line 83
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mEventHandler:Landroid/net/wimax/WimaxMonitor$EventHandler;

    invoke-static {v0}, Landroid/net/wimax/WimaxNative;->SetHandler(Landroid/os/Handler;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/net/wimax/WimaxMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/net/wimax/WimaxMonitor;->m_bLog:Z

    return v0
.end method

.method private handleAuthFail(ILjava/lang/String;)V
    .registers 4
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/wimax/WimaxStateTracker;->notifyAuthFail(ILjava/lang/String;)V

    .line 129
    return-void
.end method

.method private handleDeviceStatus(Landroid/net/wimax/DeviceStatusInfo;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 268
    const-string v3, "WimaxMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1}, Landroid/net/wimax/DeviceStatusInfo;->getDeviceStatus()Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    move-result-object v2

    .line 271
    .local v2, status:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    invoke-virtual {p1}, Landroid/net/wimax/DeviceStatusInfo;->getStatusReason()Landroid/net/wimax/DeviceStatusInfo$StatusReason;

    move-result-object v1

    .line 272
    .local v1, reason:Landroid/net/wimax/DeviceStatusInfo$StatusReason;
    invoke-virtual {p1}, Landroid/net/wimax/DeviceStatusInfo;->getConnectionProgressInfo()Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    move-result-object v0

    .line 274
    .local v0, info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    sget-object v3, Landroid/net/wimax/WimaxMonitor$1;->$SwitchMap$android$net$wimax$DeviceStatusInfo$StatusReason:[I

    invoke-virtual {v1}, Landroid/net/wimax/DeviceStatusInfo$StatusReason;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_58

    .line 301
    :goto_2f
    return-void

    .line 277
    :pswitch_30
    invoke-direct {p0, v2, v0}, Landroid/net/wimax/WimaxMonitor;->handleNormalStatus(Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 278
    iput-object v2, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    .line 279
    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    goto :goto_2f

    .line 282
    :pswitch_38
    sget-object v3, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->UnInitialized:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v2, v3, :cond_48

    .line 284
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->DISCONNECTED_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 285
    sget-object v3, Landroid/net/wimax/WimaxState;->INITIALIZING:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v3, v0}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 286
    iput-object v2, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    .line 287
    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    goto :goto_2f

    .line 290
    :cond_48
    sget-object v3, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v2, v3, :cond_4e

    .line 292
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 294
    :cond_4e
    sget-object v3, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v3, v0}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 295
    iput-object v2, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    .line 296
    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    goto :goto_2f

    .line 274
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 139
    if-nez p1, :cond_3

    .line 147
    :cond_2
    :goto_2
    return-void

    .line 142
    :cond_3
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxStateTracker;->notifyDriverStopped()V

    goto :goto_2

    .line 144
    :cond_11
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxStateTracker;->notifyDriverStarted()V

    goto :goto_2
.end method

.method private handleIpRenew()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxStateTracker;->notifyIpRenew()V

    .line 125
    return-void
.end method

.method private handleMruListMsg(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/MruList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, mruList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/MruList;>;"
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxStateTracker;->sendMruListBroadcast(I)V

    .line 133
    return-void
.end method

.method private handleMruUpdateMsg(II)V
    .registers 4
    .parameter "nSubType"
    .parameter "nErrorValue"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/wimax/WimaxStateTracker;->sendMruUpdateBroadcast(II)V

    .line 136
    return-void
.end method

.method private handleNormalStatus(Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 6
    .parameter "status"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 167
    sget-object v0, Landroid/net/wimax/WimaxMonitor$1;->$SwitchMap$android$net$wimax$DeviceStatusInfo$DeviceStatus:[I

    invoke-virtual {p1}, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    .line 265
    :cond_c
    :goto_c
    return-void

    .line 174
    :pswitch_d
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->UnInitialized:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    if-eq v0, v1, :cond_19

    .line 176
    sget-object v0, Landroid/net/wimax/WimaxState;->INITIALIZING:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, v2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 178
    :cond_19
    const-string v0, "STARTED"

    invoke-direct {p0, v0}, Landroid/net/wimax/WimaxMonitor;->handleDriverEvent(Ljava/lang/String;)V

    .line 179
    sget-object v0, Landroid/net/wimax/WimaxState;->INITIALIZING:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, v2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 186
    :pswitch_24
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->Initialized:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    if-eq v0, v1, :cond_c

    .line 188
    sget-object v0, Landroid/net/wimax/WimaxState;->INITIALIZED:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, v2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 195
    :pswitch_30
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->Initialized:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v0, v1, :cond_c

    .line 196
    sget-object v0, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, v2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 202
    :pswitch_3c
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->Scanning:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v0, v1, :cond_c

    .line 204
    sget-object v0, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, v2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 214
    :pswitch_48
    sget-object v0, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 221
    :pswitch_4e
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_58

    .line 222
    sget-object v0, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 224
    :cond_58
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_68

    .line 225
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v1, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v0, v1, :cond_c

    .line 228
    sget-object v0, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 231
    :cond_68
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_Renew:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_70

    .line 232
    invoke-direct {p0}, Landroid/net/wimax/WimaxMonitor;->handleIpRenew()V

    goto :goto_c

    .line 234
    :cond_70
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_USB:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_7a

    .line 235
    sget-object v0, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 237
    :cond_7a
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Ranging:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_c

    .line 239
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxStateTracker;->acquire_WakeLock()V

    goto :goto_c

    .line 246
    :pswitch_84
    sget-object v0, Landroid/net/wimax/WimaxState;->DISCONNECTING:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, v2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_c

    .line 252
    :pswitch_8a
    sget-object v0, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto/16 :goto_c

    .line 258
    :pswitch_91
    sget-object v0, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto/16 :goto_c

    .line 167
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_d
        :pswitch_24
        :pswitch_30
        :pswitch_3c
        :pswitch_48
        :pswitch_4e
        :pswitch_84
        :pswitch_8a
        :pswitch_91
    .end packed-switch
.end method

.method private handleWimaxStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 4
    .parameter "newWimaxState"
    .parameter "newInfo"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 121
    return-void
.end method

.method public static nap(I)V
    .registers 3
    .parameter "secs"

    .prologue
    .line 155
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 158
    :goto_6
    return-void

    .line 156
    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public getDeviceStatusInfo()Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    return-object v0
.end method

.method public getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "msg"

    .prologue
    .line 304
    const-string v3, "WimaxMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_ac

    .line 355
    .end local p0
    :cond_1d
    :goto_1d
    const/4 v3, 0x0

    return v3

    .line 309
    .restart local p0
    :pswitch_1f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wimax/DeviceStatusInfo;

    invoke-direct {p0, v3}, Landroid/net/wimax/WimaxMonitor;->handleDeviceStatus(Landroid/net/wimax/DeviceStatusInfo;)V

    goto :goto_1d

    .line 314
    :pswitch_27
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1d

    .line 315
    const-string v3, "STOPPED"

    invoke-direct {p0, v3}, Landroid/net/wimax/WimaxMonitor;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_1d

    .line 319
    :pswitch_31
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 320
    sget-object v3, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_SW:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    iput-object v3, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    goto :goto_1d

    .line 324
    :pswitch_3b
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroid/net/wimax/WimaxMonitor;->handleAuthFail(ILjava/lang/String;)V

    goto :goto_1d

    .line 327
    :pswitch_45
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/net/wimax/WimaxMonitor;->handleMruListMsg(Ljava/util/List;)V

    goto :goto_1d

    .line 330
    :pswitch_4d
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Landroid/net/wimax/WimaxMonitor;->handleMruUpdateMsg(II)V

    goto :goto_1d

    .line 333
    :pswitch_55
    iget-object v3, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/nio/ByteBuffer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, p0, v4, v5}, Landroid/net/wimax/WimaxStateTracker;->notifyOMADMResponse(Ljava/nio/ByteBuffer;II)V

    goto :goto_1d

    .line 336
    .restart local p0
    :pswitch_63
    iget-object v3, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/wimax/WimaxStateTracker;->notifyRadioInfoResponse()V

    goto :goto_1d

    .line 339
    :pswitch_69
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_73

    .line 340
    iget-object v3, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/wimax/WimaxStateTracker;->notifyLinkWeakInformation()V

    goto :goto_1d

    .line 342
    :cond_73
    iget-object v3, p0, Landroid/net/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/wimax/WimaxStateTracker;->notifyMoCallInformation()V

    goto :goto_1d

    .line 345
    :pswitch_79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 346
    .local v1, now:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyMMddHHmmss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, strUTCtime:Ljava/lang/String;
    const-string v3, "UTCTIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {v2}, Landroid/net/wimax/WimaxNative;->SendUTCTime(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 306
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_27
        :pswitch_31
        :pswitch_3b
        :pswitch_45
        :pswitch_4d
        :pswitch_55
        :pswitch_63
        :pswitch_69
        :pswitch_79
    .end packed-switch
.end method

.method public resetOldState()V
    .registers 2

    .prologue
    .line 115
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldState:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    .line 116
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/wimax/WimaxMonitor;->oldInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 117
    return-void
.end method

.method public setEnableLog(Z)V
    .registers 2
    .parameter "blog"

    .prologue
    .line 100
    iput-boolean p1, p0, Landroid/net/wimax/WimaxMonitor;->m_bLog:Z

    .line 101
    return-void
.end method

.method public startMonitoring()V
    .registers 2

    .prologue
    .line 87
    new-instance v0, Landroid/net/wimax/WimaxMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/wimax/WimaxMonitor$MonitorThread;-><init>(Landroid/net/wimax/WimaxMonitor;)V

    invoke-virtual {v0}, Landroid/net/wimax/WimaxMonitor$MonitorThread;->start()V

    .line 88
    return-void
.end method
