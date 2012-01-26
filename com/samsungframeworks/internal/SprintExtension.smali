.class public Lcom/samsungframeworks/internal/SprintExtension;
.super Lcom/samsungframeworks/internal/ISprintExtension$Stub;
.source "SprintExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    }
.end annotation


# static fields
.field private static final CDMA0:I = 0x2

.field private static final CDMA1:I = 0x3

.field private static final CONNECTIONMANAGER:Ljava/lang/String; = "com.sprint.internal.permission.CONNECTIONMANAGER"

.field public static final ID_A_Key:I = 0x190

.field public static final ID_DSA_SERVER_IP:I = 0x195

.field public static final ID_DSA_SERVER_PORT:I = 0x196

.field public static final ID_DSA_SERVER_URL:I = 0x192

.field public static final ID_HTTPPD_PROXY_ADDR:I = 0x19e

.field public static final ID_HTTPPD_PROXY_PORT:I = 0x19f

.field public static final ID_MDN:I = 0x1

.field public static final ID_MEID:I = 0x1e

.field public static final ID_MOBILESYNC_ENABLED:I = 0x12c

.field public static final ID_MSID:I = 0x23

.field public static final ID_PDE_PRIMARY_IP:I = 0xa1

.field public static final ID_PDE_PRIMARY_PORT:I = 0xa3

.field public static final ID_PESUDO_ESN:I = 0x3

.field public static final ID_RTSP_PROXY_ADDR:I = 0x19c

.field public static final ID_RTSP_PROXY_PORT:I = 0x19d

.field public static final ID_SLOT_1_AAA_AUTH_ALGORITHM:I = 0x5d

.field public static final ID_SLOT_1_AAA_SPI:I = 0x5e

.field public static final ID_SLOT_1_HA_AUTH_ALGORITHM:I = 0x5a

.field public static final ID_SLOT_1_HA_PASSWORD:I = 0x5c

.field public static final ID_SLOT_1_HA_SPI:I = 0x5b

.field public static final ID_SLOT_1_MOBILE_IP_ADDRESS:I = 0x57

.field public static final ID_SLOT_1_NAI:I = 0x2

.field public static final ID_SLOT_1_NAI_PASSWORD:I = 0x2b

.field public static final ID_SLOT_1_PRIMARY_HA:I = 0x32

.field public static final ID_SLOT_1_REVERSE_TUNNELING:I = 0x56

.field public static final ID_SLOT_1_SECONDARY_HA:I = 0x33

.field public static final ID_SYSPROP_SELLER_NAME:I = 0x1a4

.field public static final ID_UAPROF:I = 0xe

.field public static final ID_WORK_MODE:I = 0x1f4

.field private static final NETWORKS_NONE:I = -0x1

.field private static final OMADM:Ljava/lang/String; = "com.sprint.internal.permission.OMADM"

.field private static final OMADMExtensionDP:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.DP"

.field private static final OMADMExtensionFUMO:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.FUMO"

.field private static final OMADMExtensionHFA:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.HFA"

.field private static final OMADMExtensionPRL:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.PRL"

.field private static final OMADMExtensionREG_HFA:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.REG_HFA"

.field private static final PLATFORM:Ljava/lang/String; = "com.sprint.internal.permission.PLATFORM"

.field private static final SYSTEMPROPERTIES:Ljava/lang/String; = "com.sprint.internal.permission.SYSTEMPROPERTIES"

.field private static final SYSTEMPROPERTIES_WRITE:Ljava/lang/String; = "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

.field static final TAG:Ljava/lang/String; = "SprintExtension"

.field static final UaProf0:Ljava/lang/String; = null

.field private static final WIFI_CDMA0:I = 0x0

.field private static final WIFI_CDMA1:I = 0x1


# instance fields
.field private ENABLE_LOG:Z

.field IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

.field private callerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private enablePermisionCONNECTIONMANAGER:Z

.field private enablePermisionOMADM:Z

.field private enablePermisionPLATFORM:Z

.field private enablePermisionSYSTEMPROPERTIES:Z

.field private isStartedHFA:Z

.field private justSetSlot0:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private prevDataConnectPreference:I

.field private slotchange_index:I

