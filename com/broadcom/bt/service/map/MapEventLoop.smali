.class public Lcom/broadcom/bt/service/map/MapEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "MapEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/MAPConstants;


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final TAG:Ljava/lang/String; = "MapEventLoop"

.field private static final V:Z = true


# instance fields
.field private isAccessGranted:Z

.field private mInterrupted:Z

.field private mObexNativeData:I

.field private mService:Lcom/broadcom/bt/service/map/MapService;

.field private mThread:Ljava/lang/Thread;

.field private m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 43
    invoke-static {}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classBluetoothMapInit()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->isAccessGranted:Z

    .line 38
    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    .line 53
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    .line 64
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classInitData()V

    .line 65
    return-void
.end method

.method private native Native_BluetoothMapMSEEventLoop()V
.end method

.method private static native Native_classBluetoothMapInit()V
.end method

.method private native Native_classInitData()V
.end method

.method private native Native_classUninitData()V
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/map/MapEventLoop;)Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/map/MapEventLoop;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_BluetoothMapMSEEventLoop()V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classUninitData()V

    return-void
.end method


# virtual methods
.method fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "sCurrentPath"
    .parameter "sPath"

    .prologue
    .line 644
    move-object v0, p1

    .line 646
    .local v0, s_provider_folder:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    :cond_22
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V
    .registers 21
    .parameter "s"
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "s_provider_folder"

    .prologue
    .line 267
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFolderEntryFromProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v14, 0x0

    .line 276
    .local v14, status:B
    if-eqz p3, :cond_66

    .line 277
    :try_start_45
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v2, v0

    iget-object v2, v2, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v4, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v5, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/16 v7, 0x270f

    const/4 v8, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p5

    invoke-interface/range {v2 .. v8}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move v4, v14

    .line 306
    .end local v14           #status:B
    .local v4, status:B
    :goto_65
    return-void

    .line 281
    .end local v4           #status:B
    .restart local v14       #status:B
    :cond_66
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    array-length v2, v2
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_6c} :catch_ce

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_8d

    .line 285
    const/4 v4, 0x2

    .line 286
    .end local v14           #status:B
    .restart local v4       #status:B
    :try_start_72
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_80} :catch_81

    goto :goto_65

    .line 302
    :catch_81
    move-exception v2

    move-object v13, v2

    .line 303
    .local v13, e:Landroid/os/RemoteException;
    :goto_83
    const-string v2, "MapEventLoop"

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 290
    .end local v4           #status:B
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v14       #status:B
    :cond_8d
    add-int/lit8 p4, p4, 0x1

    .line 292
    :try_start_8f
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_91} :catch_ce

    :try_start_91
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v9, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-object v10, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-object v11, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v2, v2

    int-to-byte v12, v2

    move/from16 v6, p2

    move v7, v14

    move/from16 v8, p4

    invoke-virtual/range {v5 .. v12}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_cc} :catch_d2

    move v4, v14

    .end local v14           #status:B
    .restart local v4       #status:B
    goto :goto_65

    .line 302
    .end local v4           #status:B
    .restart local v14       #status:B
    :catch_ce
    move-exception v2

    move-object v13, v2

    move v4, v14

    .end local v14           #status:B
    .restart local v4       #status:B
    goto :goto_83

    .end local v4           #status:B
    .restart local v14       #status:B
    :catch_d2
    move-exception v2

    move-object v13, v2

    move v4, v14

    .end local v14           #status:B
    .restart local v4       #status:B
    goto :goto_83
.end method

.method public getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    .registers 13
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    .line 312
    const-string v0, "MapEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderEntryforVirtualRoot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz p2, :cond_6a

    .line 317
    const-string/jumbo v0, "root/telecom"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 319
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "msg"

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    .line 337
    :cond_50
    :goto_50
    return-void

    .line 322
    :cond_51
    const-string/jumbo v0, "root"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 324
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "telecom"

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_50

    .line 334
    :cond_6a
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_50
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    const-string v0, "bluetooth_map"

    return-object v0
.end method

