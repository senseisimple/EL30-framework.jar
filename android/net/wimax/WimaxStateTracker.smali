.class public Landroid/net/wimax/WimaxStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wimax/WimaxStateTracker$1;,
        Landroid/net/wimax/WimaxStateTracker$DhcpHandler;,
        Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;,
        Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;
    }
.end annotation


# static fields
.field public static final ACTION_WIMAX_DHCP_RENEW:Ljava/lang/String; = "com.android.server.WimaxManager.action.WIMAX_DHCP_RENEW"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x2

.field private static final EVENT_AFTER_VI_REQ_NEED_DELAY:I = 0x6

.field private static final EVENT_AUTH_FAIL:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x5

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0x9

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x3

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x2

.field private static final EVENT_IP_RENEW:I = 0xa

.field private static final EVENT_LINK_WEAK_INFO:I = 0xe

.field private static final EVENT_MOCALL_FAIL:I = 0x10

.field private static final EVENT_MOCALL_INFO:I = 0xf

.field private static final EVENT_OMADM_RESP_DATA:I = 0xc

.field private static final EVENT_POLL_INTERVAL:I = 0x4

.field private static final EVENT_RADIO_INFO_RESP_DATA:I = 0xd

.field private static final EVENT_SCAN_DELAY:I = 0x7

.field private static final EVENT_VI_REQ:I = 0x8

.field private static final EVENT_WIMAX_STATE_CHANGED:I = 0x1

.field private static LS:Ljava/lang/String; = null