.field private slotchange_trace_pid:[I

.field private slotchange_trace_state:[I

.field private slotchange_trace_uid:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://device.sprintpcs.com/Samsung/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsungframeworks/internal/SprintExtension;->UaProf0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->ENABLE_LOG:Z

    .line 27
    iput-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 51
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionSYSTEMPROPERTIES:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    .line 59
    iput-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    .line 137
    iput v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    .line 138
    iput-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->isStartedHFA:Z

    .line 158
    iput-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    .line 161
    iput-object p1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    .line 165
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    .line 168
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    .line 169
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    .line 170
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    .line 171
    return-void
.end method

.method private SlotTracePrint()V
    .registers 5

    .prologue
    .line 584
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    if-ge v0, v1, :cond_53

    .line 586
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slot change history : index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "uid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    :cond_53
    return-void
.end method

.method private SlotTraceUpdate(III)V
    .registers 8
    .parameter "pid"
    .parameter "uid"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, index:I
    if-nez p3, :cond_2d

    .line 596
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x100

    if-ge v0, v1, :cond_29

    .line 598
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aget v1, v1, v0

    if-nez v1, :cond_2a

    .line 600
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aput p1, v1, v0

    .line 601
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    aput p2, v1, v0

    .line 602
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    aput v3, v1, v0

    .line 603
    iget v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    .line 605
    iget v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    const/16 v2, 0xff

    if-lt v1, v2, :cond_29

    .line 607
    iput v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    .line 625
    :cond_29
    :goto_29
    return-void

    .line 596
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 615
    :cond_2d
    const/16 v0, 0xff

    :goto_2f
    if-lez v0, :cond_29

    .line 617
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_45

    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_45

    .line 620
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    aget v2, v1, v0

    add-int/2addr v2, p3

    aput v2, v1, v0

    goto :goto_29

    .line 615
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f
.end method

.method private getCallerPos(Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;)I
    .registers 9
    .parameter "c"

    .prologue
    .line 561
    const/4 v2, -0x1

    .line 562
    .local v2, ret:I
    iget-object v4, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 564
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v3, :cond_1a

    .line 566
    :try_start_a
    iget-object v4, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;

    invoke-virtual {v4, p1}, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->compareWith(Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;)Z
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_15} :catch_1b

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    .line 567
    move v2, v1

    .line 576
    :cond_1a
    :goto_1a
    return v2

    .line 570
    :catch_1b
    move-exception v4

    move-object v0, v4

    .line 571
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "SprintExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallerPos"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 564
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private declared-synchronized setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I
    .registers 8
    .parameter "IPhoneSlotInterface"
    .parameter "slot"

    .prologue
    const-string v2, "SprintExtension"

    .line 522
    monitor-enter p0

    const/4 v1, 0x0

    .line 524
    .local v1, ret:I
    :try_start_4
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCDMASlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-interface {p1, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->requestDataProfile(I)I
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_27

    move-result v1

    .line 529
    :goto_25
    monitor-exit p0

    return v1

    .line 526
    :catch_27
    move-exception v2

    move-object v0, v2

    .line 527
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_42

    goto :goto_25

    .line 522
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_42
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized setPrevDataSetting(ZI)V
    .registers 6
    .parameter "wifiConnected"
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 504
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 505
    if-ne p1, v2, :cond_17

    .line 506
    if-nez p2, :cond_10

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 519
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 509
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_e

    .line 504
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 512
    :cond_17
    if-nez p2, :cond_1d

    .line 513
    const/4 v0, 0x2

    :try_start_1a
    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    goto :goto_e

    .line 515
    :cond_1d
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_14

    goto :goto_e
.end method

.method private declared-synchronized setWIFIenabled(Z)V
    .registers 9
    .parameter "set"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 533
    monitor-enter p0

    const/4 v1, 0x0

    .line 536
    .local v1, state:I
    :try_start_5
    iget-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 538
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 539
    if-ne p1, v4, :cond_20

    if-eq v1, v6, :cond_20

    if-eq v1, v5, :cond_20

    .line 541
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_2b

    .line 547
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 542
    :cond_20
    if-nez p1, :cond_1e

    if-eq v1, v6, :cond_26

    if-ne v1, v5, :cond_1e

    .line 544
    :cond_26
    const/4 v2, 0x0

    :try_start_27
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_1e

    .line 533
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public disableScreenTimeout()V
    .registers 7

    .prologue
    .line 939
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 940
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 944
    :cond_15
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 947
    :try_start_21
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->disableScreenTimeout()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 951
    :goto_26
    return-void

    .line 948
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 949
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableScreenTiemout RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public enableScreenTimeout()V
    .registers 7

    .prologue
    .line 954
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 955
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 959
    :cond_15
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 962
    :try_start_21
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->enableScreenTimeout()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 966
    :goto_26
    return-void

    .line 963
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 964
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableScreenTiemout RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public declared-synchronized getCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;)I
    .registers 7
    .parameter "IPhoneSlotInterface"

    .prologue
    .line 550
    monitor-enter p0

    const/4 v1, 0x0

    .line 552
    .local v1, ret:I
    :try_start_2
    invoke-interface {p1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getCurrentSlot()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_8

    move-result v1

    .line 557
    :goto_6
    monitor-exit p0

    return v1

    .line 553
    :catch_8
    move-exception v0

    .line 554
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_9
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_23

    .line 555
    const/4 v1, -0x1

    goto :goto_6

    .line 550
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .registers 8

    .prologue
    .line 983
    iget-boolean v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 984
    iget-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v3, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 987
    :cond_15
    const/4 v1, 0x0

    .line 988
    .local v1, prl:Ljava/lang/String;
    const-string v2, "iphoneinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 991
    :try_start_22
    iget-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result-object v1

    .line 996
    :goto_28
    return-object v1

    .line 992
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 993
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reboot RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public declared-synchronized getDataProfile()I
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 472
    monitor-enter p0

    const/4 v2, 0x0

    .line 478
    .local v2, ret:I
    :try_start_3
    iget-boolean v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    if-ne v5, v10, :cond_17

    .line 479
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v6, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 483
    :cond_17
    const-string v5, "iphoneinfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 485
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v1

    .line 486
    .local v1, netPreference:I
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 487
    .local v4, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_5e

    move-result v3

    .line 489
    .local v3, wifiConnected:Z
    if-ne v1, v10, :cond_3b

    if-ne v3, v10, :cond_3b

    .line 490
    const/4 v5, 0x2

    .line 499
    :goto_39
    monitor-exit p0

    return v5

    .line 494
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDataProfile()I
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_43

    move-result v2

    :goto_41
    move v5, v2

    .line 499
    goto :goto_39

    .line 495
    :catch_43
    move-exception v5

    move-object v0, v5

    .line 496
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_45
    const-string v5, "SprintExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataProfile RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_5e

    goto :goto_41

    .line 472
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #netPreference:I
    .end local v3           #wifiConnected:Z
    .end local v4           #wifiInfo:Landroid/net/NetworkInfo;
    :catchall_5e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .registers 15
    .parameter "id"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "SprintExtension"

    .line 174
    monitor-enter p0

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 175
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 176
    .local v5, uid:I
    const/4 v1, 0x0

    .line 177
    .local v1, notSupport:Z
    const/4 v3, 0x0

    .line 179
    .local v3, ret:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionSYSTEMPROPERTIES:Z

    if-ne v8, v11, :cond_1b

    .line 180
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v9, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v2, v5, v10}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 183
    :cond_1b
    const-string v8, "iphoneinfo"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 187
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-nez v8, :cond_35

    .line 188
    const-string v8, "SprintExtension"

    const-string v9, "getString/iphoneinfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_184

    move-object v8, v12

    .line 324
    :goto_33
    monitor-exit p0

    return-object v8

    .line 193
    :cond_35
    sparse-switch p1, :sswitch_data_188

    .line 314
    const/4 v1, 0x1

    .line 321
    :goto_39
    :try_start_39
    iget-boolean v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->ENABLE_LOG:Z

    if-ne v8, v11, :cond_73

    .line 322
    const-string v8, "SprintExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getString("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_39 .. :try_end_73} :catchall_184

    :cond_73
    move-object v8, v3

    .line 324
    goto :goto_33

    .line 195
    :sswitch_75
    :try_start_75
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMDN()Ljava/lang/String;

    move-result-object v3

    .line 196
    goto :goto_39

    .line 199
    :sswitch_7c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMSID()Ljava/lang/String;

    move-result-object v3

    .line 200
    goto :goto_39

    .line 203
    :sswitch_83
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMEID()Ljava/lang/String;

    move-result-object v3

    .line 204
    goto :goto_39

    .line 207
    :sswitch_8a
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getPESUDO_ESN()Ljava/lang/String;

    move-result-object v3

    .line 208
    goto :goto_39

    .line 215
    :sswitch_91
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_NAI()Ljava/lang/String;

    move-result-object v3

    .line 216
    goto :goto_39

    .line 223
    :sswitch_98
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_PRIMARY_HA()Ljava/lang/String;

    move-result-object v3

    .line 224
    goto :goto_39

    .line 227
    :sswitch_9f
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_SECONDARY_HA()Ljava/lang/String;

    move-result-object v3

    .line 228
    goto :goto_39

    .line 231
    :sswitch_a6
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_HA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v3

    .line 232
    goto :goto_39

    .line 235
    :sswitch_ad
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_HA_SPI()Ljava/lang/String;

    move-result-object v3

    .line 236
    goto :goto_39

    .line 243
    :sswitch_b4
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_AAA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v3

    .line 244
    goto/16 :goto_39

    .line 247
    :sswitch_bc
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_AAA_SPI()Ljava/lang/String;

    move-result-object v3

    .line 248
    goto/16 :goto_39

    .line 251
    :sswitch_c4
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_REVERSE_TUNNELING()Ljava/lang/String;

    move-result-object v3

    .line 252
    goto/16 :goto_39

    .line 255
    :sswitch_cc
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_MOBILE_IP_ADDRESS()Ljava/lang/String;

    move-result-object v3

    .line 256
    goto/16 :goto_39

    .line 259
    :sswitch_d4
    const-string v8, "gsm.version.baseband"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, version:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v9, 0xc

    const/4 v10, 0x4

    invoke-direct {v6, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 262
    .local v6, ver:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/samsungframeworks/internal/SprintExtension;->UaProf0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".rdf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v3           #ret:Ljava/lang/String;
    .local v4, ret:Ljava/lang/String;
    move-object v3, v4

    .line 263
    .end local v4           #ret:Ljava/lang/String;
    .restart local v3       #ret:Ljava/lang/String;
    goto/16 :goto_39

    .line 266
    .end local v6           #ver:Ljava/lang/String;
    .end local v7           #version:Ljava/lang/String;
    :sswitch_107
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMOBILESYNK_ENABLED()Ljava/lang/String;

    move-result-object v3

    .line 267
    goto/16 :goto_39

    .line 270
    :sswitch_10f
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_URL()Ljava/lang/String;

    move-result-object v3

    .line 271
    goto/16 :goto_39

    .line 274
    :sswitch_117
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getPDE_PRIMARY_IP()Ljava/lang/String;

    move-result-object v3

    .line 275
    goto/16 :goto_39

    .line 278
    :sswitch_11f
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getPDE_PRIMARY_PORT()Ljava/lang/String;

    move-result-object v3

    .line 279
    goto/16 :goto_39

    .line 282
    :sswitch_127
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_IP()Ljava/lang/String;

    move-result-object v3

    .line 283
    goto/16 :goto_39

    .line 286
    :sswitch_12f
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_PORT()Ljava/lang/String;

    move-result-object v3

    .line 287
    goto/16 :goto_39

    .line 290
    :sswitch_137
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getRTSP_PROXY_ADDR()Ljava/lang/String;

    move-result-object v3

    .line 291
    goto/16 :goto_39

    .line 294
    :sswitch_13f
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getRTSP_PROXY_PORT()Ljava/lang/String;

    move-result-object v3

    .line 295
    goto/16 :goto_39

    .line 298
    :sswitch_147
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getHTTPPD_PROXY_ADDR()Ljava/lang/String;

    move-result-object v3

    .line 299
    goto/16 :goto_39

    .line 302
    :sswitch_14f
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getHTTPPD_PROXY_PORT()Ljava/lang/String;

    move-result-object v3

    .line 303
    goto/16 :goto_39

    .line 306
    :sswitch_157
    const-string/jumbo v8, "ro.cdma.home.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    goto/16 :goto_39

    .line 310
    :sswitch_160
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getWORK_MODE()Ljava/lang/String;
    :try_end_165
    .catchall {:try_start_75 .. :try_end_165} :catchall_184
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_165} :catch_168

    move-result-object v3

    .line 311
    goto/16 :goto_39

    .line 317
    :catch_168
    move-exception v8

    move-object v0, v8

    .line 318
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_16a
    const-string v8, "SprintExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getString RemoteException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catchall {:try_start_16a .. :try_end_182} :catchall_184

    goto/16 :goto_39

    .line 174
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #notSupport:Z
    .end local v2           #pid:I
    .end local v3           #ret:Ljava/lang/String;
    .end local v5           #uid:I
    :catchall_184
    move-exception v8

    monitor-exit p0

    throw v8

    .line 193
    nop

    :sswitch_data_188
    .sparse-switch
        0x1 -> :sswitch_75
        0x2 -> :sswitch_91
        0x3 -> :sswitch_8a
        0xe -> :sswitch_d4
        0x1e -> :sswitch_83
        0x23 -> :sswitch_7c
        0x32 -> :sswitch_98
        0x33 -> :sswitch_9f
        0x56 -> :sswitch_c4
        0x57 -> :sswitch_cc
        0x5a -> :sswitch_a6
        0x5b -> :sswitch_ad
        0x5d -> :sswitch_b4
        0x5e -> :sswitch_bc
        0xa1 -> :sswitch_117
        0xa3 -> :sswitch_11f
        0x12c -> :sswitch_107
        0x192 -> :sswitch_10f
        0x195 -> :sswitch_127
        0x196 -> :sswitch_12f
        0x19c -> :sswitch_137
        0x19d -> :sswitch_13f
        0x19e -> :sswitch_147
        0x19f -> :sswitch_14f
        0x1a4 -> :sswitch_157
        0x1f4 -> :sswitch_160
    .end sparse-switch
