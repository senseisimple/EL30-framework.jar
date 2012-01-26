.class public Landroid/net/wimax/WimaxManager;
.super Ljava/lang/Object;
.source "WimaxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wimax/WimaxManager$1;,
        Landroid/net/wimax/WimaxManager$MulticastLock;,
        Landroid/net/wimax/WimaxManager$WimaxLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIMAX_NETWORK:Ljava/lang/String; = "android.net.wimax.PICK_WIMAX_NETWORK"

.field private static final AUTHENTICATION_FAILED:I = 0x4

.field public static final BSID_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.BSID_CHANGED"

.field private static final CONNECTION_IN_PROGRESS:I = 0xa

.field private static final COVERAGE_NOT_AVAILABLE:I = 0x2

.field private static final DEVICE_ALREADY_CONNECTED:I = 0x1

.field private static final DEVICE_NOT_PROVISIONED:I = 0x5

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_MODE:Ljava/lang/String; = "usbMode"

.field public static final EXTRA_NEW_BSID:Ljava/lang/String; = "newBSID"

.field public static final EXTRA_NEW_FREQUENCY:Ljava/lang/String; = "newFrequency"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRSSI"

.field public static final EXTRA_NEW_SIGNAL_LEVEL:Ljava/lang/String; = "newSignalLevel"

.field public static final EXTRA_NEW_TIME:Ljava/lang/String; = "newTime"

.field public static final EXTRA_PREVIOUS_WIMAX_STATUS:Ljava/lang/String; = "previous_wimax_status"

.field public static final EXTRA_WIMAX_AUTH_ERROR:Ljava/lang/String; = "auth_error"

.field public static final EXTRA_WIMAX_DHCP_TIME:Ljava/lang/String; = "newDHCPTime"

.field public static final EXTRA_WIMAX_MRU_LIST:Ljava/lang/String; = "MruList"

.field public static final EXTRA_WIMAX_MRU_UPDATE_ERRORVALUE:Ljava/lang/String; = "ErrorValue"

.field public static final EXTRA_WIMAX_MRU_UPDATE_SUBTYPE:Ljava/lang/String; = "subType"

.field public static final EXTRA_WIMAX_OMADM_RESP_DATA:Ljava/lang/String; = "WimaxOMADMRespData"

.field public static final EXTRA_WIMAX_OMADM_RESP_STATE:Ljava/lang/String; = "WimaxOMADMRespState"

.field public static final EXTRA_WIMAX_RADIO_INFO:Ljava/lang/String; = "WimaxRadioInfo"

.field public static final EXTRA_WIMAX_STATE:Ljava/lang/String; = "WimaxState"

.field public static final EXTRA_WIMAX_STATE_DETAIL:Ljava/lang/String; = "WimaxStateDetail"

.field public static final EXTRA_WIMAX_STATUS:Ljava/lang/String; = "wimax_status"

.field public static final EXTRA_WIMAX_WORK_MODE:Ljava/lang/String; = "WimaxWorkMode"

.field public static final FREQUENCY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.FREQUENCY_CHANGED"

.field private static final INDICATES_SUCCESSFUL_COMPLETION_OF_THE_OPERATION:I = 0x0

.field private static final INVALID_DEVICE_PROFILE:I = 0x9

.field private static final INVALID_PARAMETER_PASSED:I = 0x6

.field private static final LINK_ALREADY_CONNECTED:I = 0x8

.field private static final LINK_NOT_CONNECTED:I = 0x7

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final METHOD_NOT_IMPLEMENTED:I = -0x1

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.MODE_CHANGED"

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.NETWORK_IDS_CHANGED"

.field public static final NETWORK_IP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.NETWORK_IP_CHANGED"

.field private static final RADIO_IS_TURNED_OFF:I = 0xe

.field private static final RADIO_POLICY_VIOLATED:I = 0xd

.field private static final ROAMING_NOT_SUPPORTED:I = 0x3

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.RSSI_CHANGED"

.field public static final SIGNAL_LEVEL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.SIGNAL_LEVEL_CHANGED"

.field private static final SYNCHRONOUS_SCAN_REQUEST_TAKING_TOO_LONG:I = 0xb

.field private static final TAG:Ljava/lang/String; = "WimaxManager"