.method public init()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "MapEventLoop"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public declared-synchronized onMCEConnected(IILjava/lang/String;)V
    .registers 9
    .parameter "mse_instance_id"
    .parameter "mse_session_id"
    .parameter "deviceName"

    .prologue
    const-string v2, "MapEventLoop"

    .line 207
    monitor-enter p0

    :try_start_3
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMCEConnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 211
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_41

    .line 213
    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->addSession(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_3e

    .line 215
    :try_start_27
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p3}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_32

    .line 224
    :goto_30
    monitor-exit p0

    return-void

    .line 216
    :catch_32
    move-exception v2

    move-object v1, v2

    .line 217
    .local v1, e:Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_30

    .line 207
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 221
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_41
    :try_start_41
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMCEConnected - did not find context for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_41 .. :try_end_5a} :catchall_3e

    goto :goto_30
.end method

.method public declared-synchronized onMCEDisconnected(II)V
    .registers 8
    .parameter "mse_instance_id"
    .parameter "mse_session_id"

    .prologue
    const-string v2, "MapEventLoop"

    .line 229
    monitor-enter p0

    :try_start_3
    const-string v2, "MapEventLoop"

    const-string/jumbo v3, "onMCEDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 233
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_30

    .line 236
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeSession(I)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2d

    .line 238
    :try_start_16
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 247
    :goto_1f
    monitor-exit p0

    return-void

    .line 239
    :catch_21
    move-exception v2

    move-object v1, v2

    .line 240
    .local v1, e:Landroid/os/RemoteException;
    :try_start_23
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    goto :goto_1f

    .line 229
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 244
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_30
    :try_start_30
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMCEDisconnected - did not find context for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_2d

    goto :goto_1f
.end method

.method public declared-synchronized onMCEGetFolderEntry(IIILjava/lang/String;)V
    .registers 11
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    const-string v0, "MapEventLoop"

    const-string v0, " "

    .line 342
    monitor-enter p0

    :try_start_5
    const-string v0, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMCEGetFolderEntry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v1

    .line 346
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v1, :cond_6a

    .line 348
    invoke-virtual {v1, p4}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, s_provider_folder:Ljava/lang/String;
    const-string/jumbo v0, "root/telecom"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "root"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 353
    :cond_5a
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_67

    .line 366
    .end local v5           #s_provider_folder:Ljava/lang/String;
    :goto_5d
    monitor-exit p0

    return-void

    .restart local v5       #s_provider_folder:Ljava/lang/String;
    :cond_5f
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 358
    :try_start_63
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_5d

    .line 342
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v5           #s_provider_folder:Ljava/lang/String;
    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0

    .line 363
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_6a
    :try_start_6a
    const-string v0, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMCEGetFolderEntry - did not find session for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_6a .. :try_end_83} :catchall_67

    goto :goto_5d
.end method

.method public declared-synchronized onMCEGetMsg(IBJB)V
    .registers 23
    .parameter "mse_session_id"
    .parameter "include_attachment"
    .parameter "message_handle"
    .parameter "char_set"

    .prologue
    .line 469
    monitor-enter p0

    :try_start_1
    const-string v5, "MapEventLoop"

    const-string/jumbo v6, "onMCEGetMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_6a

    move-result-object v15

    .line 472
    .local v15, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v15, :cond_97

    .line 475
    :try_start_17
    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v11

    .line 476
    .local v11, s_provider_id:Ljava/lang/String;
    if-eqz v11, :cond_2a

    const-string v5, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 483
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move/from16 v1, p1

    move-wide/from16 v2, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_6a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_39} :catch_5e

    .line 514
    .end local v11           #s_provider_id:Ljava/lang/String;
    :goto_39
    monitor-exit p0

    return-void

    .line 488
    .restart local v11       #s_provider_id:Ljava/lang/String;
    :cond_3b
    :try_start_3b
    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v5, v11}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 489
    .local v16, s_virtual_folder:Ljava/lang/String;
    if-eqz v16, :cond_4e

    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 496
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move/from16 v1, p1

    move-wide/from16 v2, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V
    :try_end_5d
    .catchall {:try_start_3b .. :try_end_5d} :catchall_6a
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5d} :catch_5e

    goto :goto_39

    .line 508
    .end local v11           #s_provider_id:Ljava/lang/String;
    .end local v16           #s_virtual_folder:Ljava/lang/String;
    :catch_5e
    move-exception v5

    move-object v14, v5

    .line 509
    .local v14, e:Landroid/os/RemoteException;
    :try_start_60
    const-string v5, "MapEventLoop"

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_6a

    goto :goto_39

    .line 469
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v15           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_6a
    move-exception v5

    monitor-exit p0

    throw v5

    .line 501
    .restart local v11       #s_provider_id:Ljava/lang/String;
    .restart local v15       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .restart local v16       #s_virtual_folder:Ljava/lang/String;
    :cond_6d
    :try_start_6d
    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v6, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v7, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v6, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v8, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v6, "root"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v6, p1

    move/from16 v12, p5

    move/from16 v13, p2

    invoke-interface/range {v5 .. v13}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_96
    .catchall {:try_start_6d .. :try_end_96} :catchall_6a
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_96} :catch_5e

    goto :goto_39

    .line 512
    .end local v11           #s_provider_id:Ljava/lang/String;
    .end local v16           #s_virtual_folder:Ljava/lang/String;
    :cond_97
    :try_start_97
    const-string v5, "MapEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMCEGetMsg - did not find session for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_97 .. :try_end_b3} :catchall_6a

    goto :goto_39