.end method

.method public reboot()V
    .registers 7

    .prologue
    .line 969
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 970
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 973
    :cond_15
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 976
    :try_start_21
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->reboot()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 980
    :goto_26
    return-void

    .line 977
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 978
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public declared-synchronized registerHFA()V
    .registers 7

    .prologue
    .line 929
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 930
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 933
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.samsung.OMADMExtension.REG_HFA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.samsung"

    const-string v2, "com.samsung.client.SyncmlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 936
    monitor-exit p0

    return-void

    .line 929
    .end local v0           #i:Landroid/content/Intent;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .registers 6

    .prologue
    .line 839
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 840
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 845
    :cond_16
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    if-eqz v0, :cond_24

    .line 846
    const-string v0, "SprintExtension"

    const-string v1, "justSetSlot0 release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    .line 852
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/SprintExtension;->requestDataProfile(I)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 853
    monitor-exit p0

    return-void

    .line 839
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseDSAProxy()V
    .registers 7

    .prologue
    .line 870
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 871
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 875
    :cond_16
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_45

    .line 877
    :try_start_22
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->releaseDSAProxy()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_45
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    .line 881
    :goto_27
    monitor-exit p0

    return-void

    .line 878
    :catch_29
    move-exception v1

    move-object v0, v1

    .line 879
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2b
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseDSAProxy RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_45

    goto :goto_27

    .line 870
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_45
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized requestDataProfile(I)I
    .registers 28
    .parameter "dataconnection"

    .prologue
    .line 628
    monitor-enter p0

    const/4 v12, 0x0

    .line 631
    .local v12, ret:I
    const/4 v14, 0x1

    .line 632
    .local v14, slot:I
    const/16 v16, 0x0

    .line 633
    .local v16, slot1NAI:Ljava/lang/String;
    const/4 v15, 0x0

    .line 634
    .local v15, slot1Available:Z
    const/16 v20, 0x0

    .line 636
    .local v20, wifiConnected:Z
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 637
    .local v10, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 639
    .local v19, uid:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_33

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 644
    :cond_33
    new-instance v4, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;-><init>(Lcom/samsungframeworks/internal/SprintExtension;II)V

    .line 646
    .local v4, c:Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    invoke-direct/range {p0 .. p0}, Lcom/samsungframeworks/internal/SprintExtension;->SlotTracePrint()V

    .line 648
    if-nez p1, :cond_f5

    .line 650
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsungframeworks/internal/SprintExtension;->SlotTraceUpdate(III)V

    .line 652
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->getCallerPos(Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;)I

    move-result v11

    .line 654
    .local v11, pos:I
    const/16 v21, -0x1

    move v0, v11

    move/from16 v1, v21

    if-ne v0, v1, :cond_91

    .line 655
    const-string v21, "SprintExtension"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "requestDataProfile: ignore release request from non previous request : pid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " uid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_8 .. :try_end_8d} :catchall_153

    .line 656
    const/16 v21, 0x1

    .line 835
    .end local v11           #pos:I
    :goto_8f
    monitor-exit p0

    return v21

    .line 658
    .restart local v11       #pos:I
    :cond_91
    :try_start_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 662
    .local v13, size:I
    if-lez v13, :cond_c7

    .line 663
    const-string v21, "SprintExtension"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ignore release request... requestCnt = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/16 v21, 0x0

    goto :goto_8f

    .line 666
    :cond_c7
    const-string v21, "SprintExtension"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "requestCnt = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v11           #pos:I
    .end local v13           #size:I
    :goto_e3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    move/from16 v21, v0

    if-eqz v21, :cond_156

    .line 679
    const-string v21, "SprintExtension"

    const-string v22, "justSetSlot0 already set"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/16 v21, 0x1

    goto :goto_8f

    .line 670
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsungframeworks/internal/SprintExtension;->SlotTraceUpdate(III)V

    .line 674
    const-string v21, "SprintExtension"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "requestCnt = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "pid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " uid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catchall {:try_start_91 .. :try_end_152} :catchall_153

    goto :goto_e3

    .line 628
    .end local v4           #c:Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    .end local v10           #pid:I
    .end local v19           #uid:I
    :catchall_153
    move-exception v21

    monitor-exit p0

    throw v21

    .line 683
    .restart local v4       #c:Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    .restart local v10       #pid:I
    .restart local v19       #uid:I
    :cond_156
    const/16 v21, 0x1

    :try_start_158
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 684
    .local v18, strMdn:Ljava/lang/String;
    new-instance v21, Ljava/lang/Long;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 686
    .local v8, numMdn:J
    const/16 v21, 0x64

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_18f

    const-wide/16 v21, 0x2710

    cmp-long v21, v8, v21

    if-gez v21, :cond_18f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->isStartedHFA:Z

    move/from16 v21, v0

    if-nez v21, :cond_18f

    .line 687
    const-string v21, "SprintExtension"

    const-string/jumbo v22, "not yet activated"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/16 v21, 0x0

    goto/16 :goto_8f

    .line 692
    :cond_18f
    const/16 v21, 0x65

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_20e

    .line 693
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    .line 694
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->isStartedHFA:Z

    .line 695
    const/16 p1, 0x64

    .line 700
    :goto_1a9
    const-string v21, "iphoneinfo"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 703
    .local v6, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v17

    .line 704
    .local v17, state:I
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_217

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_217

    .line 705
    const/16 v20, 0x0

    .line 710
    :goto_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->getCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;)I

    move-result v14

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 713
    .local v7, mobileInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    .line 715
    .local v5, connectedOrConnecting:Z
    const/16 v21, -0x1

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_21a

    .line 716
    const-string v21, "SprintExtension"

    const-string v22, "getCurrentSlot fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/16 v21, 0x1

    goto/16 :goto_8f

    .line 697
    .end local v5           #connectedOrConnecting:Z
    .end local v6           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v7           #mobileInfo:Landroid/net/NetworkInfo;
    .end local v17           #state:I
    :cond_20e
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    goto :goto_1a9

    .line 707
    .restart local v6       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v17       #state:I
    :cond_217
    const/16 v20, 0x1

    goto :goto_1de

    .line 721
    .restart local v5       #connectedOrConnecting:Z
    .restart local v7       #mobileInfo:Landroid/net/NetworkInfo;
    :cond_21a
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_239

    .line 723
    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setPrevDataSetting(ZI)V

    .line 724
    if-nez v20, :cond_235

    .line 725
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 727
    :cond_235
    const/16 v21, 0x0

    goto/16 :goto_8f

    .line 731
    :cond_239
    const/16 v21, 0x64

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_290

    .line 733
    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setPrevDataSetting(ZI)V

    .line 734
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 735
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_275

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    .line 742
    :cond_271
    :goto_271
    const/16 v21, 0x0

    goto/16 :goto_8f

    .line 738
    :cond_275
    const/16 v21, 0x1

    move v0, v14

    move/from16 v1, v21

    if-eq v0, v1, :cond_27e

    if-nez v5, :cond_271

    .line 739
    :cond_27e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto :goto_271

    .line 747
    :cond_290
    const-string v21, "iphoneinfo"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    :try_end_2a0
    .catchall {:try_start_158 .. :try_end_2a0} :catchall_153

    .line 750
    :try_start_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_NAI()Ljava/lang/String;
    :try_end_2a9
    .catchall {:try_start_2a0 .. :try_end_2a9} :catchall_153
    .catch Landroid/os/RemoteException; {:try_start_2a0 .. :try_end_2a9} :catch_484

    move-result-object v16

    .line 755
    :goto_2aa
    :try_start_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_NAI()Ljava/lang/String;
    :try_end_2b3
    .catchall {:try_start_2aa .. :try_end_2b3} :catchall_153
    .catch Landroid/os/RemoteException; {:try_start_2aa .. :try_end_2b3} :catch_481

    move-result-object v16

    .line 759
    :goto_2b4
    if-eqz v16, :cond_2bd

    :try_start_2b6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2bd

    .line 760
    const/4 v15, 0x1

    .line 763
    :cond_2bd
    if-nez p1, :cond_424

    .line 764
    const-string v21, "SprintExtension"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "set default prev="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " slot="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " connectedOrConnecting="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_30a

    .line 767
    const/16 v21, 0x0

    goto/16 :goto_8f

    .line 770
    :cond_30a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v21, v0

    if-nez v21, :cond_365

    .line 771
    if-nez v20, :cond_31d

    .line 772
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 774
    :cond_31d
    const/16 v21, 0x1

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_34f

    const/16 v21, 0x1

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_332

    const/16 v21, 0x1

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_34f

    .line 778
    :cond_332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    .line 810
    :cond_343
    :goto_343
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    .line 811
    const/16 v21, 0x0

    goto/16 :goto_8f

    .line 779
    :cond_34f
    if-nez v14, :cond_353

    if-nez v5, :cond_343

    .line 780
    :cond_353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto :goto_343

    .line 782
    :cond_365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_399

    .line 783
    if-nez v20, :cond_37e

    .line 784
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 786
    :cond_37e
    const/16 v21, 0x1

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_387

    if-nez v5, :cond_343

    .line 787
    :cond_387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto :goto_343

    .line 789
    :cond_399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3f7

    .line 790
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3b8

    .line 791
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 793
    :cond_3b8
    const/16 v21, 0x1

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_3e0

    const/16 v21, 0x1

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_3cd

    const/16 v21, 0x1

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_3e0

    .line 797
    :cond_3cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto/16 :goto_343

    .line 798
    :cond_3e0
    if-nez v14, :cond_3e4

    if-nez v5, :cond_343

    .line 799
    :cond_3e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto/16 :goto_343

    .line 803
    :cond_3f7
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_408

    .line 804
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 806
    :cond_408
    const/16 v21, 0x1

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_411

    if-nez v5, :cond_343

    .line 807
    :cond_411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto/16 :goto_343

    .line 815
    :cond_424
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_47d

    .line 816
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_43d

    .line 817
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 820
    :cond_43d
    const/16 v21, 0x1

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_463

    if-nez v5, :cond_463

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    .line 832
    :cond_457
    :goto_457
    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setPrevDataSetting(ZI)V

    .line 833
    const/16 v21, 0x0

    goto/16 :goto_8f

    .line 822
    :cond_463
    if-nez v14, :cond_457

    .line 823
    if-nez v15, :cond_46b

    .line 826
    const/16 v21, 0x1

    goto/16 :goto_8f

    .line 828
    :cond_46b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I
    :try_end_47c
    .catchall {:try_start_2b6 .. :try_end_47c} :catchall_153

    goto :goto_457

    .line 835
    :cond_47d
    const/16 v21, 0x0

    goto/16 :goto_8f

    .line 756
    :catch_481
    move-exception v21

    goto/16 :goto_2b4

    .line 751
    :catch_484
    move-exception v21

    goto/16 :goto_2aa