.field private static final PDA:[B = null

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WimaxStateTracker"

.field private static final USB_PATH:Ljava/lang/String; = "/sys/class/sec/switch/usb_sel"

.field private static final WIMAX_DHCP_RENEW_INTERVAL:I = 0x0

.field private static final WiMAX:[B = null

.field private static final mRunStateNames:[Ljava/lang/String; = null

.field private static final m_nwaitLU:I = 0x5

.field private static nOdbReqCount:I

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private WIMAX_ENTRY_DELAY:I

.field private WIMAX_SCAN_ATTEMPT_TIMEOUT:I

.field private WIMAX_SCAN_RETRY_SECONDS:I

.field private isHaveLinkInfo:Z

.field private isIdleState:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mDhcpEnd:J

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpRenewIntent:Landroid/app/PendingIntent;

.field private mDhcpStart:J

.field private mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

.field private mDiffDhcpTime:I

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field public mIsTetheredmode:Z

.field public mModemReset:Z

.field private mObtainingIpAddress:Z

.field private mReleaseWakeLockCallback:Ljava/lang/Runnable;

.field private mRunState:I

.field public mTetheredModeUsbPlugged:Z

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/wimax/WimaxManager;

.field private mWimaxInfo:Landroid/net/wimax/WimaxInfo;

.field private mWimaxMonitor:Landroid/net/wimax/WimaxMonitor;

.field private mWimaxState:Landroid/net/wimax/WimaxState;

.field private mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateDetailOld:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateOld:Landroid/net/wimax/WimaxState;

.field private m_bLog:Z

.field public m_bMruWorking:Z

.field private m_bNoBackOff:Z

.field public m_bPoweroff:Z

.field private m_bScreenOff:Z

.field private m_bUserDisconnect:Z

.field private m_isBootCompleted:Z

.field private m_nAutoConnectEnabled:I

.field private nOldSignalLevel:I

.field public nRetryFlag:I

.field public nScanAttempt:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 175
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Starting"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 186
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    new-array v0, v4, [B

    fill-array-data v0, :array_36

    sput-object v0, Landroid/net/wimax/WimaxStateTracker;->PDA:[B

    .line 203
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    sput-object v0, Landroid/net/wimax/WimaxStateTracker;->WiMAX:[B

    .line 205
    sput v3, Landroid/net/wimax/WimaxStateTracker;->nOdbReqCount:I

    return-void

    .line 202
    :array_36
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 203
    :array_3c
    .array-data 0x1
        0x57t
        0x49t
        0x4dt
        0x41t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 16
    .parameter "context"
    .parameter "target"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v12, "dhcp."

    .line 238
    const/4 v3, 0x6

    const-string v5, "WiMax"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    .line 91
    iput v8, p0, Landroid/net/wimax/WimaxStateTracker;->m_nAutoConnectEnabled:I

    .line 137
    sget-object v0, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 138
    sget-object v0, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    .line 139
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 140
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 147
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 150
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 154
    iput-wide v10, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 155
    iput-wide v10, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 156
    iput v4, p0, Landroid/net/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 159
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 160
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    .line 163
    iput v4, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 164
    iput v4, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 165
    iput v9, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 166
    const/16 v0, 0x78

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 167
    const/16 v0, 0x12c

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 199
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 200
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mTetheredModeUsbPlugged:Z

    .line 206
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bMruWorking:Z

    .line 207
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mModemReset:Z

    .line 208
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 209
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 210
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 212
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 240
    iput-object p1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    .line 241
    new-instance v0, Landroid/net/wimax/WimaxInfo;

    invoke-direct {v0}, Landroid/net/wimax/WimaxInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    .line 242
    new-instance v0, Landroid/net/wimax/WimaxMonitor;

    invoke-direct {v0, p0}, Landroid/net/wimax/WimaxMonitor;-><init>(Landroid/net/wimax/WimaxStateTracker;)V

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/wimax/WimaxMonitor;

    .line 243
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 244
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 245
    invoke-direct {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 247
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 248
    iput v8, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    .line 250
    const-string/jumbo v0, "wimax.interface"

    const-string/jumbo v1, "uwbr0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 251
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Landroid/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 255
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 257
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 258
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.server.WimaxManager.action.WIMAX_DHCP_RENEW"

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    .local v7, DhcpRenewIntent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    .line 260
    return-void
.end method

.method private RetryProcess()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x7

    const/4 v5, 0x6

    const-string v6, " ++++"

    const-string v4, "WimaxStateTracker"

    .line 1165
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->resetInterface()V

    .line 1166
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-eqz v1, :cond_36

    .line 1167
    const-string v1, "WimaxStateTracker"

    const-string v1, "[RetryProcess] m_bNoBackOff --return"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1169
    const/4 v1, -0x1

    invoke-static {v1, v7}, Landroid/net/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1170
    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1171
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_2d

    const-string v1, "WimaxStateTracker"

    const-string v1, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_2d
    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1174
    :cond_30
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v5, v1, v2}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1240
    :goto_35
    return-void

    .line 1178
    :cond_36
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bMruWorking:Z

    if-eqz v1, :cond_47

    .line 1179
    const-string v1, "WimaxStateTracker"

    const-string v1, "[RetryProcess] m_bMruWorking --return"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->release_sWakeLock()V

    goto :goto_35

    .line 1207
    :cond_47
    const-string v1, "WimaxStateTracker"

    const-string v1, "[RetryProcess] >>>>>>>>>>>> WELCOME to RetryProcess <<<<<<<<<<<<<<<<<<"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_60

    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6b

    .line 1211
    :cond_60
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_6b

    const-string v1, "WimaxStateTracker"

    const-string v1, "BACKHAUL mode......!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_6b
    const-string v1, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryProcess] ++++ nRetryFlag =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ++++"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v1, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryProcess] ++++ nScanAttempt =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ++++"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget v1, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v2, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ge v1, v2, :cond_f8

    .line 1218
    const-string v1, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ++++"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {p0, v3}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1220
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_ee

    const-string v1, "WimaxStateTracker"

    const-string v1, "[RetryProcess] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_ee
    invoke-virtual {p0, v3}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1223
    :cond_f1
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v3, v1, v2}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_35

    .line 1225
    :cond_f8
    iget v1, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    iget v2, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    iget v3, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 1226
    .local v0, nWaitTime:I
    const-string v1, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++ time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ++++"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v1, 0x708

    if-gt v0, v1, :cond_14a

    .line 1228
    iget v1, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1232
    :goto_129
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1233
    invoke-static {v0, v7}, Landroid/net/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1234
    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 1235
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_140

    const-string v1, "WimaxStateTracker"

    const-string v1, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_140
    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1238
    :cond_143
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v5, v1, v2}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_35

    .line 1230
    :cond_14a
    const/16 v0, 0x708

    goto :goto_129
.end method

.method static synthetic access$000(Landroid/net/wimax/WimaxStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wimax/WimaxStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    return v0
.end method

.method static synthetic access$500(Landroid/net/wimax/WimaxStateTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide v0
.end method

.method static synthetic access$502(Landroid/net/wimax/WimaxStateTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide p1
.end method

.method private checkUseStaticIp()Z
    .registers 19

    .prologue
    .line 1960
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1965
    .local v9, cr:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 1966
    .local v15, msg:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1967
    .local v5, backup_ip:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1968
    .local v4, backup_gateway:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1969
    .local v6, backup_netmask:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1970
    .local v2, backup_dns1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1972
    .local v3, backup_dns2:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1973
    .local v7, br:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 1976
    .local v11, fis:Ljava/io/FileInputStream;
    :try_start_1a
    new-instance v12, Ljava/io/FileInputStream;

    const-string v16, "/data/wimax_ip.txt"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_24} :catch_bc

    .line 1983
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_24
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_1d2
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_248

    .line 1985
    .end local v7           #br:Ljava/io/BufferedReader;
    .local v8, br:Ljava/io/BufferedReader;
    :try_start_34
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 1987
    if-eqz v15, :cond_c9

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    invoke-static {v15}, Landroid/net/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 1994
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 1996
    if-eqz v15, :cond_db

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    invoke-static {v15}, Landroid/net/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 2004
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 2006
    if-eqz v15, :cond_fb

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    invoke-static {v15}, Landroid/net/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->netmask:I

    .line 2015
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 2017
    if-eqz v15, :cond_129

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    invoke-static {v15}, Landroid/net/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->dns1:I

    .line 2027
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 2029
    if-eqz v15, :cond_166

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    invoke-static {v15}, Landroid/net/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->dns2:I
    :try_end_a2
    .catchall {:try_start_34 .. :try_end_a2} :catchall_245
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_a2} :catch_176

    .line 2044
    :goto_a2
    :try_start_a2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 2045
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a8} :catch_1fa

    .line 2053
    const-string v16, "WimaxStateTracker"

    const-string v17, "Use Static IP for WiMAX\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 2055
    const/16 v16, 0x1

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    :goto_bb
    return v16

    .line 1977
    :catch_bc
    move-exception v16

    move-object/from16 v13, v16

    .line 1978
    .local v13, fnfe:Ljava/io/FileNotFoundException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)-------------------Use DHCP for WiMAX\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const/16 v16, 0x0

    goto :goto_bb

    .line 1990
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v13           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :cond_c9
    :try_start_c9
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)------ip-none----------Use DHCP for WiMAX\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_245
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d0} :catch_176

    .line 1991
    const/16 v16, 0x0

    .line 2044
    :try_start_d2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 2045
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d8} :catch_237

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object v7, v8

    .line 1991
    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    goto :goto_bb

    .line 1999
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :cond_db
    :try_start_db
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)------gateway-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->ipAddress:I
    :try_end_f0
    .catchall {:try_start_db .. :try_end_f0} :catchall_245
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_f0} :catch_176

    .line 2001
    const/16 v16, 0x0

    .line 2044
    :try_start_f2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 2045
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f8} :catch_229

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object v7, v8

    .line 2001
    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    goto :goto_bb

    .line 2009
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :cond_fb
    :try_start_fb
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)------netmask-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->gateway:I
    :try_end_11e
    .catchall {:try_start_fb .. :try_end_11e} :catchall_245
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_11e} :catch_176

    .line 2012
    const/16 v16, 0x0

    .line 2044
    :try_start_120
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 2045
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_126} :catch_21b

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object v7, v8

    .line 2012
    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    goto :goto_bb

    .line 2020
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :cond_129
    :try_start_129
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)------dns1-none--------Use DHCP for WiMAX\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->netmask:I
    :try_end_15a
    .catchall {:try_start_129 .. :try_end_15a} :catchall_245
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_15a} :catch_176

    .line 2024
    const/16 v16, 0x0

    .line 2044
    :try_start_15c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 2045
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_162} :catch_20d

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object v7, v8

    .line 2024
    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    goto/16 :goto_bb

    .line 2032
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :cond_166
    :try_start_166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->dns2:I
    :try_end_174
    .catchall {:try_start_166 .. :try_end_174} :catchall_245
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_174} :catch_176

    goto/16 :goto_a2

    .line 2034
    :catch_176
    move-exception v16

    move-object/from16 v10, v16

    move-object v7, v8

    .line 2035
    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .local v10, e:Ljava/io/IOException;
    :goto_17a
    :try_start_17a
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)-------exception---Use DHCP for WiMAX\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->netmask:I

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->dns1:I

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/DhcpInfo;->dns2:I
    :try_end_1c7
    .catchall {:try_start_17a .. :try_end_1c7} :catchall_1d2

    .line 2041
    const/16 v16, 0x0

    .line 2044
    :try_start_1c9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 2045
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cf} :catch_1ec

    move-object v11, v12

    .line 2041
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_bb

    .line 2043
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catchall_1d2
    move-exception v16

    .line 2044
    :goto_1d3
    :try_start_1d3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 2045
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d9} :catch_1da

    .line 2043
    throw v16

    .line 2046
    :catch_1da
    move-exception v16

    move-object/from16 v14, v16

    .line 2047
    .local v14, ioe:Ljava/io/IOException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 2049
    :goto_1e7
    const/16 v16, 0x0

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_bb

    .line 2046
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v14           #ioe:Ljava/io/IOException;
    .restart local v10       #e:Ljava/io/IOException;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_1ec
    move-exception v16

    move-object/from16 v14, v16

    .line 2047
    .restart local v14       #ioe:Ljava/io/IOException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e7

    .line 2046
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v10           #e:Ljava/io/IOException;
    .end local v14           #ioe:Ljava/io/IOException;
    .restart local v8       #br:Ljava/io/BufferedReader;
    :catch_1fa
    move-exception v16

    move-object/from16 v14, v16

    .line 2047
    .restart local v14       #ioe:Ljava/io/IOException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 2049
    :goto_207
    const/16 v16, 0x0

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    goto/16 :goto_bb

    .line 2046
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v14           #ioe:Ljava/io/IOException;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_20d
    move-exception v16

    move-object/from16 v14, v16

    .line 2047
    .restart local v14       #ioe:Ljava/io/IOException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_207

    .line 2046
    .end local v14           #ioe:Ljava/io/IOException;
    :catch_21b
    move-exception v16

    move-object/from16 v14, v16

    .line 2047
    .restart local v14       #ioe:Ljava/io/IOException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_207

    .line 2046
    .end local v14           #ioe:Ljava/io/IOException;
    :catch_229
    move-exception v16

    move-object/from16 v14, v16

    .line 2047
    .restart local v14       #ioe:Ljava/io/IOException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_207

    .line 2046
    .end local v14           #ioe:Ljava/io/IOException;
    :catch_237
    move-exception v16

    move-object/from16 v14, v16

    .line 2047
    .restart local v14       #ioe:Ljava/io/IOException;
    const-string v16, "WimaxStateTracker"

    const-string v17, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_207

    .line 2043
    .end local v14           #ioe:Ljava/io/IOException;
    :catchall_245
    move-exception v16

    move-object v7, v8

    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    goto :goto_1d3

    .line 2034
    :catch_248
    move-exception v16

    move-object/from16 v10, v16

    goto/16 :goto_17a
.end method

.method private getMaxDhcpRetries()I
    .registers 2

    .prologue
    .line 2062
    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    return v0
.end method