.field public static final TIME_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.TIME_CHANGED"

.field public static final WIMAX_AUTH_ERROR:Ljava/lang/String; = "android.net.wimax.WIMAX_AUTH_ERROR"

.field public static final WIMAX_DHCP_TIME_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_DHCP_TIME"

.field public static final WIMAX_FACTORY_DEFAULT_ALL:I = 0x2

.field public static final WIMAX_FACTORY_DEFAULT_GDB:I = 0x0

.field public static final WIMAX_FACTORY_DEFAULT_ODB:I = 0x1

.field public static final WIMAX_IDLE_WHILE_AP_SLEEP:I = 0x1

.field public static final WIMAX_MODE_BACKHAUL:I = 0x2

.field public static final WIMAX_MODE_DM_BACKHAUL:I = 0x4

.field public static final WIMAX_MODE_DM_NORMAL:I = 0x3

.field public static final WIMAX_MODE_FULL:I = 0x1

.field public static final WIMAX_MODE_NORMAL:I = 0x0

.field public static final WIMAX_MODE_SCAN_ONLY:I = 0x2

.field public static final WIMAX_MODE_TETHERED:I = 0x1

.field private static final WIMAX_RADIO_OVERHEAT:I = 0xc

.field public static final WIMAX_RESPONSE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_RESPONSE"

.field public static final WIMAX_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_STATE_CHANGE"

.field public static final WIMAX_STATUS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_STATUS_CHANGED"

.field public static final WIMAX_STATUS_DISABLED:I = 0x1

.field public static final WIMAX_STATUS_DISABLING:I = 0x0

.field public static final WIMAX_STATUS_ENABLED:I = 0x3

.field public static final WIMAX_STATUS_ENABLING:I = 0x2

.field public static final WIMAX_STATUS_UNKNOWN:I = 0x4

.field public static final WIMAX_VI_WHILE_AP_SLEEP:I = 0x0

.field public static final WIMAX_WORK_MODE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_WORK_MODE"

.field public static final WORK_MODE_STATE_0:I = 0x0

.field public static final WORK_MODE_STATE_1:I = 0x1

.field public static final WORK_MODE_STATE_2:I = 0x2

.field public static final WORK_MODE_STATE_3:I = 0x3


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wimax/IWimaxManager;


# direct methods
.method public constructor <init>(Landroid/net/wimax/IWimaxManager;Landroid/os/Handler;)V
    .registers 3
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    .line 374
    iput-object p2, p0, Landroid/net/wimax/WimaxManager;->mHandler:Landroid/os/Handler;

    .line 375
    return-void
.end method

.method private static CheckRSSILevel(I)I
    .registers 5
    .parameter "nRSSI"

    .prologue
    const/4 v3, 0x3

    const/16 v2, -0x3c

    const/16 v1, -0x4b

    const/16 v0, -0x5d

    .line 604
    if-ge p0, v0, :cond_b

    .line 606
    const/4 v0, 0x0

    .line 620
    :goto_a
    return v0

    .line 608
    :cond_b
    if-gt v0, p0, :cond_11

    if-ge p0, v1, :cond_11

    .line 610
    const/4 v0, 0x1

    goto :goto_a

    .line 612
    :cond_11
    if-gt v1, p0, :cond_17

    if-ge p0, v2, :cond_17

    .line 614
    const/4 v0, 0x2

    goto :goto_a

    .line 616
    :cond_17
    if-gt v2, p0, :cond_1b

    move v0, v3

    .line 618
    goto :goto_a

    :cond_1b
    move v0, v3

    .line 620
    goto :goto_a
.end method