.end method

.method public declared-synchronized setDSAProxy(Ljava/lang/String;I)V
    .registers 9
    .parameter "proxy"
    .parameter "port"

    .prologue
    .line 856
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 857
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 861
    :cond_16
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_44

    .line 863
    :try_start_22
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1, p1, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSAProxy(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    .line 867
    :goto_27
    monitor-exit p0

    return-void

    .line 864
    :catch_29
    move-exception v1

    move-object v0, v1

    .line 865
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2b
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataProfile RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_44

    goto :goto_27

    .line 856
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setString(ILjava/lang/String;)V
    .registers 12
    .parameter "id"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const-string v5, "SprintExtension"

    .line 328
    monitor-enter p0

    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 329
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 330
    .local v4, uid:I
    const/4 v1, 0x0

    .line 331
    .local v1, notSupport:Z
    const/4 v3, 0x0

    .line 333
    .local v3, ret:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->ENABLE_LOG:Z

    if-ne v5, v8, :cond_49

    .line 334
    const-string v5, "SprintExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setString("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_49
    iget-boolean v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionSYSTEMPROPERTIES:Z

    if-ne v5, v8, :cond_55

    .line 337
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v6, "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 340
    :cond_55
    const-string v5, "iphoneinfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 344
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-nez v5, :cond_6f

    .line 345
    const-string v5, "SprintExtension"

    const-string/jumbo v6, "setString/iphoneinfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_4 .. :try_end_6d} :catchall_96

    .line 468
    :goto_6d
    monitor-exit p0

    return-void

    .line 350
    :cond_6f
    sparse-switch p1, :sswitch_data_134

    .line 462
    const/4 v1, 0x1

    goto :goto_6d

    .line 352
    :sswitch_74
    :try_start_74
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setMDN(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_96
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_79} :catch_7a

    goto :goto_6d

    .line 465
    :catch_7a
    move-exception v5

    move-object v0, v5

    .line 466
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_7c
    const-string v5, "SprintExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setString RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_7c .. :try_end_95} :catchall_96

    goto :goto_6d

    .line 328
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #notSupport:Z
    .end local v2           #pid:I
    .end local v3           #ret:Ljava/lang/String;
    .end local v4           #uid:I
    :catchall_96
    move-exception v5

    monitor-exit p0

    throw v5

    .line 356
    .restart local v1       #notSupport:Z
    .restart local v2       #pid:I
    .restart local v3       #ret:Ljava/lang/String;
    .restart local v4       #uid:I
    :sswitch_99
    :try_start_99
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setMSID(Ljava/lang/String;)V

    goto :goto_6d

    .line 368
    :sswitch_9f
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setA_Key(Ljava/lang/String;)V

    goto :goto_6d

    .line 372
    :sswitch_a5
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_NAI(Ljava/lang/String;)V

    goto :goto_6d

    .line 375
    :sswitch_ab
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_NAI_PASSWORD(Ljava/lang/String;)V

    goto :goto_6d

    .line 379
    :sswitch_b1
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_PRIMARY_HA(Ljava/lang/String;)V

    goto :goto_6d

    .line 383
    :sswitch_b7
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_SECONDARY_HA(Ljava/lang/String;)V

    goto :goto_6d

    .line 387
    :sswitch_bd
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_HA_AUTH_ALGORITHM(Ljava/lang/String;)V

    goto :goto_6d

    .line 391
    :sswitch_c3
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_HA_SPI(Ljava/lang/String;)V

    goto :goto_6d

    .line 395
    :sswitch_c9
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_HA_PASSWORD(Ljava/lang/String;)V

    goto :goto_6d

    .line 399
    :sswitch_cf
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_AAA_AUTH_ALGORITHM(Ljava/lang/String;)V

    goto :goto_6d

    .line 403
    :sswitch_d5
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_AAA_SPI(Ljava/lang/String;)V

    goto :goto_6d

    .line 407
    :sswitch_db
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_REVERSE_TUNNELING(Ljava/lang/String;)V

    goto :goto_6d

    .line 411
    :sswitch_e1
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_MOBILE_IP_ADDRESS(Ljava/lang/String;)V

    goto :goto_6d

    .line 419
    :sswitch_e7
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setMOBILESYNK_ENABLED(Ljava/lang/String;)V

    goto :goto_6d

    .line 423
    :sswitch_ed
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSA_SERVER_URL(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 427
    :sswitch_f4
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setPDE_PRIMARY_IP(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 431
    :sswitch_fb
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setPDE_PRIMARY_PORT(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 435
    :sswitch_102
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSA_SERVER_IP(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 439
    :sswitch_109
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSA_SERVER_PORT(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 443
    :sswitch_110
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setRTSP_PROXY_ADDR(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 447
    :sswitch_117
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setRTSP_PROXY_PORT(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 451
    :sswitch_11e
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setHTTPPD_PROXY_ADDR(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 455
    :sswitch_125
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setHTTPPD_PROXY_PORT(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 458
    :sswitch_12c
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setWORK_MODE(Ljava/lang/String;)V
    :try_end_131
    .catchall {:try_start_99 .. :try_end_131} :catchall_96
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_131} :catch_7a

    goto/16 :goto_6d

    .line 350
    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_74
        0x2 -> :sswitch_a5
        0x23 -> :sswitch_99
        0x2b -> :sswitch_ab
        0x32 -> :sswitch_b1
        0x33 -> :sswitch_b7
        0x56 -> :sswitch_db
        0x57 -> :sswitch_e1
        0x5a -> :sswitch_bd
        0x5b -> :sswitch_c3
        0x5c -> :sswitch_c9
        0x5d -> :sswitch_cf
        0x5e -> :sswitch_d5
        0xa1 -> :sswitch_f4
        0xa3 -> :sswitch_fb
        0x12c -> :sswitch_e7
        0x190 -> :sswitch_9f
        0x192 -> :sswitch_ed
        0x195 -> :sswitch_102
        0x196 -> :sswitch_109
        0x19c -> :sswitch_110
        0x19d -> :sswitch_117
        0x19e -> :sswitch_11e
        0x19f -> :sswitch_125
        0x1f4 -> :sswitch_12c
    .end sparse-switch
.end method

.method public declared-synchronized startCIDC()V
    .registers 6

    .prologue
    .line 885
    monitor-enter p0

    :try_start_1
    const-string v0, "SprintExtension"

    const-string/jumbo v1, "startCIDC"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 888
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 891
    :cond_1e
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_DP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 892
    monitor-exit p0

    return-void

    .line 885
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startCIFUMO()V
    .registers 6

    .prologue
    .line 895
    monitor-enter p0

    :try_start_1
    const-string v0, "SprintExtension"

    const-string/jumbo v1, "startCIFUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 898
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 901
    :cond_1e
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_FUMO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 902
    monitor-exit p0

    return-void

    .line 895
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startCIPRL()V
    .registers 6

    .prologue
    .line 905
    monitor-enter p0

    :try_start_1
    const-string v0, "SprintExtension"

    const-string/jumbo v1, "startCIPRL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 908
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 911
    :cond_1e
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_PRL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 912
    monitor-exit p0

    return-void

    .line 905
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHFA()V
    .registers 7

    .prologue
    .line 915
    monitor-enter p0

    :try_start_1
    const-string v1, "SprintExtension"

    const-string/jumbo v2, "startHFA"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 918
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 921
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_HFA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 923
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 925
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 926
    monitor-exit p0

    return-void

    .line 915
    .end local v0           #i:Landroid/content/Intent;
    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1
.end method