.method private declared-synchronized isDriverStopped()Z
    .registers 3

    .prologue
    .line 456
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private noteRunState()V
    .registers 3

    .prologue
    const-string v0, "WimaxStateTracker"

    .line 461
    :try_start_2
    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 462
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_12

    const-string v0, "WimaxStateTracker"

    const-string v1, "[noteRunState] mBatteryStats.noteWimaxRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_12
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWimaxRunning()V

    .line 470
    :cond_17
    :goto_17
    return-void

    .line 464
    :cond_18
    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 465
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_28

    const-string v0, "WimaxStateTracker"

    const-string v1, "[noteRunState] mBatteryStats.noteWimaxStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_28
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWimaxStopped()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_17

    .line 468
    :catch_2e
    move-exception v0

    goto :goto_17
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 920
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 924
    return-void
.end method

.method private declared-synchronized requestConnectionTime(Landroid/net/wimax/WimaxInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1486
    monitor-enter p0

    const/4 v1, 0x0

    .line 1489
    .local v1, rev_time:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/net/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v1

    .line 1490
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1492
    .local v0, newTime:I
    invoke-direct {p0, v0}, Landroid/net/wimax/WimaxStateTracker;->sendConnectionTimeChangeBroadcast(I)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 1493
    monitor-exit p0

    return-void

    .line 1486
    .end local v0           #newTime:I
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/wimax/WimaxInfo;)V
    .registers 16
    .parameter "info"

    .prologue
    const-string v11, "WimaxStateTracker"

    .line 1385
    monitor-enter p0

    :try_start_3
    iget-boolean v11, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v11, :cond_9

    .line 1476
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 1389
    :cond_9
    const/4 v7, 0x0

    .line 1390
    .local v7, sBsid:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, nTxpower:I
    const/4 v0, 0x0

    .local v0, nCF:I
    const/4 v9, 0x0

    .local v9, sRssi:I
    const/4 v8, 0x0

    .line 1391
    .local v8, sCinr:I
    const/4 v5, 0x0

    .local v5, rev_info:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1393
    .local v6, rev_time:Ljava/lang/String;
    :try_start_10
    invoke-static {}, Landroid/net/wimax/WimaxNative;->getLinkInfo()Ljava/lang/String;

    move-result-object v5

    .line 1394
    invoke-static {}, Landroid/net/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v6

    .line 1396
    if-nez v5, :cond_25

    .line 1398
    const-string v11, "WimaxStateTracker"

    const-string v12, "[requestPolledInfo] getLinkInfo() returns null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_22

    goto :goto_7

    .line 1385
    .end local v0           #nCF:I
    .end local v2           #nTxpower:I
    .end local v5           #rev_info:Ljava/lang/String;
    .end local v6           #rev_time:Ljava/lang/String;
    .end local v7           #sBsid:Ljava/lang/String;
    .end local v8           #sCinr:I
    .end local v9           #sRssi:I
    :catchall_22
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1403
    .restart local v0       #nCF:I
    .restart local v2       #nTxpower:I
    .restart local v5       #rev_info:Ljava/lang/String;
    .restart local v6       #rev_time:Ljava/lang/String;
    .restart local v7       #sBsid:Ljava/lang/String;
    .restart local v8       #sCinr:I
    .restart local v9       #sRssi:I
    :cond_25
    :try_start_25
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, "#"

    invoke-direct {v10, v5, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    .local v10, st:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 1408
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1409
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 1411
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1412
    const/16 v11, -0x7b

    if-eq v9, v11, :cond_7

    .line 1413
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 1415
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1416
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 1418
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1419
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 1421
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1430
    :cond_72
    invoke-virtual {p1}, Landroid/net/wimax/WimaxInfo;->getBSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_82

    .line 1432
    invoke-virtual {p1, v7}, Landroid/net/wimax/WimaxInfo;->setBSID(Ljava/lang/String;)V

    .line 1433
    invoke-direct {p0, v7}, Landroid/net/wimax/WimaxStateTracker;->sendBSIDChangeBroadcast(Ljava/lang/String;)V

    .line 1437
    :cond_82
    invoke-virtual {p1}, Landroid/net/wimax/WimaxInfo;->getFREQ()I

    move-result v11

    if-eq v11, v0, :cond_8e

    .line 1439
    invoke-virtual {p1, v0}, Landroid/net/wimax/WimaxInfo;->setFREQ(I)V

    .line 1440
    invoke-direct {p0, v0}, Landroid/net/wimax/WimaxStateTracker;->sendFrequencyChangeBroadcast(I)V

    .line 1445
    :cond_8e
    invoke-virtual {p1}, Landroid/net/wimax/WimaxInfo;->getRssi()I

    move-result v4

    .line 1446
    .local v4, oldRssi:I
    invoke-virtual {p1}, Landroid/net/wimax/WimaxInfo;->getCINR()I

    move-result v3

    .line 1448
    .local v3, oldCinr:I
    if-ne v4, v9, :cond_9a

    if-eq v3, v8, :cond_d2

    .line 1450
    :cond_9a
    if-eq v4, v9, :cond_a2

    .line 1452
    invoke-virtual {p1, v9}, Landroid/net/wimax/WimaxInfo;->setRssi(I)V

    .line 1453
    invoke-direct {p0, v9}, Landroid/net/wimax/WimaxStateTracker;->sendSignalChangeBroadcast(I)V

    .line 1455
    :cond_a2
    if-eq v3, v8, :cond_a7

    .line 1457
    invoke-virtual {p1, v8}, Landroid/net/wimax/WimaxInfo;->setCINR(I)V

    .line 1463
    :cond_a7
    const/4 v11, 0x4

    invoke-static {v9, v8, v11}, Landroid/net/wimax/WimaxManager;->calculateSignalLevel(III)I

    move-result v1

    .line 1464
    .local v1, nNewSignalLevel:I
    iget v11, p0, Landroid/net/wimax/WimaxStateTracker;->nOldSignalLevel:I

    if-eq v11, v1, :cond_d2

    .line 1466
    iget-boolean v11, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v11, :cond_cd

    const-string v11, "WimaxStateTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "nNewSignalLevel ====> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_cd
    invoke-direct {p0, v1}, Landroid/net/wimax/WimaxStateTracker;->sendSignalLevelChangeBroadcast(I)V

    .line 1468
    iput v1, p0, Landroid/net/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1472
    .end local v1           #nNewSignalLevel:I
    :cond_d2
    invoke-virtual {p1}, Landroid/net/wimax/WimaxInfo;->getTxPower()I

    move-result v11

    if-eq v11, v2, :cond_7

    .line 1474
    invoke-virtual {p1, v2}, Landroid/net/wimax/WimaxInfo;->setTxPower(I)V
    :try_end_db
    .catchall {:try_start_25 .. :try_end_db} :catchall_22

    goto/16 :goto_7
.end method

.method private sendBSIDChangeBroadcast(Ljava/lang/String;)V
    .registers 4
    .parameter "newBsid"

    .prologue
    .line 1496
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.BSID_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newBSID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1501
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private sendConnectionTimeChangeBroadcast(I)V
    .registers 4
    .parameter "newTime"

    .prologue
    .line 1563
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1566
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1568
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private sendDHCPTimeBroadcast(I)V
    .registers 4
    .parameter "newDHCPTime"

    .prologue
    .line 1575
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_DHCP_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newDHCPTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1578
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1580
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private sendFrequencyChangeBroadcast(I)V
    .registers 4
    .parameter "newFreq"

    .prologue
    .line 1504
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.FREQUENCY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newFrequency"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1509
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private sendModeChangeBroadcast(I)V
    .registers 4
    .parameter "usbMode"

    .prologue
    .line 1538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1539
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1540
    const-string/jumbo v1, "usbMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1541
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1542
    return-void
.end method

.method private sendSignalChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1517
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newRSSI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1520
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1522
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private sendSignalLevelChangeBroadcast(I)V
    .registers 4
    .parameter "newSignalLevel"

    .prologue
    .line 1529
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newSignalLevel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1534
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V
    .registers 7
    .parameter "respDataAray"
    .parameter "nRetType"
    .parameter "odbMngState"

    .prologue
    .line 1611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxOMADMRespData"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1613
    const-string v1, "WimaxOMADMRespState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1614
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1615
    return-void
.end method

.method private sendWimaxStateChangeBroadcast()V
    .registers 4

    .prologue
    .line 1546
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1548
    const-string v1, "WimaxState"

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1549
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_25

    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_25

    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v2, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v1, v2, :cond_34

    .line 1551
    :cond_25
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v1, :cond_34

    .line 1552
    const-string v1, "WimaxStateDetail"

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v2}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1554
    :cond_34
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1555
    return-void