.method static synthetic access$000(Landroid/net/wimax/WimaxManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wimax/WimaxManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wimax/WimaxManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wimax/WimaxManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wimax/WimaxManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wimax/WimaxManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wimax/WimaxManager;->mActiveLockCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/wimax/WimaxManager;->mActiveLockCount:I

    return v0
.end method

.method public static calculateSignalLevel(III)I
    .registers 5
    .parameter "nRSSI"
    .parameter "nCINR"
    .parameter "numLevels"

    .prologue
    .line 593
    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    .line 594
    const/4 v1, 0x6

    .line 599
    :goto_4
    return v1

    .line 596
    :cond_5
    const/4 v0, 0x0

    .line 598
    .local v0, dwRssiStep:I
    invoke-static {p0}, Landroid/net/wimax/WimaxManager;->CheckRSSILevel(I)I

    move-result v0

    move v1, v0

    .line 599
    goto :goto_4
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 706
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public CheckWimaxState()Z
    .registers 3

    .prologue
    .line 690
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->CheckWimaxState()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 692
    :goto_6
    return v1

    .line 691
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 692
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public OdbAddReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 833
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->OdbAddReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 835
    :goto_6
    return v1

    .line 834
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 835
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbDeleteReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 842
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->OdbDeleteReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 844
    :goto_6
    return v1

    .line 843
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 844
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbReadReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 806
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->OdbReadReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 808
    :goto_6
    return v1

    .line 807
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 808
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbUpdateReq()I
    .registers 3

    .prologue
    .line 824
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->OdbUpdateReq()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 826
    :goto_6
    return v1

    .line 825
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 826
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbWriteReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->OdbWriteReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 817
    :goto_6
    return v1

    .line 816
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 817
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public checkUSBstate()Z
    .registers 3

    .prologue
    .line 746
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->checkUSBstate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 748
    :goto_6
    return v1

    .line 747
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 748
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "homeNspName"
    .parameter "roamingNspName"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    .line 643
    const-string v1, ""

    if-eq p2, v1, :cond_6

    .line 644
    const/4 v1, 0x6

    .line 650
    :goto_5
    return v1

    .line 648
    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/wimax/IWimaxManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 649
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 650
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_5
.end method

.method public connectDefaultNetwork()I
    .registers 3

    .prologue
    const-string v1, ""

    .line 638
    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/net/wimax/WimaxManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wimax/WimaxManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1089
    new-instance v0, Landroid/net/wimax/WimaxManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wimax/WimaxManager$MulticastLock;-><init>(Landroid/net/wimax/WimaxManager;Ljava/lang/String;Landroid/net/wimax/WimaxManager$1;)V

    return-object v0
.end method

.method public createWimaxLock(ILjava/lang/String;)Landroid/net/wimax/WimaxManager$WimaxLock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1055
    new-instance v0, Landroid/net/wimax/WimaxManager$WimaxLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wimax/WimaxManager$WimaxLock;-><init>(Landroid/net/wimax/WimaxManager;ILjava/lang/String;Landroid/net/wimax/WimaxManager$1;)V

    return-object v0
.end method

.method public createWimaxLock(Ljava/lang/String;)Landroid/net/wimax/WimaxManager$WimaxLock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1071
    new-instance v0, Landroid/net/wimax/WimaxManager$WimaxLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wimax/WimaxManager$WimaxLock;-><init>(Landroid/net/wimax/WimaxManager;ILjava/lang/String;Landroid/net/wimax/WimaxManager$1;)V

    return-object v0
.end method

.method public deleteStaticIP()I
    .registers 3

    .prologue
    .line 1291
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->deleteStaticIP()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1293
    :goto_6
    return v1

    .line 1292
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1293
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 664
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->disconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 666
    :goto_6
    return v1

    .line 665
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 666
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/structs/NspInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getAvailableNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 758
    :goto_6
    return-object v1

    .line 757
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectedNSP()Landroid/net/wimax/structs/NspInfo;
    .registers 3

    .prologue
    .line 772
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getConnectedNSP()Landroid/net/wimax/structs/NspInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 774
    :goto_6
    return-object v1

    .line 773
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 774
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wimax/WimaxInfo;
    .registers 3

    .prologue
    .line 383
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getConnectionInfo()Landroid/net/wimax/WimaxInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 385
    :goto_6
    return-object v1

    .line 384
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 385
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionStatistics()Landroid/net/wimax/ConnectionStatistics;
    .registers 3

    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getConnectionStatistics()Landroid/net/wimax/ConnectionStatistics;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 782
    :goto_6
    return-object v1

    .line 781
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 782
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDeviceInformation()Landroid/net/wimax/DeviceInfo;
    .registers 3

    .prologue
    .line 788
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getDeviceInformation()Landroid/net/wimax/DeviceInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 790
    :goto_6
    return-object v1

    .line 789
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 790
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 407
    :goto_6
    return-object v1

    .line 406
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMruList()V
    .registers 4

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getMruList()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 469
    :goto_5
    return-void

    .line 465
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 467
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WimaxManager"

    const-string v2, "------getMruList RemoteException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMruListRsp()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/MruList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getMruListRsp()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 475
    :goto_6
    return-object v1

    .line 474
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMruUpdate(Ljava/util/List;I)Z
    .registers 15
    .parameter
    .parameter "nSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/MruList;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/MruList;>;"
    const/4 v11, 0x0

    const-string v8, "#"

    .line 480
    const-string v8, "getMruUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMruUpdate nSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-nez p2, :cond_26

    .line 483
    :try_start_1d
    iget-object v8, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    const-string v9, ""

    invoke-interface {v8, v9, p2}, Landroid/net/wimax/IWimaxManager;->getMruUpdate(Ljava/lang/String;I)Z

    move-result v8

    .line 507
    :goto_25
    return v8

    .line 485
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 486
    .local v5, nListSize:I
    if-eq p2, v5, :cond_2e

    move v8, v11

    .line 487
    goto :goto_25

    .line 490
    :cond_2e
    const-string v6, ""

    .line 492
    .local v6, strUpdate:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_31
    if-ge v3, p2, :cond_b5

    .line 493
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wimax/MruList;

    .line 495
    .local v7, temp:Landroid/net/wimax/MruList;
    invoke-virtual {v7}, Landroid/net/wimax/MruList;->getCenterfrequency()I

    move-result v4

    .line 496
    .local v4, nCF:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 497
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 498
    invoke-virtual {v7}, Landroid/net/wimax/MruList;->getBW()B

    move-result v0

    .line 499
    .local v0, bw:B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 500
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 501
    invoke-virtual {v7}, Landroid/net/wimax/MruList;->getFFTSize()B

    move-result v2

    .line 502
    .local v2, fft:B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 505
    .end local v0           #bw:B
    .end local v2           #fft:B
    .end local v4           #nCF:I
    .end local v7           #temp:Landroid/net/wimax/MruList;
    :cond_b5
    iget-object v8, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v8, v6, p2}, Landroid/net/wimax/IWimaxManager;->getMruUpdate(Ljava/lang/String;I)Z
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_ba} :catch_bd

    move-result v8

    goto/16 :goto_25

    .line 506
    .end local v3           #i:I
    .end local v5           #nListSize:I
    .end local v6           #strUpdate:Ljava/lang/String;
    :catch_bd
    move-exception v8

    move-object v1, v8

    .local v1, e:Landroid/os/RemoteException;
    move v8, v11

    .line 507
    goto/16 :goto_25
