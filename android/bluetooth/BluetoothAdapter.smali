.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;
    }
.end annotation


# static fields
.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_DI_REMOTE_DI_INFO_RECEIVED:Ljava/lang/String; = "android.bluetooth.adapter.action.DI_REMOTE_DI_INFO_RECEIVED"

.field public static final ACTION_DI_REMOTE_DI_RECORD_RECEIVED:Ljava/lang/String; = "android.bluetooth.adapter.action.DI_REMOTE_DI_RECORD_RECEIVED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_RFTEST_OFF:Ljava/lang/String; = "android.bluetooth.adapter.action.RFTEST_OFF"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field private static final DBG:Z = false

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_DI_CLIENT_EXECUTABLE_URL:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_CLIENT_EXECUTABLE_URL"

.field public static final EXTRA_DI_DOCUMENTATION_URL:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_DOCUMENTATION_URL"

.field public static final EXTRA_DI_HANDLE:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_HANDLE"

.field public static final EXTRA_DI_PRIMARY_RECORD:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_PRIMARY_RECORD"

.field public static final EXTRA_DI_PRODUCT_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_PRODUCT_ID"

.field public static final EXTRA_DI_REC_NUM:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_REC_NUM"

.field public static final EXTRA_DI_REMOTE_ADDRESS:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_REMOTE_ADDRESS"

.field public static final EXTRA_DI_SERVICE_DESCRIPTION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_SERVICE_DESCRIPTION"

.field public static final EXTRA_DI_SPEC_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_SPEC_ID"

.field public static final EXTRA_DI_STATUS:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_STATUS"

.field public static final EXTRA_DI_VENDOR_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_VENDOR_ID"

.field public static final EXTRA_DI_VENDOR_ID_SOURCE:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_VENDOR_ID_SOURCE"

.field public static final EXTRA_DI_VERSION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_VERSION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .parameter "service"

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mHandler:Landroid/os/Handler;

    .line 454
    if-nez p1, :cond_15

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_15
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 458
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 1156
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_d

    :cond_b
    move v2, v3

    .line 1176
    :goto_c
    return v2

    .line 1159
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v4, :cond_34

    .line 1160
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1161
    .local v0, c:C
    rem-int/lit8 v2, v1, 0x3

    packed-switch v2, :pswitch_data_36

    .line 1159
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1164
    :pswitch_1c
    const/16 v2, 0x30

    if-lt v0, v2, :cond_24

    const/16 v2, 0x39

    if-le v0, v2, :cond_19

    :cond_24
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2c

    const/16 v2, 0x46

    if-le v0, v2, :cond_19

    :cond_2c
    move v2, v3

    .line 1168
    goto :goto_c

    .line 1170
    :pswitch_2e
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_19

    move v2, v3

    .line 1173
    goto :goto_c

    .line 1176
    .end local v0           #c:C
    :cond_34
    const/4 v2, 0x1

    goto :goto_c

    .line 1161
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_2e
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 15
    .parameter "name"
    .parameter "uuid"
    .parameter "auth"
    .parameter "encrypt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 989
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;

    invoke-direct {v4, p2}, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;-><init>(Ljava/util/UUID;)V

    .line 995
    .local v4, picker:Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;
    :goto_6
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;->nextChannel()I

    move-result v0

    .line 997
    .local v0, channel:I
    if-ne v0, v9, :cond_14

    .line 998
    new-instance v6, Ljava/io/IOException;

    const-string v7, "No available channels"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1001
    :cond_14
    new-instance v5, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p3, p4, v0}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1003
    .local v5, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v6, v5, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v2

    .line 1004
    .local v2, errno:I
    if-nez v2, :cond_51

    .line 1021
    const/4 v3, -0x1

    .line 1023
    .local v3, handle:I
    :try_start_23
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-interface {v6, p1, v7, v0, v8}, Landroid/bluetooth/IBluetooth;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_32} :catch_64

    move-result v3

    .line 1026
    :goto_33
    if-ne v3, v9, :cond_6e

    .line 1028
    :try_start_35
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_76

    .line 1030
    :goto_38
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to register SDP record for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1007
    .end local v3           #handle:I
    :cond_51
    const/16 v6, 0x62

    if-ne v2, v6, :cond_5b

    .line 1010
    :try_start_55
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_6

    .line 1011
    :catch_59
    move-exception v6

    goto :goto_6

    .line 1015
    :cond_5b
    :try_start_5b
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_74

    .line 1017
    :goto_5e
    iget-object v6, v5, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    goto :goto_6

    .line 1025
    .restart local v3       #handle:I
    :catch_64
    move-exception v6

    move-object v1, v6

    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "BluetoothAdapter"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1032
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6e
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3}, Landroid/bluetooth/BluetoothServerSocket;->setCloseHandler(Landroid/os/Handler;I)V

    .line 1033
    return-object v5

    .line 1016
    .end local v3           #handle:I
    :catch_74
    move-exception v6

    goto :goto_5e

    .line 1029
    .restart local v3       #handle:I
    :catch_76
    move-exception v6

    goto :goto_38
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 4

    .prologue
    .line 439
    const-class v2, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v2

    :try_start_3
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_1a

    .line 440
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 441
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 442
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 443
    .local v1, service:Landroid/bluetooth/IBluetooth;
    new-instance v3, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v3, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetooth;)V

    sput-object v3, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 446
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/bluetooth/IBluetooth;
    :cond_1a
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v2

    return-object v3

    .line 439
    :catchall_1e
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1086
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1088
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1089
    .local v0, errno:I
    if-eqz v0, :cond_18

    .line 1091
    :try_start_10
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_19

    .line 1093
    :goto_13
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1095
    :cond_18
    return-object v1

    .line 1092
    :catch_19
    move-exception v2

    goto :goto_13