.end method

.method private declared-synchronized setPollTimer()V
    .registers 4

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 453
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 450
    :cond_7
    const/4 v0, 0x4

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 451
    const/4 v0, 0x4

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 449
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTornDownByConnMgr(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 291
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 292
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 293
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .registers 9
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1943
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1944
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_18

    .line 1945
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_10} :catch_10

    .line 1954
    .end local v5           #parts:[Ljava/lang/String;
    :catch_10
    move-exception v6

    move-object v4, v6

    .line 1955
    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1948
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    :try_start_19
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1949
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 1950
    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 1951
    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_37} :catch_10

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 1953
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private updateNetworkInfo()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 362
    return-void
.end method


# virtual methods
.method public SetNoBackOff(Z)V
    .registers 2
    .parameter "bNoBackOff"

    .prologue
    .line 1157
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 1158
    return-void
.end method

.method public SetScreenOff(Z)V
    .registers 4
    .parameter "bScreenOff"

    .prologue
    .line 1363
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 1365
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v0, :cond_7

    .line 1377
    :cond_6
    :goto_6
    return-void

    .line 1367
    :cond_7
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v1, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v1, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v1, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v1, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    if-ne v0, v1, :cond_27

    .line 1369
    :cond_1f
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-nez v0, :cond_27

    .line 1370
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/wimax/WimaxNative;->setLinkInfo(Z)V

    .line 1374
    :cond_27
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-eqz v0, :cond_6

    .line 1375
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/wimax/WimaxNative;->setLinkInfo(Z)V

    goto :goto_6
.end method

.method public acquire_WakeLock()V
    .registers 5

    .prologue
    const-string v3, "WimaxStateTracker"

    .line 486
    :try_start_2
    sget-object v1, Landroid/net/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_7

    .line 499
    :cond_6
    :goto_6
    return-void

    .line 487
    :cond_7
    sget-object v1, Landroid/net/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 489
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_6

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock already acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 496
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 497
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "WimaxStateTracker"

    const-string v1, "------WakeLock NullPointerException----------------"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 493
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_25
    :try_start_25
    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock will be acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v1, Landroid/net/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_31} :catch_1b

    goto :goto_6
.end method

.method public clearRetryFlag()V
    .registers 4

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x0

    .line 1244
    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1245
    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1246
    invoke-virtual {p0, v2}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1247
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_17

    const-string v0, "WimaxStateTracker"

    const-string v1, "[clearRetryFlag] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_17
    invoke-virtual {p0, v2}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1250
    :cond_1a
    return-void
.end method

