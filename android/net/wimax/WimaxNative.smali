.class public Landroid/net/wimax/WimaxNative;
.super Ljava/lang/Object;
.source "WimaxNative.java"


# static fields
.field static final EVENT_AUTH_FAIL_MSG:I = 0x3

.field static final EVENT_AUTH_REJECTION_CODE:I = 0xa

.field static final EVENT_AUTH_UTC_TIME:I = 0x9

.field static final EVENT_CARD_PRESENCE:I = 0x1

.field static final EVENT_DEVICE_STATUS:I = 0x0

.field static final EVENT_LINK_WEAK_INFO:I = 0x8

.field static final EVENT_MRU_LIST_MSG:I = 0x4

.field static final EVENT_MRU_UPDATE_MSG:I = 0x5

.field static final EVENT_OMADM_RESPONSE:I = 0x6

.field static final EVENT_POWER_STATE:I = 0x2

.field static final EVENT_RADIO_INFO_RESPONSE:I = 0x7

.field public static dsInfo:Landroid/net/wimax/DeviceStatusInfo;

.field private static mAvailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/structs/NspInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;

.field public static mMruListRsp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/MruList;",
            ">;"
        }
    .end annotation
.end field

.field public static mOdbReadRsp:[B

.field public static radioInfo:Landroid/net/wimax/RadioInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/net/wimax/RadioInfo;

    invoke-direct {v0}, Landroid/net/wimax/RadioInfo;-><init>()V

    sput-object v0, Landroid/net/wimax/WimaxNative;->radioInfo:Landroid/net/wimax/RadioInfo;

    .line 70
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo;

    invoke-direct {v0}, Landroid/net/wimax/DeviceStatusInfo;-><init>()V

    sput-object v0, Landroid/net/wimax/WimaxNative;->dsInfo:Landroid/net/wimax/DeviceStatusInfo;

    .line 72
    invoke-static {}, Landroid/net/wimax/WimaxNative;->classInitNative()V

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized AddAvailableList(Landroid/net/wimax/structs/NspInfo;)V
    .registers 13
    .parameter "info"

    .prologue
    .line 315
    const-class v11, Landroid/net/wimax/WimaxNative;

    monitor-enter v11

    :try_start_3
    new-instance v0, Landroid/net/wimax/structs/NspInfo;

    invoke-direct {v0}, Landroid/net/wimax/structs/NspInfo;-><init>()V

    .line 316
    .local v0, tmp:Landroid/net/wimax/structs/NspInfo;
    if-eqz v0, :cond_3a

    .line 317
    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getCinr()F

    move-result v1

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getCinrInDB()I

    move-result v2

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getNspId()I

    move-result v4

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getRssi()F

    move-result v6

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getRssiInDBm()I

    move-result v7

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->isActivated()Z

    move-result v8

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getBaseStationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/net/wimax/structs/NspInfo;->getNapId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Landroid/net/wimax/structs/NspInfo;->setValue(FILjava/lang/String;ILjava/lang/String;FIZLjava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v1, Landroid/net/wimax/WimaxNative;->mAvailableList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    .line 321
    :cond_3a
    monitor-exit v11

    return-void

    .line 315
    .end local v0           #tmp:Landroid/net/wimax/structs/NspInfo;
    :catchall_3c
    move-exception v1

    monitor-exit v11

    throw v1
.end method

.method public static native IdleReq()Z
.end method

.method public static native IpObtained()Z
.end method

.method private static declared-synchronized NotifyAuthFailMsg(ILjava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 221
    const-class v0, Landroid/net/wimax/WimaxNative;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 222
    monitor-exit v0

    return-void

    .line 221
    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized NotifyDeviceInsertRemove(Z)V
    .registers 5
    .parameter "cardPresence"

    .prologue
    const/4 v3, 0x1

    .line 172
    const-class v0, Landroid/net/wimax/WimaxNative;

    monitor-enter v0

    :try_start_4
    sget-object v1, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz p0, :cond_16

    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 173
    monitor-exit v0

    return-void

    .line 172
    :cond_16
    const/4 v3, 0x0

    goto :goto_9

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized NotifyDeviceStatusChange(III)V
    .registers 7
    .parameter "deviceStatus"
    .parameter "statusReason"
    .parameter "connectionProgressInfo"

    .prologue
    .line 157
    const-class v0, Landroid/net/wimax/WimaxNative;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/wimax/WimaxNative;->dsInfo:Landroid/net/wimax/DeviceStatusInfo;

    if-eqz v1, :cond_18

    .line 158
    sget-object v1, Landroid/net/wimax/WimaxNative;->dsInfo:Landroid/net/wimax/DeviceStatusInfo;

    invoke-virtual {v1, p0, p1, p2}, Landroid/net/wimax/DeviceStatusInfo;->setDeviceStatus(III)V

    .line 159
    sget-object v1, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    sget-object v3, Landroid/net/wimax/WimaxNative;->dsInfo:Landroid/net/wimax/DeviceStatusInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 161
    :cond_18
    monitor-exit v0

    return-void

    .line 157
    :catchall_1a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized NotifyLinkWeakInformation(I)V
    .registers 6
    .parameter "subType"

    .prologue
    .line 289
    const-class v0, Landroid/net/wimax/WimaxNative;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 290
    monitor-exit v0

    return-void

    .line 289
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized NotifyMruListMsg(ILjava/lang/String;)V
    .registers 16
    .parameter "nSize"
    .parameter "strMruList"

    .prologue
    .line 180
    const-class v8, Landroid/net/wimax/WimaxNative;

    monitor-enter v8

    if-nez p0, :cond_15

    .line 181
    :try_start_5
    sget-object v9, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    sget-object v13, Landroid/net/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_7e

    .line 214
    :goto_13
    monitor-exit v8

    return-void

    .line 185
    :cond_15
    :try_start_15
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v9, "@"

    invoke-direct {v5, p1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v5, st:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 187
    .local v4, nCF:I
    const/4 v0, 0x0

    .local v0, BW:B
    const/4 v1, 0x0

    .line 189
    .local v1, FFTSize:B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, p0, :cond_6f

    .line 190
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 191
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, temp:Ljava/lang/String;
    if-eqz v7, :cond_5f

    .line 193
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, "#"

    invoke-direct {v6, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v6, stList:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 195
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 196
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 198
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 199
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 201
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 207
    .end local v6           #stList:Ljava/util/StringTokenizer;
    :cond_5f
    new-instance v3, Landroid/net/wimax/MruList;

    invoke-direct {v3}, Landroid/net/wimax/MruList;-><init>()V

    .line 208
    .local v3, mruList:Landroid/net/wimax/MruList;
    invoke-virtual {v3, v4, v0, v1}, Landroid/net/wimax/MruList;->setValue(IBB)V

    .line 209
    sget-object v9, Landroid/net/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v3           #mruList:Landroid/net/wimax/MruList;
    .end local v7           #temp:Ljava/lang/String;
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 213
    :cond_6f
    sget-object v9, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    sget-object v13, Landroid/net/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_7d
    .catchall {:try_start_15 .. :try_end_7d} :catchall_7e

    goto :goto_13

    .line 180
    .end local v0           #BW:B
    .end local v1           #FFTSize:B
    .end local v2           #i:I
    .end local v4           #nCF:I
    .end local v5           #st:Ljava/util/StringTokenizer;
    :catchall_7e
    move-exception v9

    monitor-exit v8

    throw v9
.end method

.method private static declared-synchronized NotifyMruUpdateMsg(II)V
    .registers 6
    .parameter "subType"
    .parameter "ErrorValue"

    .prologue
    .line 217
    const-class v0, Landroid/net/wimax/WimaxNative;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p0, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 218
    monitor-exit v0

    return-void

    .line 217
    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized NotifyOdbMngResponse([BII)V
    .registers 10
    .parameter "respDataArray"
    .parameter "nLen"
    .parameter "odbMngState"

    .prologue
    const/4 v3, -0x1

    .line 226
    const-class v2, Landroid/net/wimax/WimaxNative;

    monitor-enter v2

    if-nez p1, :cond_24

    .line 227
    const/4 v3, 0x1

    :try_start_7
    new-array v0, v3, [B

    .line 228
    .local v0, bDataArray:[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v0, v3

    .line 229
    array-length v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 230
    .local v1, respData:Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 231
    sget-object v3, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_44

    .line 247
    .end local v0           #bDataArray:[B
    .end local v1           #respData:Ljava/nio/ByteBuffer;
    :cond_22
    :goto_22
    monitor-exit v2

    return-void

    .line 232
    :cond_24
    if-ne p1, v3, :cond_47

    .line 233
    const/4 v3, 0x1

    :try_start_27
    new-array v0, v3, [B

    .line 234
    .restart local v0       #bDataArray:[B
    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-byte v4, v0, v3

    .line 235
    array-length v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 236
    .restart local v1       #respData:Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 237
    sget-object v3, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_44

    goto :goto_22

    .line 226
    .end local v0           #bDataArray:[B
    .end local v1           #respData:Ljava/nio/ByteBuffer;
    :catchall_44
    move-exception v3

    monitor-exit v2

    throw v3

    .line 238
    :cond_47
    :try_start_47
    array-length v3, p0

    if-lez v3, :cond_22

    .line 239
    const/4 v3, 0x1

    new-array v0, v3, [B

    .line 240
    .restart local v0       #bDataArray:[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v0, v3

    .line 241
    array-length v3, p0

    array-length v4, v0

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 242
    .restart local v1       #respData:Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 243
    const/4 v3, 0x0

    array-length v4, p0

    invoke-virtual {v1, p0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 245
    sget-object v3, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_6d
    .catchall {:try_start_47 .. :try_end_6d} :catchall_44

    goto :goto_22
.end method

.method private static declared-synchronized NotifyPowerManagement(I)V
    .registers 6
    .parameter "powerState"

    .prologue
    .line 176
    const-class v0, Landroid/net/wimax/WimaxNative;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 177
    monitor-exit v0

    return-void

    .line 176
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized NotifyRadioInfoResponse(Ljava/lang/String;)V
    .registers 12
    .parameter "strRadioInfoList"

    .prologue
    .line 250
    const-class v9, Landroid/net/wimax/WimaxNative;

    monitor-enter v9

    const/4 v1, 0x0

    .line 251
    .local v1, nTemperature:I
    const/4 v2, 0x0

    .line 252
    .local v2, nbIdleMode:I
    const/4 v3, 0x0

    .line 253
    .local v3, nSleepMode:I
    const/4 v4, 0x0

    .line 254
    .local v4, nIdleModeTimer:I
    const/4 v5, 0x0

    .line 255
    .local v5, nPseudoId:I
    :try_start_8
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v0, "@"

    invoke-direct {v6, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v6, st:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 259
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, temp:Ljava/lang/String;
    if-eqz v8, :cond_62

    .line 261
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v0, "#"

    invoke-direct {v7, v8, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v7, stList:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 263
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 266
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 269
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 270
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 272
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 274
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 283
    .end local v7           #stList:Ljava/util/StringTokenizer;
    :cond_62
    sget-object v0, Landroid/net/wimax/WimaxNative;->radioInfo:Landroid/net/wimax/RadioInfo;

    invoke-virtual/range {v0 .. v5}, Landroid/net/wimax/RadioInfo;->setValue(IIIII)V

    .line 284
    sget-object v0, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_73

    .line 286
    .end local v8           #temp:Ljava/lang/String;
    :cond_71
    monitor-exit v9

    return-void

    .line 250
    .end local v6           #st:Ljava/util/StringTokenizer;
    :catchall_73
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static native OdbAddReq([B)I
.end method

.method public static native OdbDefaultReq()Z
.end method

.method public static native OdbDeleteReq([B)I
.end method

.method public static native OdbReadReq([B)I
.end method

.method public static native OdbUpdateReq()I
.end method

.method public static native OdbWriteReq([B)I
.end method

.method public static native SendUTCTime(Ljava/lang/String;)V
.end method

.method public static SetHandler(Landroid/os/Handler;)V
    .registers 1
    .parameter "handler"

    .prologue
    .line 153
    sput-object p0, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method public static native VirtualIdleReq(IB)Z
.end method

.method private static native classInitNative()V
.end method

.method public static native connectmWimax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native destroyNative()V
.end method

.method public static native disconnectWimax()Z
.end method

.method public static native doDhcpRequest(Landroid/net/DhcpInfo;)Z
.end method

.method public static native getAvailableNetworks(Landroid/net/wimax/structs/NspInfo;)Z
.end method

.method public static native getConnectedNSP(Landroid/net/wimax/structs/NspInfo;)I
.end method

.method public static native getConnectionTime()Ljava/lang/String;
.end method

.method public static native getDeviceInformation(Landroid/net/wimax/DeviceInfo;)Z
.end method

.method public static native getLinkInfo()Ljava/lang/String;
.end method

.method public static native getLinkState()Z
.end method

.method public static native getMacAddressCommand()Ljava/lang/String;
.end method

.method public static native getMruList()Z
.end method

.method public static native getMruUpdate([I[B[BI)Z
.end method

.method public static native getNeighborList()Z
.end method

.method public static native getNetworkEntryCompleteTimes()[I
.end method

.method public static native getOdbConfigData()[I
.end method

.method public static native getRadioInfo()Z
.end method

.method private static declared-synchronized getUTCTime()V
    .registers 8

    .prologue
    .line 324
    const-class v3, Landroid/net/wimax/WimaxNative;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 325
    .local v1, now:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyMMddHHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    if-eqz v0, :cond_3b

    .line 327
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, strUTCtime:Ljava/lang/String;
    const-string v4, "UTCTIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v4, Landroid/net/wimax/WimaxNative;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3d

    .line 331
    .end local v2           #strUTCtime:Ljava/lang/String;
    :cond_3b
    monitor-exit v3

    return-void

    .line 324
    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    .end local v1           #now:Ljava/util/Date;
    :catchall_3d
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static native loadDriver(B)Z
.end method

.method public static native scanCommand()Z
.end method

.method public static setAvailableList(Ljava/util/List;)V
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wimax/structs/NspInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/structs/NspInfo;>;"
    sput-object p0, Landroid/net/wimax/WimaxNative;->mAvailableList:Ljava/util/List;

    .line 301
    return-void
.end method

.method public static native setBackhaulMode(Z)V
.end method

.method public static native setDMMode(Z)V
.end method

.method public static native setDeviceStateToInitComplete()V
.end method

.method public static native setDeviceStateToStandby()V
.end method

.method public static native setDeviceStateToVirtualIdle()V
.end method

.method public static native setEnableLog(Z)V
.end method

.method public static native setEnableLogLevel(C)V
.end method

.method public static native setLinkInfo(Z)V
.end method

.method public static native setRctMode(Z)V
.end method

.method public static native setVirtualIdleWhileAPsleep(B)Z
.end method

.method public static native setWimaxTethered(B)Z
.end method

.method public static native startWimax()Z
.end method

.method public static native stopWimax()Z
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    invoke-direct {p0}, Landroid/net/wimax/WimaxNative;->destroyNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 341
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 343
    return-void

    .line 341
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