.end method

.method public declared-synchronized onMCEGetMsgEntry(ILjava/lang/String;BI)V
    .registers 56
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "first_item"
    .parameter "ref_data"

    .prologue
    .line 418
    monitor-enter p0

    :try_start_1
    const-string v3, "MapEventLoop"

    const-string/jumbo v4, "onMCEGetMsgEntry"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v50

    .line 421
    .local v50, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v50, :cond_12f

    .line 422
    const/16 v49, 0x0

    .line 423
    .local v49, msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v5, 0x0

    .line 424
    .local v5, status:B
    if-eqz p3, :cond_1e

    .line 425
    const/16 p4, 0x0

    .line 433
    :cond_1e
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 435
    .local v25, s_virtual_folder:Ljava/lang/String;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v3, v0

    if-eqz v3, :cond_e8

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v3, v0

    array-length v3, v3

    add-int/lit8 v4, p4, 0x1

    if-lt v3, v4, :cond_e8

    .line 436
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v3, v0

    aget-object v49, v3, p4

    .line 437
    add-int/lit8 p4, p4, 0x1

    .line 438
    const-string v3, "MapEventLoop"

    invoke-virtual/range {v49 .. v49}, Lcom/broadcom/bt/service/map/MessageInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    move v7, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    move v8, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    move v9, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d9

    const/4 v4, 0x1

    move v10, v4

    :goto_6d
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_dc

    const/4 v4, 0x1

    move v11, v4

    :goto_77
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_df

    const/4 v4, 0x1

    move v12, v4

    :goto_81
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e2

    const/4 v4, 0x1

    move v13, v4

    :goto_8b
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e5

    const/4 v4, 0x1

    move v14, v4

    :goto_95
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, v49

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    move/from16 v16, v0

    move-object/from16 v0, v49

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    move/from16 v17, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v4, p1

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v25}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_1 .. :try_end_d7} :catchall_12c

    .line 464
    .end local v5           #status:B
    .end local v25           #s_virtual_folder:Ljava/lang/String;
    .end local v49           #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :goto_d7
    monitor-exit p0

    return-void

    .line 439
    .restart local v5       #status:B
    .restart local v25       #s_virtual_folder:Ljava/lang/String;
    .restart local v49       #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_d9
    const/4 v4, 0x0

    move v10, v4

    goto :goto_6d

    :cond_dc
    const/4 v4, 0x0

    move v11, v4

    goto :goto_77

    :cond_df
    const/4 v4, 0x0

    move v12, v4

    goto :goto_81

    :cond_e2
    const/4 v4, 0x0

    move v13, v4

    goto :goto_8b

    :cond_e5
    const/4 v4, 0x0

    move v14, v4

    goto :goto_95

    .line 453
    :cond_e8
    const/4 v5, 0x2

    .line 454
    const/4 v3, 0x0

    :try_start_ea
    move-object v0, v3

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    .line 455
    const-string v3, "MapEventLoop"

    const-string v4, "No more messages"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object/from16 v26, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "0"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-string v41, ""

    const-string v42, ""

    const-string v43, ""

    const-string v44, ""

    const-string v45, ""

    const-string v46, ""

    const-string v47, ""

    const-string v48, ""

    move/from16 v27, p1

    move/from16 v28, v5

    invoke-virtual/range {v26 .. v48}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_ea .. :try_end_12b} :catchall_12c

    goto :goto_d7

    .line 418
    .end local v5           #status:B
    .end local v25           #s_virtual_folder:Ljava/lang/String;
    .end local v49           #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v50           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_12c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 462
    .restart local v50       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_12f
    :try_start_12f
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCEGetMsgEntry - did not find session for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catchall {:try_start_12f .. :try_end_14b} :catchall_12c

    goto :goto_d7