.method public configureInterface()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const-string v3, "WimaxStateTracker"

    .line 1253
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1255
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_22

    .line 1256
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_21

    .line 1257
    const-string v1, "WimaxStateTracker"

    const-string v1, "[configureInterface] !mHaveIpAddress && !mObtainingIpAddress"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1259
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1277
    :cond_21
    :goto_21
    return-void

    .line 1262
    :cond_22
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_21

    .line 1265
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1266
    iput-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1267
    const/4 v0, 0x2

    .line 1268
    .local v0, event:I
    const-string v1, "WimaxStateTracker"

    const-string v1, "Static IP configuration succeeded"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :goto_3a
    invoke-virtual {p0, v0}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessage(I)Z

    goto :goto_21

    .line 1270
    .end local v0           #event:I
    :cond_3e
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1271
    const/4 v0, 0x3

    .line 1272
    .restart local v0       #event:I
    const-string v1, "WimaxStateTracker"

    const-string v1, "Static IP configuration failed"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public declared-synchronized disconnectAndStop()Z
    .registers 4

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 1730
    monitor-enter p0

    :try_start_3
    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    if-eq v0, v1, :cond_1b

    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    .line 1731
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    .line 1732
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1734
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 1736
    invoke-static {}, Landroid/net/wimax/WimaxNative;->disconnectWimax()Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_20

    move-result v0

    .line 1753
    :goto_19
    monitor-exit p0

    return v0

    .line 1751
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->releaseWakeLock()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    move v0, v2

    .line 1753
    goto :goto_19

    .line 1730
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentWimaxState()Landroid/net/wimax/WimaxState;
    .registers 2

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getDnsList()[Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x2

    .line 263
    const-string/jumbo v3, "uwbr0"

    .line 264
    .local v3, interfaceName:Ljava/lang/String;
    new-array v1, v11, [Ljava/lang/String;

    .line 265
    .local v1, dnsAddresses:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 266
    .local v8, value:Ljava/lang/String;
    const/4 v4, 0x0

    .line 268
    .local v4, j:I
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_d
    if-ge v2, v6, :cond_34

    aget-object v7, v0, v2

    .line 269
    .local v7, propName:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_35

    .line 270
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_35

    const-string v9, "0.0.0.0"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_35

    .line 272
    if-ge v5, v11, :cond_35

    .line 273
    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    aput-object v8, v1, v5

    .line 268
    :goto_30
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_d

    .line 278
    .end local v7           #propName:Ljava/lang/String;
    :cond_34
    return-object v1

    .restart local v7       #propName:Ljava/lang/String;
    :cond_35
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_30
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    sget-object v0, Landroid/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wimax/WimaxStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public getNoBackoff()Z
    .registers 2

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    const-string/jumbo v0, "net.tcp.buffersize.wimax"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v9, "WimaxStateTracker"

    .line 929
    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] Received msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_400

    .line 1150
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 934
    :pswitch_26
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;

    .line 936
    .local v3, result:Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    .line 937
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 939
    iget-object v5, v3, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/wimax/WimaxState;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 940
    iget-object v5, v3, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 942
    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] Old state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] New state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " New detailed info is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 945
    invoke-virtual {p0, v3}, Landroid/net/wimax/WimaxStateTracker;->handleWimaxStateChanged(Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;)V

    goto :goto_25

    .line 953
    .end local v3           #result:Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;
    :pswitch_81
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    if-ne v5, v11, :cond_9e

    .line 955
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v5, :cond_92

    .line 957
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-direct {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/wimax/WimaxInfo;)V

    .line 958
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->setPollTimer()V

    goto :goto_25

    .line 962
    :cond_92
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_25

    const-string v5, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ IDLE MODE ^^^^^"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 967
    :cond_9e
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_25

    const-string v5, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ DISCONNECTED ^^^^^"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 971
    :pswitch_ab
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v5}, Landroid/net/wimax/WimaxManager;->release_sWakeLock()V

    goto/16 :goto_25

    .line 974
    :pswitch_b2
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v5}, Landroid/net/wimax/WimaxManager;->startScan()Z

    goto/16 :goto_25

    .line 977
    :pswitch_b9
    invoke-static {v7, v11}, Landroid/net/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 978
    invoke-virtual {p0, v8}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 979
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_cd

    const-string v5, "WimaxStateTracker"

    const-string v5, "[EVENT_VI_REQ] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_cd
    invoke-virtual {p0, v8}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 982
    :cond_d0
    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v8, v5, v6}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_25

    .line 985
    :pswitch_d7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 986
    .local v4, str:Ljava/lang/StringBuffer;
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v5, v5, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v4, v5}, Landroid/net/wimax/WimaxStateTracker;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 988
    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDhcpInfo.netmask:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v6, v6, Landroid/net/DhcpInfo;->netmask:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v5, v5, Landroid/net/DhcpInfo;->netmask:I

    if-ne v5, v7, :cond_114

    .line 990
    const-string v5, "WimaxStateTracker"

    const-string v5, "SystemProperties.set wimax_route"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v5, "ctl.start"

    const-string/jumbo v6, "wimax_route"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_114
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 995
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_144

    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage : DhcpEnd is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpEnd:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_144
    iget-wide v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpEnd:J

    iget-wide v7, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 999
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_171

    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage : DHCP Difference is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_171
    iget v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1002
    iput-boolean v11, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1003
    iput-boolean v10, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1004
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v6, v6, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-virtual {v5, v6}, Landroid/net/wimax/WimaxInfo;->setIpAddress(I)V

    .line 1006
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_1a5

    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetworkInfo.getDetailedState() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_1a5
    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_1f9

    .line 1008
    iput v10, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1009
    iput v10, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1010
    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 1011
    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1012
    invoke-static {}, Landroid/net/wimax/WimaxNative;->IpObtained()Z

    .line 1014
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1015
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1034
    :cond_1c6
    :goto_1c6
    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] >>> IP configuration <<< "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_1f2

    .line 1037
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wimax.NETWORK_IP_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1040
    :cond_1f2
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v5}, Landroid/net/wimax/WimaxManager;->release_sWakeLock()V

    goto/16 :goto_25

    .line 1017
    :cond_1f9
    invoke-static {}, Landroid/net/wimax/WimaxNative;->IpObtained()Z

    .line 1018
    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v6, 0x4

    iget-object v7, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1020
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v5, :cond_1c6

    .line 1022
    const-string v5, "WimaxStateTracker"

    const-string v5, "isIdleState == true"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iput-boolean v10, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    .line 1024
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1026
    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 1027
    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1028
    invoke-static {}, Landroid/net/wimax/WimaxNative;->IpObtained()Z

    .line 1029
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1030
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1c6

    .line 1045
    .end local v4           #str:Ljava/lang/StringBuffer;
    :pswitch_22c
    const-string v5, "WimaxStateTracker"

    const-string v5, "[handleMessage] >>> IP configuration...  failed <<< "

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iput-boolean v10, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1047
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-virtual {v5, v10}, Landroid/net/wimax/WimaxInfo;->setIpAddress(I)V

    .line 1048
    iput-boolean v10, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1050
    iput v7, p0, Landroid/net/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 1051
    iget v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1054
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v5, :cond_26c

    .line 1055
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v5, v11}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1056
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_25b

    .line 1058
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1060
    :cond_25b
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_26c

    .line 1062
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1065
    :cond_26c
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27b

    .line 1066
    const-string v5, "WimaxStateTracker"

    const-string v5, "Could not stop DHCP"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_27b
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_281
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v6, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v5, v6, :cond_28d

    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v6, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-ne v5, v6, :cond_294

    .line 1072
    :cond_28d
    const-string v5, "WimaxStateTracker"

    const-string v6, "[handleMessage:EVENT_INTERFACE_CONFIGURATION_FAILED] b4 disconnectWimax()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_294
    invoke-static {}, Landroid/net/wimax/WimaxNative;->disconnectWimax()Z

    .line 1075
    monitor-exit p0

    goto/16 :goto_25

    :catchall_29a
    move-exception v5

    monitor-exit p0
    :try_end_29c
    .catchall {:try_start_281 .. :try_end_29c} :catchall_29a

    throw v5

    .line 1081
    :pswitch_29d
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_31b

    move v1, v11

    .line 1082
    .local v1, driverStarted:Z
    :goto_2a2
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_2c4

    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage:EVENT_DRIVER_STATE_CHANGED] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_2c4
    if-nez v1, :cond_316

    .line 1084
    iput-boolean v10, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 1087
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v5, v11}, Landroid/net/wimax/WimaxManager;->setWimaxStatus(I)V

    .line 1088
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2e5

    .line 1089
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_2e0

    const-string v5, "WimaxStateTracker"

    const-string v5, "[EVENT_DRIVER_STATE_CHANGED] removeMessage(EVENT_VI_REQ)"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_2e0
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1092
    :cond_2e5
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2fb

    .line 1093
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_2f7

    const-string v5, "WimaxStateTracker"

    const-string v5, "[EVENT_DRIVER_STATE_CHANGED] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_2f7
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1097
    :cond_2fb
    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_31d

    .line 1099
    const-string v5, "WimaxStateTracker"

    const-string v5, "!!!!!!!!!!!!!!!!!set FAILED state When 4G is turned off  before scanning step!!!!!!!!!!!!!!!!!!"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1108
    :goto_311
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v5}, Landroid/net/wimax/WimaxManager;->release_sWakeLock()V

    .line 1111
    :cond_316
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->noteRunState()V

    goto/16 :goto_25

    .end local v1           #driverStarted:Z
    :cond_31b
    move v1, v10

    .line 1081
    goto :goto_2a2

    .line 1104
    .restart local v1       #driverStarted:Z
    :cond_31d
    const-string v5, "WimaxStateTracker"

    const-string v5, "!!!!!!!!!!!!!!!!!set DISCONNECTED state When 4G is turned off  before scanning step!!!!!!!!!!!!!!!!!!"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_311

    .line 1115
    .end local v1           #driverStarted:Z
    :pswitch_32a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;

    .line 1116
    .local v0, auth:Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;
    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] AUTH_FAIL  nErrorCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", strError :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;->strError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "auth_error"

    iget v6, v0, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_25

    .line 1125
    .end local v0           #auth:Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_369
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6, v7}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V

    goto/16 :goto_25

    .line 1128
    :pswitch_376
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxRadioInfoResponseBroadcast()V

    goto/16 :goto_25

    .line 1131
    :pswitch_37b
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_39f

    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] EVENT_LINK_WEAK_INFO : 4G will disconnect. (currentState :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_39f
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v5}, Landroid/net/wimax/WimaxManager;->disconnect()Z

    goto/16 :goto_25

    .line 1136
    :pswitch_3a6
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_3b1

    const-string v5, "WimaxStateTracker"

    const-string v5, "[handleMessage] EVENT_MOCALL_INFO : wait 5sec. "

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_3b1
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1138
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3cc

    .line 1139
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_3c7

    const-string v5, "WimaxStateTracker"

    const-string v5, "[handleMessage] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_3c7
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1142
    :cond_3cc
    const/16 v5, 0x10

    const-wide/16 v6, 0x1388

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_25

    .line 1145
    :pswitch_3d5
    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_3f9

    const-string v5, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] EVENT_MOCALL_FAIL : 4G will disconnect. (currentState :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_3f9
    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v5}, Landroid/net/wimax/WimaxManager;->disconnect()Z

    goto/16 :goto_25

    .line 931
    :pswitch_data_400
    .packed-switch 0x1
        :pswitch_26
        :pswitch_d7
        :pswitch_22c
        :pswitch_81
        :pswitch_25
        :pswitch_ab
        :pswitch_b2
        :pswitch_b9
        :pswitch_29d
        :pswitch_25
        :pswitch_32a
        :pswitch_369
        :pswitch_376
        :pswitch_37b
        :pswitch_3a6
        :pswitch_3d5
    .end packed-switch
.end method

