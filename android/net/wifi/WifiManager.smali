.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_ENABLE_SOON:Ljava/lang/String; = "wifi_enable_soon"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_WPS:Ljava/lang/String; = "wps_event"

.field public static final GET_WPS_EVENT_ACTION:Ljava/lang/String; = "android.net.wifi.GET_WPS_EVENT"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SECURITY_POLICY_CHANGE_WIFI_AP_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.SECURITY_POLICY_CHANGE_WIFI_AP_DIALOG"

.field public static final SECURITY_POLICY_CHANGE_WIFI_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.SECURITY_POLICY_CHANGE_WIFI_DIALOG"

.field public static final SHOW_AP_LIST_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_AP_LIST_DIALOG"

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_DIALOG:I = 0x2

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0x1

.field public static final WIFI_AP_STATE_DISABLING:I = 0x0

.field public static final WIFI_AP_STATE_ENABLED:I = 0x3

.field public static final WIFI_AP_STATE_ENABLING:I = 0x2

.field public static final WIFI_AP_STATE_FAILED:I = 0x4

.field public static final WIFI_DIALOG:I = 0x1

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WIFI_WPS_FAIL:I = 0x2

.field public static final WIFI_WPS_OVERLAP:I = 0x3

.field public static final WIFI_WPS_SUCCESS:I = 0x1

.field public static final WIFI_WPS_TIMEOUT:I = 0x4

.field public static final WIFI_WPS_UNDEFINE:I = 0x5


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field private mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .registers 4
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 450
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 451
    new-instance v0, Landroid/net/wifi/WifiProgressStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiProgressStore;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    .line 452
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 536
    :goto_6
    return v1

    .line 535
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static calculateSignalLevel(II)I
    .registers 6
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, -0x64

    .line 969
    if-nez p0, :cond_7

    .line 978
    :cond_6
    :goto_6
    return v1

    .line 972
    :cond_7
    if-le p0, v3, :cond_6

    .line 974
    const/16 v1, -0x37

    if-lt p0, v1, :cond_10

    .line 975
    sub-int v1, p1, v2

    goto :goto_6

    .line 977
    :cond_10
    const/16 v1, 0x2d

    sub-int v2, p1, v2

    div-int v0, v1, v2

    .line 978
    .local v0, partitionSize:I
    sub-int v1, p0, v3

    div-int/2addr v1, v0

    goto :goto_6
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 992
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 495
    if-nez p1, :cond_4

    .line 499
    :goto_3
    return v0

    .line 498
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 499
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_3
.end method

.method public checkWpsInProgress()Z
    .registers 2

    .prologue
    .line 809
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getWpsInProgress()Z

    move-result v0

    return v0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1390
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1356
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1372
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 587
    :goto_6
    return v1

    .line 586
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 587
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 598
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 600
    :goto_6
    return v1

    .line 599
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 572
    :goto_6
    return v1

    .line 571
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 476
    :goto_6
    return-object v1

    .line 475
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 476
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 687
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 689
    :goto_6
    return-object v1

    .line 688
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 689
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCurrentTime()J
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 895
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 897
    :goto_6
    return-object v1

    .line 896
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 897
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNumAllowedChannels()I
    .registers 3

    .prologue
    .line 846
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumAllowedChannels()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 848
    :goto_6
    return v1

    .line 847
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 848
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getProgressLapseTime()I
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getLapseTime()I

    move-result v0

    return v0
.end method

.method public getProgressMode()I
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressMode()I

    move-result v0

    return v0
.end method