.end method

.method public declared-synchronized onMCEGetMsgListInfo(ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .registers 35
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "parameter_mask"
    .parameter "max_list_cnt"
    .parameter "list_start_offset"
    .parameter "subject_length"
    .parameter "msg_mask"
    .parameter "period_begin"
    .parameter "period_end"
    .parameter "read_status"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    const-string v3, "MapEventLoop"

    const-string/jumbo v4, "onMCEGetMsgListInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_93

    move-result-object v20

    .line 378
    .local v20, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v20, :cond_96

    .line 386
    :try_start_17
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, s_provider_folder:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 389
    const-string/jumbo v3, "root/telecom"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "root"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 395
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    .end local v7           #s_provider_folder:Ljava/lang/String;
    const/4 v8, 0x2

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/broadcom/bt/service/map/MapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    :try_end_53
    .catchall {:try_start_17 .. :try_end_53} :catchall_93
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_53} :catch_86

    .line 412
    :goto_53
    monitor-exit p0

    return-void

    .line 401
    .restart local v7       #s_provider_folder:Ljava/lang/String;
    :cond_55
    :try_start_55
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v4, v0

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    move/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    invoke-interface/range {v3 .. v18}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    :try_end_85
    .catchall {:try_start_55 .. :try_end_85} :catchall_93
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_85} :catch_86

    goto :goto_53

    .line 406
    .end local v7           #s_provider_folder:Ljava/lang/String;
    :catch_86
    move-exception v3

    move-object/from16 v19, v3

    .line 407
    .local v19, e:Landroid/os/RemoteException;
    :try_start_89
    const-string v3, "MapEventLoop"

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_93

    goto :goto_53

    .line 374
    .end local v19           #e:Landroid/os/RemoteException;
    .end local v20           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_93
    move-exception v3

    monitor-exit p0

    throw v3

    .line 410
    .restart local v20       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_96
    :try_start_96
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCEGetMsgListInfo - did not find session for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_93

    goto :goto_53
.end method

.method public declared-synchronized onMCENotifyRegister(IB)V
    .registers 9
    .parameter "mse_session_id"
    .parameter "on_off"

    .prologue
    const-string v3, "MapEventLoop"

    .line 589
    monitor-enter p0

    :try_start_3
    const-string v3, "MapEventLoop"

    const-string/jumbo v4, "onMCENotifyRegister"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_38

    move-result-object v2

    .line 592
    .local v2, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v2, :cond_3b

    .line 594
    :try_start_13
    const-string/jumbo v1, "off"

    .line 595
    .local v1, notificationmode:Ljava/lang/String;
    if-eqz p2, :cond_1b

    .line 596
    const-string/jumbo v1, "on"

    .line 598
    :cond_1b
    iget-object v3, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, p1, v4, v5, v1}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_2c

    .line 606
    .end local v1           #notificationmode:Ljava/lang/String;
    :goto_2a
    monitor-exit p0

    return-void

    .line 600
    :catch_2c
    move-exception v3

    move-object v0, v3

    .line 601
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2e
    const-string v3, "MapEventLoop"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_38

    goto :goto_2a

    .line 589
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_38
    move-exception v3

    monitor-exit p0

    throw v3

    .line 604
    .restart local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_3b
    :try_start_3b
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCENotifyRegister - did not find session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_38

    goto :goto_2a
.end method