.method public handleWimaxStateChanged(Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;)V
    .registers 13
    .parameter "newWimaxState"

    .prologue
    const/16 v10, 0x10

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "WimaxStateTracker"

    .line 523
    sget-object v4, Landroid/net/wimax/WimaxStateTracker$1;->$SwitchMap$android$net$wimax$WimaxState:[I

    iget-object v5, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/wimax/WimaxState;

    invoke-virtual {v5}, Landroid/net/wimax/WimaxState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_41e

    .line 917
    :cond_14
    :goto_14
    return-void

    .line 527
    :pswitch_15
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    goto :goto_14

    .line 532
    :pswitch_19
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    if-eqz v4, :cond_51

    .line 533
    invoke-direct {p0, v7}, Landroid/net/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    .line 537
    :goto_20
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 541
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/net/wimax/WimaxManager;->setWimaxStatus(I)V

    .line 542
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 544
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v4}, Landroid/net/wimax/WimaxManager;->getWimaxMode()I

    move-result v2

    .line 545
    .local v2, nMode:I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_39

    const/4 v4, 0x2

    if-eq v2, v4, :cond_39

    if-ne v2, v7, :cond_3c

    .line 546
    :cond_39
    invoke-static {v7}, Landroid/net/wimax/WimaxNative;->setBackhaulMode(Z)V

    .line 548
    :cond_3c
    const/4 v4, 0x4

    if-eq v2, v4, :cond_42

    const/4 v4, 0x3

    if-ne v2, v4, :cond_55

    .line 549
    :cond_42
    invoke-static {v7}, Landroid/net/wimax/WimaxNative;->setDMMode(Z)V

    .line 553
    :goto_45
    const/4 v4, 0x2

    iput v4, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    .line 554
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 555
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 556
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 557
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    goto :goto_14

    .line 535
    .end local v2           #nMode:I
    :cond_51
    invoke-direct {p0, v6}, Landroid/net/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    goto :goto_20

    .line 551
    .restart local v2       #nMode:I
    :cond_55
    invoke-static {v6}, Landroid/net/wimax/WimaxNative;->setDMMode(Z)V

    goto :goto_45

    .line 562
    .end local v2           #nMode:I
    :pswitch_59
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 563
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    sget-object v5, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_68

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    sget-object v5, Landroid/net/wimax/WimaxState;->INITIALIZING:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_73

    .line 565
    :cond_68
    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleMessageWimaxStateChanged] nRetryFlag = 0, nScanAttempt = 0"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 567
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 570
    :cond_73
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 572
    invoke-static {}, Landroid/net/wimax/WimaxNative;->getOdbConfigData()[I

    move-result-object v3

    .line 573
    .local v3, nOdbCfgData:[I
    aget v4, v3, v7

    iput v4, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 574
    const/4 v4, 0x2

    aget v4, v3, v4

    iput v4, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 575
    const/4 v4, 0x5

    aget v4, v3, v4

    iput v4, p0, Landroid/net/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 577
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->noteRunState()V

    .line 582
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->checkUseStaticIp()Z

    .line 583
    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "DHCP Handler Thread"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 586
    monitor-enter p0

    .line 587
    :try_start_98
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v4, :cond_a8

    .line 588
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 589
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    .line 591
    :cond_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_e6

    .line 592
    new-instance v4, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5, p0}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;-><init>(Landroid/net/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    .line 593
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 605
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    const-string v5, "WimaxStateTracker"

    invoke-virtual {v4, v9}, Landroid/net/wimax/WimaxManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wimax/WimaxManager$MulticastLock;

    move-result-object v1

    .line 606
    .local v1, l:Landroid/net/wimax/WimaxManager$MulticastLock;
    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager$MulticastLock;->acquire()V

    .line 607
    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager$MulticastLock;->release()V

    .line 609
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    .line 610
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 612
    sget-object v4, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 613
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 615
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 616
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 618
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-nez v4, :cond_e9

    .line 619
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v4}, Landroid/net/wimax/WimaxManager;->startScan()Z

    goto/16 :goto_14

    .line 591
    .end local v1           #l:Landroid/net/wimax/WimaxManager$MulticastLock;
    :catchall_e6
    move-exception v4

    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v4

    .line 621
    .restart local v1       #l:Landroid/net/wimax/WimaxManager$MulticastLock;
    :cond_e9
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 622
    const/4 v4, -0x1

    invoke-static {v4, v7}, Landroid/net/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 623
    invoke-virtual {p0, v8}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 624
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_101

    const-string v4, "WimaxStateTracker"

    const-string v4, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_101
    invoke-virtual {p0, v8}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 627
    :cond_104
    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v8, v4, v5}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14

    .line 634
    .end local v0           #dhcpThread:Landroid/os/HandlerThread;
    .end local v1           #l:Landroid/net/wimax/WimaxManager$MulticastLock;
    .end local v3           #nOdbCfgData:[I
    :pswitch_10b
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 635
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    .line 636
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 637
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_14

    .line 642
    :pswitch_119
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 643
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 645
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 646
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 648
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->checkUseStaticIp()Z

    .line 650
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-direct {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/wimax/WimaxInfo;)V

    .line 651
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->setPollTimer()V

    .line 653
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v4, :cond_13d

    .line 654
    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleWimaxStateChanged : READY] USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 658
    :cond_13d
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 659
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 661
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/net/wimax/WimaxManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_14

    .line 663
    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleWimaxStateChanged : READY] connect() returns fail."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    .line 665
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 667
    sget-object v4, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 668
    sget-object v4, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 670
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 671
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_14

    .line 677
    :pswitch_176
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 678
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_14

    .line 685
    :pswitch_180
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->configureInterface()V

    .line 688
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 689
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_1b3

    const-string v4, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleMessage : DhcpStart is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_1b3
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 692
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_14

    .line 698
    :pswitch_1bd
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_1db

    const-string v4, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHaveIpAddress :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1db
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    if-ne v4, v7, :cond_1f8

    .line 702
    invoke-virtual {p0, v10}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1f3

    .line 703
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_1f0

    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleMessageWimaxStateChanged] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_1f0
    invoke-virtual {p0, v10}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 706
    :cond_1f3
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    .line 708
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->setPollTimer()V

    .line 711
    :cond_1f8
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v4, :cond_261

    .line 712
    const-string v4, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleMessageWimaxStateChanged] nRetryFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->configureInterface()V

    .line 714
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 715
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 716
    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_22b

    .line 718
    iput-boolean v7, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    .line 720
    :cond_22b
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 721
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 723
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v4}, Landroid/net/wimax/WimaxManager;->release_sWakeLock()V

    .line 739
    :goto_238
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v4, :cond_14

    .line 741
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_25a

    const-string v4, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CONNECTED] m_bScreenOff :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_25a
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto/16 :goto_14

    .line 725
    :cond_261
    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleMessageWimaxStateChanged] No IP Address -> setDetailedState.OBTAINING_IPADDR"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object v4, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 727
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 731
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->configureInterface()V

    .line 734
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 735
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 736
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_238

    .line 749
    :pswitch_286
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    goto/16 :goto_14

    .line 755
    :pswitch_28b
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 757
    invoke-virtual {p0, v10}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2a2

    .line 758
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_29f

    const-string v4, "WimaxStateTracker"

    const-string v4, "[DISCONNECTED] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_29f
    invoke-virtual {p0, v10}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 762
    :cond_2a2
    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v4, :cond_2c5

    .line 764
    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_2c5

    .line 766
    const-string v4, "WimaxStateTracker"

    const-string v4, "-------- Abnormal_State  ----------"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-boolean v7, p0, Landroid/net/wimax/WimaxStateTracker;->mModemReset:Z

    .line 768
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 769
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 770
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 771
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->resetInterface()V

    .line 772
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v4, v7}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    goto/16 :goto_14

    .line 832
    :cond_2c5
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 833
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->resetLinkStatusInfo()V

    .line 835
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 836
    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_335

    .line 838
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_2e2

    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleMessageWimaxStateChanged] ^^^ DetailedState.DISCONNECTED ^^^"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_2e2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 847
    :goto_2e7
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v4, :cond_34a

    .line 849
    const-string v4, "WimaxStateTracker"

    const-string v4, "USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v4}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v4

    if-eqz v4, :cond_30b

    .line 852
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_306

    const-string v4, "WimaxStateTracker"

    const-string/jumbo v4, "setWimaxStatus(WIMAX_STATUS_DISABLING)"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_306
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v4, v6}, Landroid/net/wimax/WimaxManager;->setWimaxStatus(I)V

    .line 855
    :cond_30b
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 856
    iput v6, p0, Landroid/net/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 858
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->resetInterface()V

    .line 860
    invoke-static {}, Landroid/net/wimax/WimaxNative;->stopWimax()Z

    move-result v4

    if-nez v4, :cond_31f

    .line 861
    const-string v4, "WimaxStateTracker"

    const-string v4, "Failed to stop Wimax."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_31f
    invoke-static {v6}, Landroid/net/wimax/WimaxNative;->loadDriver(B)Z

    move-result v4

    if-nez v4, :cond_346

    .line 865
    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleMessageWimaxStateChanged] Failed to unload Wimax driver."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v4}, Landroid/net/wimax/WimaxManager;->release_sWakeLock()V

    .line 870
    :goto_331
    iput-boolean v6, p0, Landroid/net/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    goto/16 :goto_14

    .line 843
    :cond_335
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_340

    const-string v4, "WimaxStateTracker"

    const-string v4, "[handleMessageWimaxStateChanged] ^^^ DetailedState.FAILED ^^^"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_340
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_2e7

    .line 868
    :cond_346
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->notifyDriverStopped()V

    goto :goto_331

    .line 874
    :cond_34a
    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/wimax/WimaxState;

    sget-object v5, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_360

    .line 876
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_35b

    const-string v4, "WimaxStateTracker"

    const-string v4, "Fail for Connect command !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_35b
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_14

    .line 881
    :cond_360
    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_Sync:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v4, v5, :cond_36c

    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_38f

    .line 883
    :cond_36c
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_38a

    const-string v4, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection Time out !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_38a
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_14

    .line 886
    :cond_38f
    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v4, v5, :cond_39b

    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_MAC:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_3be

    .line 888
    :cond_39b
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_3b9

    const-string v4, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_3b9
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_14

    .line 891
    :cond_3be
    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_Device:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v4, v5, :cond_3ca

    iget-object v4, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_User:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_3ed

    .line 893
    :cond_3ca
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_3e8

    const-string v4, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auth Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_3e8
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_14

    .line 898
    :cond_3ed
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_3f8

    const-string v4, "WimaxStateTracker"

    const-string v4, "Virtual IDLE!!!!!!!!!!!!!! "

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_3f8
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_410

    .line 901
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_40b

    const-string v4, "WimaxStateTracker"

    const-string v4, "[DISCONNECTED] removeMessage(EVENT_VI_REQ)"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_40b
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 904
    :cond_410
    invoke-virtual {p0, v8}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_14

    .line 906
    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v8, v4, v5}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14

    .line 523
    nop

    :pswitch_data_41e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_19
        :pswitch_59
        :pswitch_10b
        :pswitch_119
        :pswitch_176
        :pswitch_180
        :pswitch_1bd
        :pswitch_286
        :pswitch_28b
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .registers 2

    .prologue
    .line 378
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .registers 5

    .prologue
    .line 342
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_11

    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->INITIALIZING:Landroid/net/wimax/WimaxState;

    if-ne v1, v2, :cond_1b

    :cond_11
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_1b

    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->isDriverStopped()Z

    move-result v1

    if-nez v1, :cond_37

    :cond_1b
    const/4 v1, 0x1

    move v0, v1

    .line 344
    .local v0, bRet:Z
    :goto_1d
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable() !!!!!!!!!!!!!!!!!!!!!!!! return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3a

    .line 345
    monitor-exit p0

    return v0

    .line 342
    .end local v0           #bRet:Z
    :cond_37
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1d

    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isBootCompleted(Z)V
    .registers 2
    .parameter "bCompleted"

    .prologue
    .line 1677
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 1678
    return-void