.method public getProgressPinNumber()I
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressPinNumber()I

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressValue()I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 701
    :goto_6
    return-object v1

    .line 700
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 701
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getValidChannelCounts()[I
    .registers 3

    .prologue
    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getValidChannelCounts()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 884
    :goto_6
    return-object v1

    .line 883
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 884
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 1123
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1125
    :goto_6
    return-object v1

    .line 1124
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1125
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApInfo()I
    .registers 3

    .prologue
    .line 1025
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApInfo()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1027
    :goto_6
    return v1

    .line 1026
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 1153
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1155
    :goto_6
    return-object v1

    .line 1154
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1155
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1043
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApStaList()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1045
    :goto_6
    return-object v1

    .line 1044
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1045
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApState()I
    .registers 3

    .prologue
    .line 1077
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1079
    :goto_6
    return v1

    .line 1078
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1079
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getWifiMacAddr()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiMacAddr()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1096
    :goto_6
    return-object v1

    .line 1095
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1096
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiState()I
    .registers 3

    .prologue
    .line 942
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 944
    :goto_6
    return v1

    .line 943
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 944
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public initializeMulticastFiltering()Z
    .registers 3

    .prologue
    .line 1572
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1573
    const/4 v1, 0x1

    .line 1575
    :goto_6
    return v1

    .line 1574
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1575
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1560
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1562
    :goto_6
    return v1

    .line 1561
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1562
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isShowingAccessPointListDialog()Z
    .registers 3

    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isShowingAccessPointListDialog()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 824
    :goto_6
    return v1

    .line 823
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 824
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWifiApEnabled()Z
    .registers 3

    .prologue
    .line 1112
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

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

.method public isWifiEnabled()Z
    .registers 3

    .prologue
    .line 954
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

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

.method public pingSupplicant()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_7

    move v1, v2

    .line 643
    :goto_6
    return v1

    .line 641
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 642
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 643
    goto :goto_6
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 626
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 628
    :goto_6
    return v1

    .line 627
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 628
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 612
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 614
    :goto_6
    return v1

    .line 613
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 614
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 552
    :goto_6
    return v1

    .line 551
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 552
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 716
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 718
    :goto_6
    return v1

    .line 717
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 718
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveCurrentTime(J)V
    .registers 4
    .parameter "currentTime"

    .prologue
    .line 786
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiProgressStore;->setCurrentTime(J)V

    .line 787
    return-void
.end method

.method public saveProgressLapseTime(I)V
    .registers 3
    .parameter "saveTime"

    .prologue
    .line 772
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setLapseTime(I)V

    .line 773
    return-void
.end method

.method public saveProgressMode(I)V
    .registers 3
    .parameter "saveDialogMode"

    .prologue
    .line 779
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressMode(I)V

    .line 780
    return-void
.end method

.method public saveProgressPinNumber(I)V
    .registers 3
    .parameter "savePinNumber"

    .prologue
    .line 783
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressPinNumber(I)V

    .line 784
    return-void
.end method

.method public saveProgressValue(I)V
    .registers 3
    .parameter "saveValue"

    .prologue
    .line 775
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressValue(I)V

    .line 776
    return-void
.end method

.method public setNumAllowedChannels(IZ)Z
    .registers 5
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 867
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setNumAllowedChannels(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 869
    :goto_6
    return v1

    .line 868
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 869
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setShowAccessPointListDialog(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    .line 830
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setShowAccessPointListDialog(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 832
    :goto_6
    return v1

    .line 831
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 832
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .parameter "wifiConfig"

    .prologue
    .line 1137
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1138
    const/4 v1, 0x1

    .line 1140
    :goto_6
    return v1

    .line 1139
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApDisassocSta(Ljava/lang/String;)Z
    .registers 4
    .parameter "mac"

    .prologue
    .line 1060
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApDisassocSta(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1062
    :goto_6
    return v1

    .line 1061
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1062
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1009
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1011
    :goto_6
    return v1

    .line 1010
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1011
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 910
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 912
    :goto_6
    return v1

    .line 911
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 912
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabledDialog(Z)Z
    .registers 5
    .parameter "enabled"

    .prologue
    .line 924
    const-string v1, "WifiManager"

    const-string/jumbo v2, "setWifiEnabledDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :try_start_8
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabledDialog(Z)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    .line 928
    :goto_e
    return v1

    .line 927
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 928
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setWpsInProgress(Z)V
    .registers 3
    .parameter "inWpsProgress"

    .prologue
    .line 790
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setWpsInProgress(Z)V

    .line 791
    return-void
.end method

.method public showApDialog()Z
    .registers 3

    .prologue
    .line 816
    const-string v0, "WifiManager"

    const-string/jumbo v1, "showApDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isShowingAccessPointListDialog()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public startMfgService()Z
    .registers 3

    .prologue
    .line 1581
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startMfgService()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1583
    :goto_6
    return v1

    .line 1582
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1583
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 655
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 656
    const/4 v1, 0x1

    .line 658
    :goto_8
    return v1

    .line 657
    :catch_9
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v3

    .line 658
    goto :goto_8
.end method

.method public startScanActive()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 674
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v1, v3

    .line 677
    :goto_8
    return v1

    .line 676
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 677
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public stopMfgService()Z
    .registers 3

    .prologue
    .line 1589
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopMfgService()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1591
    :goto_6
    return v1

    .line 1590
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1591
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 518
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_8

    .line 519
    :cond_6
    const/4 v0, -0x1

    .line 521
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_7
.end method

.method public wpsCommandCancel()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 760
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 762
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsCommandCancel()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_c

    move-result v1

    .line 764
    :goto_b
    return v1

    .line 763
    :catch_c
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 764
    goto :goto_b
.end method

.method public wpsPbcConnect()Z
    .registers 3

    .prologue
    .line 731
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 732
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsPbcConnect()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 734
    :goto_a
    return v1

    .line 733
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 734
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public wpsPinConnect(Ljava/lang/String;)I
    .registers 4
    .parameter "bssid"

    .prologue
    .line 745
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 746
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->wpsPinConnect(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 748
    :goto_a
    return v1

    .line 747
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 748
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_a
.end method