.end method

.method private toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1131
    .local v0, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 1132
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1131
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1134
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancelDiscovery()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 764
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    move v1, v3

    .line 768
    :goto_a
    return v1

    .line 766
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    :goto_10
    move v1, v3

    .line 768
    goto :goto_a

    .line 767
    :catch_12
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public disable()Z
    .registers 4

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 571
    :goto_7
    return v1

    .line 570
    :catch_8
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public enable()Z
    .registers 4

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 540
    :goto_6
    return v1

    .line 539
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public fetchRemoteDiInfo(Ljava/lang/String;)V
    .registers 5
    .parameter "remoteAddress"

    .prologue
    .line 1202
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->fetchRemoteDiInfo(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1204
    :goto_5
    return-void

    .line 1203
    :catch_6
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 585
    :goto_6
    return-object v1

    .line 584
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBondedDevices()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_10

    .line 811
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 816
    :goto_f
    return-object v1

    .line 814
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->listBonds()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_f

    .line 815
    :catch_1b
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getDiscoverableTimeout()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 693
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    move v1, v3

    .line 697
    :goto_a
    return v1

    .line 695
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    goto :goto_a

    .line 696
    :catch_12
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 697
    goto :goto_a
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 597
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 599
    :goto_6
    return-object v1

    .line 598
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3
    .parameter "address"

    .prologue
    .line 473
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteServices(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 1188
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->getRemoteServices(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1190
    :goto_6
    return v1

    .line 1189
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getScanMode()I
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 642
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_c

    move v1, v3

    .line 646
    :goto_b
    return v1

    .line 644
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getScanMode()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    move-result v1

    goto :goto_b

    .line 645
    :catch_13
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 646
    goto :goto_b
.end method

.method public getState()I
    .registers 4

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 506
    :goto_6
    return v1

    .line 505
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    const/16 v1, 0xa

    goto :goto_6
.end method

.method public isDiscovering()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 791
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    move v1, v3

    .line 795
    :goto_a
    return v1

    .line 793
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    goto :goto_a

    .line 794
    :catch_12
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 795
    goto :goto_a
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 488
    :goto_6
    return v1

    .line 487
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 10
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1045
    new-instance v3, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v5, v5, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1047
    .local v3, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 1048
    .local v1, errno:I
    if-eqz v1, :cond_17

    .line 1050
    :try_start_f
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_52

    .line 1052
    :goto_12
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1057
    :cond_17
    const/16 v4, 0x13

    if-ne p1, v4, :cond_51

    .line 1058
    const/4 v2, -0x1

    .line 1060
    .local v2, handle:I
    :try_start_1c
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const-string v5, "PBAP Server"

    new-instance v6, Landroid/os/ParcelUuid;

    const-string v7, "00001130-0000-1000-8000-00805F9B34FB"

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v6, p1, v7}, Landroid/bluetooth/IBluetooth;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_33} :catch_42

    move-result v2

    .line 1064
    :goto_34
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4c

    .line 1066
    :try_start_37
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_54

    .line 1068
    :goto_3a
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not able to register SDP record for PBAP"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1063
    :catch_42
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 1071
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4c
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Landroid/bluetooth/BluetoothServerSocket;->setCloseHandler(Landroid/os/Handler;I)V

    .line 1074
    .end local v2           #handle:I
    :cond_51
    return-object v3

    .line 1051
    :catch_52
    move-exception v4

    goto :goto_12

    .line 1067
    .restart local v2       #handle:I
    :catch_54
    move-exception v4

    goto :goto_3a
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 984
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 10
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 887
    new-instance v3, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v3, v4, v4, v4, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 889
    .local v3, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 890
    .local v1, errno:I
    if-eqz v1, :cond_17

    .line 892
    :try_start_e
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_52

    .line 894
    :goto_11
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 916
    :cond_16
    :goto_16
    return-object v3

    .line 900
    :cond_17
    const/16 v4, 0x13

    if-ne p1, v4, :cond_16

    .line 901
    const/4 v2, -0x1

    .line 903
    .local v2, handle:I
    :try_start_1c
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const-string v5, "PBAP Server"

    new-instance v6, Landroid/os/ParcelUuid;

    const-string v7, "00001130-0000-1000-8000-00805F9B34FB"

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v6, p1, v7}, Landroid/bluetooth/IBluetooth;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_33} :catch_42

    move-result v2

    .line 907
    :goto_34
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4c

    .line 909
    :try_start_37
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_54

    .line 911
    :goto_3a
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not able to register SDP record for PBAP"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 906
    :catch_42
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 914
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4c
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Landroid/bluetooth/BluetoothServerSocket;->setCloseHandler(Landroid/os/Handler;I)V

    goto :goto_16

    .line 893
    .end local v2           #handle:I
    :catch_52
    move-exception v4

    goto :goto_11

    .line 910
    .restart local v2       #handle:I
    :catch_54
    move-exception v4

    goto :goto_3a
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 953
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 1107
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_d

    move-object v4, v6

    .line 1126
    :goto_c
    return-object v4

    .line 1112
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->readOutOfBandData()[B

    move-result-object v3

    .line 1114
    .local v3, ret:[B
    if-eqz v3, :cond_18

    array-length v4, v3

    if-eq v4, v7, :cond_1a

    :cond_18
    move-object v4, v6

    goto :goto_c

    .line 1116
    :cond_1a
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1117
    .local v1, hash:[B
    const/16 v4, 0x10

    const/16 v5, 0x20

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1123
    .local v2, randomizer:[B
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2e} :catch_2f

    goto :goto_c

    .line 1125
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    .end local v3           #ret:[B
    :catch_2f
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 1126
    goto :goto_c
.end method

.method public setDiscoverableTimeout(I)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 702
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_9

    .line 706
    :goto_8
    return-void

    .line 704
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_8

    .line 705
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public setName(Ljava/lang/String;)Z
    .registers 6
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 618
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    move v1, v3

    .line 622
    :goto_a
    return v1

    .line 620
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    goto :goto_a

    .line 621
    :catch_12
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 622
    goto :goto_a
.end method

.method public setScanMode(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    .line 688
    :goto_9
    return v0

    :cond_a
    const/16 v0, 0x78

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    goto :goto_9
.end method

.method public setScanMode(II)Z
    .registers 7
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 678
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    move v1, v3

    .line 682
    :goto_a
    return v1

    .line 680
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    goto :goto_a

    .line 681
    :catch_12
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 682
    goto :goto_a
.end method

.method public setScanModeFactory(I)Z
    .registers 3
    .parameter "mode"

    .prologue
    .line 1208
    const/16 v0, 0xe10

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method public startDiscovery()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 739
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    move v1, v3

    .line 743
    :goto_a
    return v1

    .line 741
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    goto :goto_a

    .line 742
    :catch_12
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 743
    goto :goto_a
.end method