.end method

.method public isConnectionCompleted()Z
    .registers 3

    .prologue
    .line 369
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxStateTracker"

    const-string v1, "isConnectionCompleted() !!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_b
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method notifyAuthFail(ILjava/lang/String;)V
    .registers 6
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 404
    const/16 v1, 0xb

    new-instance v2, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;

    invoke-direct {v2, p1, p2}, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 408
    return-void
.end method

.method notifyDriverStarted()V
    .registers 4

    .prologue
    .line 426
    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 427
    return-void
.end method

.method public notifyDriverStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 414
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    .line 417
    const/16 v0, 0x9

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return-void
.end method

.method public notifyIpRenew()V
    .registers 3

    .prologue
    .line 395
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v0, :cond_1a

    .line 396
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v0, v1, :cond_1a

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 398
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 401
    :cond_1a
    return-void
.end method

.method public notifyLinkWeakInformation()V
    .registers 2

    .prologue
    .line 437
    const/16 v0, 0xe

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void
.end method

.method public notifyMoCallInformation()V
    .registers 2

    .prologue
    .line 441
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 442
    return-void
.end method

.method public notifyOMADMResponse(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .parameter "bDataArray"
    .parameter "nDataLen"
    .parameter "odbMngState"

    .prologue
    .line 430
    const/16 v0, 0xc

    invoke-static {p0, v0, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 431
    return-void
.end method

.method public notifyRadioInfoResponse()V
    .registers 2

    .prologue
    .line 433
    const/16 v0, 0xd

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method public notifyStateChange(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 6
    .parameter "newWimaxState"
    .parameter "newInfo"

    .prologue
    .line 387
    const/4 v1, 0x1

    new-instance v2, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;

    invoke-direct {v2, p1, p2}, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;-><init>(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 390
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void
.end method

.method public reconnect()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "WimaxStateTracker"

    .line 1684
    const-string v1, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reconnect] mTornDownByConnMgr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  getCurrentWimaxState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getWimaxStatus()  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v2}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getPersistedWimaxEnabled()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1695
    const-string v1, "WimaxStateTracker"

    const-string v1, "[reconnect] This is NOT by User request.... reject..."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1715
    :goto_4c
    return v1

    .line 1698
    :cond_4d
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    if-nez v1, :cond_5a

    .line 1700
    const-string v1, "WimaxStateTracker"

    const-string v1, "[reconnect] m_isBootCompleted is false "

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1701
    goto :goto_4c

    .line 1703
    :cond_5a
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v1

    if-eq v1, v5, :cond_6a

    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v1

    if-nez v1, :cond_76

    .line 1705
    :cond_6a
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1, v5}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    move-result v0

    .line 1706
    .local v0, bRet:Z
    if-eqz v0, :cond_74

    .line 1708
    iput-boolean v3, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    :cond_74
    move v1, v0

    .line 1710
    goto :goto_4c

    .line 1714
    .end local v0           #bRet:Z
    :cond_76
    const-string v1, "WimaxStateTracker"

    const-string v1, "[reconnect] 4G want to reconnect by backoff algorithm."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1715
    goto :goto_4c
.end method

.method public releaseWakeLock()V
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 475
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 477
    :cond_9
    return-void
.end method

.method public requestConnectionInfo()Landroid/net/wimax/WimaxInfo;
    .registers 2

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-direct {p0, v0}, Landroid/net/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/wimax/WimaxInfo;)V

    .line 1359
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    return-object v0
.end method

.method public resetInterface()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 1305
    iput-boolean v2, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1306
    iput-boolean v2, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1307
    iput-boolean v2, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1308
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-virtual {v0, v2}, Landroid/net/wimax/WimaxInfo;->setIpAddress(I)V

    .line 1315
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1316
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v0, :cond_3f

    .line 1320
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1321
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v0, v3}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1323
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v0, v3}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1325
    :cond_32
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v0, v4}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1327
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v0, v4}, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1330
    :cond_3f
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1331
    const-string v0, "WimaxStateTracker"

    const-string v1, "[resetInterface] Could not stop DHCP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_4e
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1336
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 1337
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v2, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 1338
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v2, v0, Landroid/net/DhcpInfo;->netmask:I

    .line 1339
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v2, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 1340
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v2, v0, Landroid/net/DhcpInfo;->dns2:I

    .line 1341
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v2, v0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 1342
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v2, v0, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 1343
    return-void
.end method