.method public declared-synchronized onMCEPushMsg(IBBBLjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .parameter "request_id"
    .parameter "msg_transparent"
    .parameter "msg_retry"
    .parameter "msg_charset"
    .parameter "msg_folder"
    .parameter "msg_content_uri"

    .prologue
    .line 520
    monitor-enter p0

    :try_start_1
    const-string v3, "MapEventLoop"

    const-string/jumbo v4, "onMCEPushMsg"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_80

    move-result-object v14

    .line 525
    .local v14, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v14, :cond_83

    .line 528
    :try_start_17
    iget-object v3, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 529
    .local v15, s_virtual_folder:Ljava/lang/String;
    invoke-virtual {v14, v15}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 530
    .local v10, s_provider_folder:Ljava/lang/String;
    const-string/jumbo v3, "root/telecom"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string/jumbo v3, "root"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 536
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    move/from16 v4, p1

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/broadcom/bt/service/map/MapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_80
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_4b} :catch_74

    .line 552
    .end local v10           #s_provider_folder:Ljava/lang/String;
    .end local v15           #s_virtual_folder:Ljava/lang/String;
    :goto_4b
    monitor-exit p0

    return-void

    .line 540
    .restart local v10       #s_provider_folder:Ljava/lang/String;
    .restart local v15       #s_virtual_folder:Ljava/lang/String;
    :cond_4d
    :try_start_4d
    iget-object v3, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v6, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const-string/jumbo v4, "root"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v12}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_4d .. :try_end_73} :catchall_80
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_73} :catch_74

    goto :goto_4b

    .line 546
    .end local v10           #s_provider_folder:Ljava/lang/String;
    .end local v15           #s_virtual_folder:Ljava/lang/String;
    :catch_74
    move-exception v3

    move-object v13, v3

    .line 547
    .local v13, e:Landroid/os/RemoteException;
    :try_start_76
    const-string v3, "MapEventLoop"

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_80

    goto :goto_4b

    .line 520
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v14           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_80
    move-exception v3

    monitor-exit p0

    throw v3

    .line 550
    .restart local v14       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_83
    :try_start_83
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCEPushMsg - did not find session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_80

    goto :goto_4b
.end method

.method public declared-synchronized onMCESetMsgStatus(IJBB)V
    .registers 18
    .parameter "session_id"
    .parameter "msg_handle"
    .parameter "status_type"
    .parameter "status_value"

    .prologue
    .line 557
    monitor-enter p0

    :try_start_1
    const-string v0, "MapEventLoop"

    const-string/jumbo v1, "onMCESetMsgStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_65

    move-result-object v9

    .line 560
    .local v9, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v9, :cond_68

    .line 562
    const/4 v10, 0x0

    .line 564
    .local v10, s_provider_id:Ljava/lang/String;
    :try_start_12
    iget-object v0, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v10

    .line 565
    if-eqz v10, :cond_41

    .line 566
    const/4 v11, 0x0

    .line 567
    .local v11, s_virtual_folder:Ljava/lang/String;
    iget-object v0, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, v10}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 568
    iget-object v0, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_65
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3f} :catch_59

    .line 584
    .end local v10           #s_provider_id:Ljava/lang/String;
    .end local v11           #s_virtual_folder:Ljava/lang/String;
    :goto_3f
    monitor-exit p0

    return-void

    .line 574
    .restart local v10       #s_provider_id:Ljava/lang/String;
    :cond_41
    :try_start_41
    const-string v0, "MapEventLoop"

    const-string/jumbo v1, "onMCESetMsgStatus : Cannot get provider id failing.  Oops how did this happen?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    move v1, p1

    move-object v2, v10

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_65
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_58} :catch_59

    goto :goto_3f

    .line 578
    :catch_59
    move-exception v0

    move-object v8, v0

    .line 579
    .local v8, e:Landroid/os/RemoteException;
    :try_start_5b
    const-string v0, "MapEventLoop"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_65

    goto :goto_3f

    .line 557
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v9           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v10           #s_provider_id:Ljava/lang/String;
    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0

    .line 582
    .restart local v9       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_68
    :try_start_68
    const-string v0, "MapEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMCESetMsgStatus - did not find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_68 .. :try_end_81} :catchall_65

    goto :goto_3f
.end method

.method public declared-synchronized onMCEUpdateInbox(I)V
    .registers 7
    .parameter "mse_session_id"

    .prologue
    const-string v2, "MapEventLoop"

    .line 611
    monitor-enter p0

    :try_start_3
    const-string v2, "MapEventLoop"

    const-string/jumbo v3, "onMCEUpdateInbox"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2a

    move-result-object v0

    .line 614
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_2d

    .line 617
    :try_start_13
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1e

    .line 625
    :goto_1c
    monitor-exit p0

    return-void

    .line 618
    :catch_1e
    move-exception v2

    move-object v1, v2

    .line 619
    .local v1, e:Landroid/os/RemoteException;
    :try_start_20
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    goto :goto_1c

    .line 611
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 622
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_2d
    :try_start_2d
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMCEUpdateInbox - did not find context for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_2a

    goto :goto_1c
.end method