.end method

.method public getNeighborList()V
    .registers 4

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getNeighborList()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 418
    :goto_5
    return-void

    .line 414
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 416
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WimaxManager"

    const-string v2, "------getNeighborList RemoteException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getNetworkConnectionSetting()I
    .registers 3

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getNetworkConnectionSetting()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 881
    :goto_6
    return v1

    .line 880
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 881
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkEntryCompleteTimes()[I
    .registers 3

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getNetworkEntryCompleteTimes()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 394
    :goto_6
    return-object v1

    .line 393
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/structs/NspInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getNetworkList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 766
    :goto_6
    return-object v1

    .line 765
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 766
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPersistedWimaxEnabled()Z
    .registers 3

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getPersistedWimaxEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 523
    :goto_6
    return v1

    .line 522
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 523
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRadioInfo()V
    .registers 4

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getRadioInfo()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 427
    :goto_5
    return-void

    .line 423
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WimaxManager"

    const-string v2, "------getRadioInfo RemoteException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getRadioInfoResponse()Landroid/net/wimax/RadioInfo;
    .registers 3

    .prologue
    .line 440
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getRadioInfoResponse()Landroid/net/wimax/RadioInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 442
    :goto_6
    return-object v1

    .line 441
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRadioInfoTemperature()V
    .registers 4

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getRadioInfo()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 436
    :goto_5
    return-void

    .line 432
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 434
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WimaxManager"

    const-string v2, "------getRadioInfoTemperature RemoteException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getWimaxMode()I
    .registers 3

    .prologue
    .line 725
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getWimaxMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 727
    :goto_6
    return v1

    .line 726
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 727
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWimaxState()Landroid/net/wimax/WimaxState;
    .registers 3

    .prologue
    .line 579
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 581
    :goto_6
    return-object v1

    .line 580
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 581
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    goto :goto_6
.end method

.method public getWimaxStatus()I
    .registers 3

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getWimaxEnabledStatus()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 553
    :goto_6
    return v1

    .line 552
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getWorkModeState()I
    .registers 3

    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->getWorkModeState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 450
    :goto_6
    return v1

    .line 449
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 450
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1261
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1263
    :goto_6
    return v1

    .line 1262
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1263
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWimaxEnabled()Z
    .registers 3

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public makeOdbTlvData([BIIII[B)I
    .registers 15
    .parameter "pBuffer"
    .parameter "nBufferIndex"
    .parameter "wBufferLen"
    .parameter "wTag"
    .parameter "wLength"
    .parameter "pbValue"

    .prologue
    .line 797
    :try_start_0
    iget-object v0, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/wimax/IWimaxManager;->makeOdbTlvData([BIIII[B)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 799
    :goto_c
    return v0

    .line 798
    :catch_d
    move-exception v0

    move-object v7, v0

    .line 799
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public readStaticIP(I)Ljava/lang/String;
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 1283
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->readStaticIP(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1285
    :goto_6
    return-object v1

    .line 1284
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1285
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "error"

    goto :goto_6
.end method

.method public release_sWakeLock()V
    .registers 4

    .prologue
    .line 712
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1}, Landroid/net/wimax/IWimaxManager;->release_sWakeLock()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 716
    :goto_5
    return-void

    .line 713
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 714
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WimaxManager"

    const-string v2, "------release_sWakeLock RemoteException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .parameter "ip"
    .parameter "gateway"
    .parameter "netmask"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 1272
    :try_start_0
    iget-object v0, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/wimax/IWimaxManager;->saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 1274
    :goto_b
    return v0

    .line 1273
    :catch_c
    move-exception v0

    move-object v6, v0

    .line 1274
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public setFactoryDefault(I)Z
    .registers 4
    .parameter "nType"

    .prologue
    .line 851
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->setFactoryDefault(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 853
    :goto_6
    return v1

    .line 852
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 853
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMruWorking(Z)V
    .registers 5
    .parameter "bWorking"

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->setMruWorking(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 517
    :goto_5
    return-void

    .line 514
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WimaxManager"

    const-string v2, "------setMruWorking RemoteException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setVirtualIdleWhileAPsleep(B)I
    .registers 4
    .parameter "bMode"

    .prologue
    .line 862
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    .line 865
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->setVirtualIdleWhileAPsleep(B)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 872
    :goto_b
    return v1

    .line 866
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_b

    .line 872
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_10
    const/4 v1, -0x2

    goto :goto_b
.end method

.method public setWimaxEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 536
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->setWimaxEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 538
    :goto_6
    return v1

    .line 537
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 538
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWimaxMode(IZ)I
    .registers 5
    .parameter "nMode"
    .parameter "enable"

    .prologue
    .line 738
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wimax/IWimaxManager;->setWimaxMode(IZ)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 740
    :goto_6
    return v1

    .line 739
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 740
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setWimaxStatus(I)V
    .registers 5
    .parameter "Wimaxstatus"

    .prologue
    .line 559
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->setWimaxStatus(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 563
    :goto_5
    return-void

    .line 560
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 561
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WimaxManager"

    const-string v2, "------setWimaxStatus RemoteException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setWorkModeState(I)Z
    .registers 4
    .parameter "workMode"

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->setWorkModeState(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 458
    :goto_6
    return v1

    .line 457
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 2

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wimax/WimaxManager;->startScan(Z)Z

    move-result v0

    return v0
.end method

.method public startScan(Z)Z
    .registers 4
    .parameter "bUserReq"

    .prologue
    .line 681
    :try_start_0
    iget-object v1, p0, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v1, p1}, Landroid/net/wimax/IWimaxManager;->startScan(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 683
    :goto_6
    return v1

    .line 682
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 683
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