.method public resetLinkStatusInfo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1285
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setBSID(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-virtual {v0, v2}, Landroid/net/wimax/WimaxInfo;->setFREQ(I)V

    .line 1287
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    const/16 v1, -0x270f

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setRssi(I)V

    .line 1288
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-virtual {v0, v2}, Landroid/net/wimax/WimaxInfo;->setCINR(I)V

    .line 1289
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-virtual {v0, v2}, Landroid/net/wimax/WimaxInfo;->setTxPower(I)V

    .line 1290
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1291
    sget-object v0, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    .line 1292
    sget-object v0, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1293
    invoke-direct {p0}, Landroid/net/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1294
    return-void
.end method

.method public resetOldState()V
    .registers 2

    .prologue
    .line 1297
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxMonitor;->resetOldState()V

    .line 1298
    return-void
.end method

.method public declared-synchronized restart()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1757
    monitor-enter p0

    :try_start_2
    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 1758
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    move v0, v2

    .line 1763
    :goto_b
    monitor-exit p0

    return v0

    .line 1760
    :cond_d
    :try_start_d
    iget v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 1761
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    :cond_15
    move v0, v2

    .line 1763
    goto :goto_b

    .line 1757
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sendMruListBroadcast(I)V
    .registers 4
    .parameter "nlistSize"

    .prologue
    .line 1583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1585
    const-string v1, "MruList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1586
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1587
    return-void
.end method

.method sendMruUpdateBroadcast(II)V
    .registers 5
    .parameter "subType"
    .parameter "ErrorValue"

    .prologue
    .line 1590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1592
    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1593
    const-string v1, "ErrorValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1594
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1595
    return-void
.end method

.method sendWimaxRadioInfoResponseBroadcast()V
    .registers 4

    .prologue
    .line 1598
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxRadioInfo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1600
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1601
    return-void
.end method

.method public sendWorkModeBroadCast(I)V
    .registers 4
    .parameter "workMode"

    .prologue
    .line 1603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_WORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxWorkMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1606
    return-void
.end method

.method public setEnableLog(Z)V
    .registers 4
    .parameter "blog"

    .prologue
    .line 1804
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    .line 1805
    iget-boolean v0, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-static {v0}, Landroid/net/wimax/WimaxNative;->setEnableLog(Z)V

    .line 1806
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/wimax/WimaxMonitor;

    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxMonitor;->setEnableLog(Z)V

    .line 1807
    return-void
.end method

.method public setHaveLinkInfo(Z)V
    .registers 2
    .parameter "mHaveLinkInfo"

    .prologue
    .line 2069
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 2070
    return-void
.end method

.method public setIdleState(Z)V
    .registers 2
    .parameter "mIdleState"

    .prologue
    .line 2073
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker;->isIdleState:Z

    .line 2074
    return-void
.end method

.method public setRadio(Z)Z
    .registers 6
    .parameter "turnOn"

    .prologue
    .line 1768
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v0

    .line 1769
    .local v0, nWimaxStatus:I
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRadio]  nWimaxStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 1778
    :cond_24
    const/4 v1, 0x0

    .line 1780
    :goto_25
    return v1

    :cond_26
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1, p1}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    move-result v1

    goto :goto_25
.end method

.method public setReleaseWakeLockCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 502
    iput-object p1, p0, Landroid/net/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    .line 503
    return-void
.end method

.method public setUSBTo(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    .line 1619
    if-eqz p1, :cond_33

    .line 1620
    sget-object v0, Landroid/net/wimax/WimaxStateTracker;->WiMAX:[B

    .line 1623
    .local v0, data:[B
    :goto_4
    iget-boolean v4, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_21

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUSBTo  enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_21
    const/4 v2, 0x0

    .line 1627
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_22
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_43
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_36

    .line 1628
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_29
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_51

    .line 1632
    if-eqz v3, :cond_31

    .line 1633
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4c

    :cond_31
    :goto_31
    move-object v2, v3

    .line 1636
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_32
    :goto_32
    return-void

    .line 1622
    .end local v0           #data:[B
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_33
    sget-object v0, Landroid/net/wimax/WimaxStateTracker;->PDA:[B

    .restart local v0       #data:[B
    goto :goto_4

    .line 1629
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_36
    move-exception v4

    move-object v1, v4

    .line 1630
    .local v1, e:Ljava/io/IOException;
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 1632
    if-eqz v2, :cond_32

    .line 1633
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_32

    :catch_41
    move-exception v4

    goto :goto_32

    .line 1632
    .end local v1           #e:Ljava/io/IOException;
    :catchall_43
    move-exception v4

    :goto_44
    if-eqz v2, :cond_49

    .line 1633
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 1632
    :cond_49
    :goto_49
    throw v4

    .line 1633
    :catch_4a
    move-exception v5

    goto :goto_49

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4c
    move-exception v4

    goto :goto_31

    .line 1632
    :catchall_4e
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_44

    .line 1629
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_51
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_38
.end method

.method public setUsbUnPlugged()V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const-string v4, "WimaxStateTracker"

    .line 506
    const-string v1, "WimaxStateTracker"

    const-string/jumbo v1, "setUsbUnPlugged"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Landroid/net/wimax/WimaxNative;->setDeviceStateToVirtualIdle()V

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    const-string v1, "WimaxState"

    sget-object v2, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 514
    invoke-virtual {p0, v3}, Landroid/net/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 515
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_38

    const-string v1, "WimaxStateTracker"

    const-string v1, "[setUsbUnPlugged] removeMessage(EVENT_VI_REQ)"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_38
    invoke-virtual {p0, v3}, Landroid/net/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 518
    :cond_3b
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v3, v1, v2}, Landroid/net/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 519
    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .parameter "wl"

    .prologue
    .line 480
    sput-object p1, Landroid/net/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 481
    return-void
.end method

.method public startEventLoop()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxMonitor;->startMonitoring()V

    .line 330
    return-void
.end method

.method public startMonitoring()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "WiMax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wimax/WimaxManager;

    iput-object v0, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    .line 326
    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 1790
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 1800
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v6, "[teardown] state("

    const-string v4, "WimaxStateTracker"

    .line 1642
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_ab

    .line 1643
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v2, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-ne v1, v2, :cond_4e

    .line 1645
    :cond_1c
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_40

    const-string v1, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[teardown] state("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") DisconnectWimax"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_40
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->resetInterface()V

    .line 1647
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->disconnectAndStop()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1648
    invoke-direct {p0, v3}, Landroid/net/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    move v1, v3

    .line 1672
    :goto_4d
    return v1

    .line 1652
    :cond_4e
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mWM:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v0

    .line 1653
    .local v0, wimaxStatus:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a2

    .line 1655
    :cond_5a
    iput-boolean v3, p0, Landroid/net/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 1656
    iget-boolean v1, p0, Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_80

    const-string v1, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[teardown] state("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/wimax/WimaxState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") stopWimax"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_80
    invoke-static {}, Landroid/net/wimax/WimaxNative;->stopWimax()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1658
    const-string v1, "WimaxStateTracker"

    const-string v1, "[teardown] fail to stop wimax.."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_8d
    invoke-static {v5}, Landroid/net/wimax/WimaxNative;->loadDriver(B)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1662
    invoke-direct {p0, v3}, Landroid/net/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 1663
    invoke-virtual {p0}, Landroid/net/wimax/WimaxStateTracker;->notifyDriverStopped()V

    move v1, v3

    .line 1664
    goto :goto_4d

    .line 1666
    :cond_9b
    const-string v1, "WimaxStateTracker"

    const-string v1, "[teardown] fail to turn wimax off"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_a2
    const-string v1, "WimaxStateTracker"

    const-string v1, "[teardown] already turned off"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1669
    goto :goto_4d

    .end local v0           #wimaxStatus:I
    :cond_ab
    move v1, v5

    .line 1672
    goto :goto_4d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1811
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1812
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1813
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1814
    iget v1, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    if-lt v1, v3, :cond_6f

    iget v1, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    sget-object v2, Landroid/net/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_6f

    .line 1815
    sget-object v1, Landroid/net/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1819
    :goto_2b
    sget-object v1, Landroid/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/WimaxStateTracker;->mWimaxInfo:Landroid/net/wimax/WimaxInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1820
    iget-object v1, p0, Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1821
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1824
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1817
    :cond_6f
    iget v1, p0, Landroid/net/wimax/WimaxStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2b
.end method