.method public declared-synchronized onMSESetFolder(ILjava/lang/String;)V
    .registers 7
    .parameter "mse_session_id"
    .parameter "current_folder"

    .prologue
    const-string v1, "MapEventLoop"

    .line 251
    monitor-enter p0

    :try_start_3
    const-string v1, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMSESetFolder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .line 254
    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_28

    .line 256
    iput-object p2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_42

    .line 261
    :goto_26
    monitor-exit p0

    return-void

    .line 258
    :cond_28
    :try_start_28
    const-string v1, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMSESetFolder - did not find session for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_42

    goto :goto_26

    .line 251
    .end local v0           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_42
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onMSEStarted(Ljava/lang/String;BII)V
    .registers 11
    .parameter "mse_name"
    .parameter "mse_type"
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    const-string v3, ")"

    const-string v3, "MapEventLoop"

    .line 156
    monitor-enter p0

    :try_start_5
    const-string v3, "MapEventLoop"

    const-string/jumbo v4, "onMSEStarted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v3, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 160
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_77

    .line 161
    const/4 v2, 0x1

    .line 162
    .local v2, mse_status:B
    iput p3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    .line 163
    if-nez p4, :cond_47

    .line 164
    const/4 v2, 0x2

    .line 165
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mse service started successfully ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_68

    .line 172
    :goto_3c
    :try_start_3c
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_68
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_45} :catch_6b

    .line 181
    .end local v2           #mse_status:B
    :goto_45
    monitor-exit p0

    return-void

    .line 169
    .restart local v2       #mse_status:B
    :cond_47
    :try_start_47
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not start mse service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_47 .. :try_end_67} :catchall_68

    goto :goto_3c

    .line 156
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #mse_status:B
    :catchall_68
    move-exception v3

    monitor-exit p0

    throw v3

    .line 174
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #mse_status:B
    :catch_6b
    move-exception v3

    move-object v1, v3

    .line 175
    .local v1, e:Landroid/os/RemoteException;
    :try_start_6d
    const-string v3, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 178
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mse_status:B
    :cond_77
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMSEStarted - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_6d .. :try_end_9a} :catchall_68

    goto :goto_45
.end method

.method public declared-synchronized onMSEStopped(II)V
    .registers 9
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    const-string v2, "MapEventLoop"

    .line 187
    monitor-enter p0

    :try_start_3
    const-string v2, "MapEventLoop"

    const-string/jumbo v3, "onMSEStopped"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3e

    move-result-object v0

    .line 191
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_21

    :try_start_13
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    if-eqz v2, :cond_21

    .line 192
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V

    .line 195
    :cond_21
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    if-eqz v2, :cond_30

    if-eqz v0, :cond_30

    .line 196
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_30} :catch_32

    .line 201
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 198
    :catch_32
    move-exception v2

    move-object v1, v2

    .line 199
    .local v1, e:Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_30

    .line 187
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onMsgGetInProgress()V
    .registers 3

    .prologue
    .line 630
    monitor-enter p0

    :try_start_1
    const-string v0, "MapEventLoop"

    const-string/jumbo v1, "onMsgGetInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 632
    monitor-exit p0

    return-void

    .line 630
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMsgPushInProgress()V
    .registers 3

    .prologue
    .line 637
    monitor-enter p0

    :try_start_1
    const-string v0, "MapEventLoop"

    const-string/jumbo v1, "onMsgPushInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 639
    monitor-exit p0

    return-void

    .line 637
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMapService(Lcom/broadcom/bt/service/map/MapService;)V
    .registers 4
    .parameter "service"

    .prologue
    .line 77
    const-string v0, "MapEventLoop"

    const-string/jumbo v1, "setMapService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    .line 79
    return-void
.end method

.method public declared-synchronized start()V
    .registers 5

    .prologue
    const-string v0, "MapEventLoop"

    .line 83
    monitor-enter p0

    :try_start_3
    const-string v0, "MapEventLoop"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_43

    if-eqz v0, :cond_11

    .line 123
    :goto_f
    monitor-exit p0

    return-void

    .line 89
    :cond_11
    :try_start_11
    new-instance v0, Lcom/broadcom/bt/service/map/MapEventLoop$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP Event Loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop$1;-><init>(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    .line 118
    const-string v0, "MapEventLoop"

    const-string v1, "Starting Event Loop thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    .line 121
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_43

    goto :goto_f

    .line 83
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    const-string v1, "MapEventLoop"

    const-string v2, "Stop called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_24

    .line 133
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    if-eqz v1, :cond_15

    .line 134
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/MapService;->unregisterallProviders()V

    .line 138
    :cond_15
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2c

    .line 141
    :try_start_18
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_24} :catch_26

    .line 149
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 145
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_24

    .line 129
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method
