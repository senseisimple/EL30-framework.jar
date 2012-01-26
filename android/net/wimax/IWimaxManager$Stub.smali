.class public abstract Landroid/net/wimax/IWimaxManager$Stub;
.super Landroid/os/Binder;
.source "IWimaxManager.java"

# interfaces
.implements Landroid/net/wimax/IWimaxManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/IWimaxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wimax/IWimaxManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wimax.IWimaxManager"

.field static final TRANSACTION_CheckWimaxState:I = 0x19

.field static final TRANSACTION_OdbAddReq:I = 0x27

.field static final TRANSACTION_OdbDeleteReq:I = 0x28

.field static final TRANSACTION_OdbReadReq:I = 0x24

.field static final TRANSACTION_OdbUpdateReq:I = 0x26

.field static final TRANSACTION_OdbWriteReq:I = 0x25

.field static final TRANSACTION_acquireMulticastLock:I = 0xa

.field static final TRANSACTION_acquireWimaxLock:I = 0x6

.field static final TRANSACTION_checkUSBstate:I = 0x8

.field static final TRANSACTION_connect:I = 0x16

.field static final TRANSACTION_deleteStaticIP:I = 0x2d

.field static final TRANSACTION_disconnect:I = 0x17

.field static final TRANSACTION_getAvailableNetworks:I = 0xc

.field static final TRANSACTION_getConnectedNSP:I = 0xe

.field static final TRANSACTION_getConnectionInfo:I = 0x1

.field static final TRANSACTION_getConnectionStatistics:I = 0xf

.field static final TRANSACTION_getDeviceInformation:I = 0x10

.field static final TRANSACTION_getDhcpInfo:I = 0x5

.field static final TRANSACTION_getMruList:I = 0x20

.field static final TRANSACTION_getMruListRsp:I = 0x21

.field static final TRANSACTION_getMruUpdate:I = 0x22

.field static final TRANSACTION_getNeighborList:I = 0x1a

.field static final TRANSACTION_getNetworkConnectionSetting:I = 0x1d

.field static final TRANSACTION_getNetworkEntryCompleteTimes:I = 0x2e

.field static final TRANSACTION_getNetworkList:I = 0xd

.field static final TRANSACTION_getPersistedWimaxEnabled:I = 0x14

.field static final TRANSACTION_getRadioInfo:I = 0x1b

.field static final TRANSACTION_getRadioInfoResponse:I = 0x1c

.field static final TRANSACTION_getWimaxEnabledStatus:I = 0x3

.field static final TRANSACTION_getWimaxMode:I = 0x12

.field static final TRANSACTION_getWimaxState:I = 0x15

.field static final TRANSACTION_getWorkModeState:I = 0x1e

.field static final TRANSACTION_isMulticastEnabled:I = 0x9

.field static final TRANSACTION_makeOdbTlvData:I = 0x23

.field static final TRANSACTION_readStaticIP:I = 0x2c

.field static final TRANSACTION_releaseMulticastLock:I = 0xb

.field static final TRANSACTION_releaseWimaxLock:I = 0x7

.field static final TRANSACTION_release_sWakeLock:I = 0x11

.field static final TRANSACTION_saveStaticIP:I = 0x2b

.field static final TRANSACTION_setFactoryDefault:I = 0x29

.field static final TRANSACTION_setMruWorking:I = 0x2f

.field static final TRANSACTION_setVirtualIdleWhileAPsleep:I = 0x2a

.field static final TRANSACTION_setWimaxEnabled:I = 0x2

.field static final TRANSACTION_setWimaxMode:I = 0x13

.field static final TRANSACTION_setWimaxStatus:I = 0x4

.field static final TRANSACTION_setWorkModeState:I = 0x1f

.field static final TRANSACTION_startScan:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wimax/IWimaxManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wimax/IWimaxManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "android.net.wimax.IWimaxManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wimax/IWimaxManager;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/net/wimax/IWimaxManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/wimax/IWimaxManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wimax/IWimaxManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_47e

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 48
    :sswitch_8
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_7

    .line 53
    :sswitch_f
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getConnectionInfo()Landroid/net/wimax/WimaxInfo;

    move-result-object v7

    .line 55
    .local v7, _result:Landroid/net/wimax/WimaxInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v7, :cond_27

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/wimax/WimaxInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    :goto_25
    const/4 v0, 0x1

    goto :goto_7

    .line 61
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 67
    .end local v7           #_result:Landroid/net/wimax/WimaxInfo;
    :sswitch_2c
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    move v1, v0

    .line 70
    .local v1, _arg0:Z
    :goto_39
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->setWimaxEnabled(Z)Z

    move-result v7

    .line 71
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v7, :cond_4b

    const/4 v0, 0x1

    :goto_43
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v0, 0x1

    goto :goto_7

    .line 69
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_48
    const/4 v0, 0x0

    move v1, v0

    goto :goto_39

    .line 72
    .restart local v1       #_arg0:Z
    .restart local v7       #_result:Z
    :cond_4b
    const/4 v0, 0x0

    goto :goto_43

    .line 77
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :sswitch_4d
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getWimaxEnabledStatus()I

    move-result v7

    .line 79
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v0, 0x1

    goto :goto_7

    .line 85
    .end local v7           #_result:I
    :sswitch_5e
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->setWimaxStatus(I)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    const/4 v0, 0x1

    goto :goto_7

    .line 94
    .end local v1           #_arg0:I
    :sswitch_6f
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v7

    .line 96
    .local v7, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v7, :cond_87

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    :goto_85
    const/4 v0, 0x1

    goto :goto_7

    .line 102
    :cond_87
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_85

    .line 108
    .end local v7           #_result:Landroid/net/DhcpInfo;
    :sswitch_8c
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 112
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wimax/IWimaxManager$Stub;->acquireWimaxLock(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v7

    .line 116
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v7, :cond_ad

    const/4 v0, 0x1

    :goto_a7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 117
    :cond_ad
    const/4 v0, 0x0

    goto :goto_a7

    .line 122
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_af
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 125
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->releaseWimaxLock(Landroid/os/IBinder;)Z

    move-result v7

    .line 126
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v7, :cond_c8

    const/4 v0, 0x1

    :goto_c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 127
    :cond_c8
    const/4 v0, 0x0

    goto :goto_c2

    .line 132
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v7           #_result:Z
    :sswitch_ca
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->checkUSBstate()Z

    move-result v7

    .line 134
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v7, :cond_df

    const/4 v0, 0x1

    :goto_d9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 135
    :cond_df
    const/4 v0, 0x0

    goto :goto_d9

    .line 140
    .end local v7           #_result:Z
    :sswitch_e1
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->isMulticastEnabled()Z

    move-result v7

    .line 142
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v7, :cond_f6

    const/4 v0, 0x1

    :goto_f0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 143
    :cond_f6
    const/4 v0, 0x0

    goto :goto_f0

    .line 148
    .end local v7           #_result:Z
    :sswitch_f8
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 152
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wimax/IWimaxManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 159
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_10e
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->releaseMulticastLock()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 166
    :sswitch_11c
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getAvailableNetworks()Ljava/util/List;

    move-result-object v9

    .line 168
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/structs/NspInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 174
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/structs/NspInfo;>;"
    :sswitch_12e
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getNetworkList()Ljava/util/List;

    move-result-object v9

    .line 176
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/structs/NspInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 178
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 182
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/structs/NspInfo;>;"
    :sswitch_140
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getConnectedNSP()Landroid/net/wimax/structs/NspInfo;

    move-result-object v7

    .line 184
    .local v7, _result:Landroid/net/wimax/structs/NspInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v7, :cond_159

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/wimax/structs/NspInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :goto_156
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 190
    :cond_159
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_156

    .line 196
    .end local v7           #_result:Landroid/net/wimax/structs/NspInfo;
    :sswitch_15e
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getConnectionStatistics()Landroid/net/wimax/ConnectionStatistics;

    move-result-object v7

    .line 198
    .local v7, _result:Landroid/net/wimax/ConnectionStatistics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v7, :cond_177

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/wimax/ConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_174
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 204
    :cond_177
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_174

    .line 210
    .end local v7           #_result:Landroid/net/wimax/ConnectionStatistics;
    :sswitch_17c
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getDeviceInformation()Landroid/net/wimax/DeviceInfo;

    move-result-object v7

    .line 212
    .local v7, _result:Landroid/net/wimax/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v7, :cond_195

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/wimax/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    :goto_192
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 218
    :cond_195
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_192

    .line 224
    .end local v7           #_result:Landroid/net/wimax/DeviceInfo;
    :sswitch_19a
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->release_sWakeLock()V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 231
    :sswitch_1a8
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getWimaxMode()I

    move-result v7

    .line 233
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 239
    .end local v7           #_result:I
    :sswitch_1ba
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d8

    const/4 v0, 0x1

    move v2, v0

    .line 244
    .local v2, _arg1:Z
    :goto_1cb
    invoke-virtual {p0, v1, v2}, Landroid/net/wimax/IWimaxManager$Stub;->setWimaxMode(IZ)I

    move-result v7

    .line 245
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 243
    .end local v2           #_arg1:Z
    .end local v7           #_result:I
    :cond_1d8
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1cb

    .line 251
    .end local v1           #_arg0:I
    :sswitch_1db
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getPersistedWimaxEnabled()Z

    move-result v7

    .line 253
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v7, :cond_1f0

    const/4 v0, 0x1

    :goto_1ea
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 254
    :cond_1f0
    const/4 v0, 0x0

    goto :goto_1ea

    .line 259
    .end local v7           #_result:Z
    :sswitch_1f2
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v7

    .line 261
    .local v7, _result:Landroid/net/wimax/WimaxState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v7, :cond_20b

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/wimax/WimaxState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    :goto_208
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 267
    :cond_20b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_208

    .line 273
    .end local v7           #_result:Landroid/net/wimax/WimaxState;
    :sswitch_210
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wimax/IWimaxManager$Stub;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 283
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 289
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_232
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->disconnect()Z

    move-result v7

    .line 291
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v7, :cond_247

    const/4 v0, 0x1

    :goto_241
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 292
    :cond_247
    const/4 v0, 0x0

    goto :goto_241

    .line 297
    .end local v7           #_result:Z
    :sswitch_249
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_266

    const/4 v0, 0x1

    move v1, v0

    .line 300
    .local v1, _arg0:Z
    :goto_256
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->startScan(Z)Z

    move-result v7

    .line 301
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v7, :cond_269

    const/4 v0, 0x1

    :goto_260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 299
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_266
    const/4 v0, 0x0

    move v1, v0

    goto :goto_256

    .line 302
    .restart local v1       #_arg0:Z
    .restart local v7       #_result:Z
    :cond_269
    const/4 v0, 0x0

    goto :goto_260

    .line 307
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :sswitch_26b
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->CheckWimaxState()Z

    move-result v7

    .line 309
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v7, :cond_280

    const/4 v0, 0x1

    :goto_27a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 310
    :cond_280
    const/4 v0, 0x0

    goto :goto_27a

    .line 315
    .end local v7           #_result:Z
    :sswitch_282
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getNeighborList()V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 322
    :sswitch_290
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getRadioInfo()V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 329
    :sswitch_29e
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getRadioInfoResponse()Landroid/net/wimax/RadioInfo;

    move-result-object v7

    .line 331
    .local v7, _result:Landroid/net/wimax/RadioInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v7, :cond_2b7

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/wimax/RadioInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 339
    :goto_2b4
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 337
    :cond_2b7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b4

    .line 343
    .end local v7           #_result:Landroid/net/wimax/RadioInfo;
    :sswitch_2bc
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getNetworkConnectionSetting()I

    move-result v7

    .line 345
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 351
    .end local v7           #_result:I
    :sswitch_2ce
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getWorkModeState()I

    move-result v7

    .line 353
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 359
    .end local v7           #_result:I
    :sswitch_2e0
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->setWorkModeState(I)Z

    move-result v7

    .line 363
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v7, :cond_2f9

    const/4 v0, 0x1

    :goto_2f3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 364
    :cond_2f9
    const/4 v0, 0x0

    goto :goto_2f3

    .line 369
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_2fb
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getMruList()V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 376
    :sswitch_309
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getMruListRsp()Ljava/util/List;

    move-result-object v8

    .line 378
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/MruList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 380
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 384
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wimax/MruList;>;"
    :sswitch_31b
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/wimax/IWimaxManager$Stub;->getMruUpdate(Ljava/lang/String;I)Z

    move-result v7

    .line 390
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v7, :cond_338

    const/4 v0, 0x1

    :goto_332
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 391
    :cond_338
    const/4 v0, 0x0

    goto :goto_332

    .line 396
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v7           #_result:Z
    :sswitch_33a
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 400
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 404
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 406
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 408
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, _arg5:[B
    move-object v0, p0

    .line 409
    invoke-virtual/range {v0 .. v6}, Landroid/net/wimax/IWimaxManager$Stub;->makeOdbTlvData([BIIII[B)I

    move-result v7

    .line 410
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 413
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 417
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:[B
    .end local v7           #_result:I
    :sswitch_368
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 420
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->OdbReadReq([B)I

    move-result v7

    .line 421
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 427
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_37e
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 430
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->OdbWriteReq([B)I

    move-result v7

    .line 431
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 437
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_394
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->OdbUpdateReq()I

    move-result v7

    .line 439
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 445
    .end local v7           #_result:I
    :sswitch_3a6
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 448
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->OdbAddReq([B)I

    move-result v7

    .line 449
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 455
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_3bc
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 458
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->OdbDeleteReq([B)I

    move-result v7

    .line 459
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 465
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_3d2
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->setFactoryDefault(I)Z

    move-result v7

    .line 469
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    if-eqz v7, :cond_3eb

    const/4 v0, 0x1

    :goto_3e5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 470
    :cond_3eb
    const/4 v0, 0x0

    goto :goto_3e5

    .line 475
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_3ed
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 478
    .local v1, _arg0:B
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->setVirtualIdleWhileAPsleep(B)I

    move-result v7

    .line 479
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 485
    .end local v1           #_arg0:B
    .end local v7           #_result:I
    :sswitch_403
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 496
    invoke-virtual/range {v0 .. v5}, Landroid/net/wimax/IWimaxManager$Stub;->saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 497
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 503
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_42a
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 506
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->readStaticIP(I)Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 513
    .end local v1           #_arg0:I
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_440
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->deleteStaticIP()I

    move-result v7

    .line 515
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 521
    .end local v7           #_result:I
    :sswitch_452
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Landroid/net/wimax/IWimaxManager$Stub;->getNetworkEntryCompleteTimes()[I

    move-result-object v7

    .line 523
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 525
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 529
    .end local v7           #_result:[I
    :sswitch_464
    const-string v0, "android.net.wimax.IWimaxManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47a

    const/4 v0, 0x1

    move v1, v0

    .line 532
    .local v1, _arg0:Z
    :goto_471
    invoke-virtual {p0, v1}, Landroid/net/wimax/IWimaxManager$Stub;->setMruWorking(Z)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 531
    .end local v1           #_arg0:Z
    :cond_47a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_471

    .line 44
    nop

    :sswitch_data_47e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_8c
        0x7 -> :sswitch_af
        0x8 -> :sswitch_ca
        0x9 -> :sswitch_e1
        0xa -> :sswitch_f8
        0xb -> :sswitch_10e
        0xc -> :sswitch_11c
        0xd -> :sswitch_12e
        0xe -> :sswitch_140
        0xf -> :sswitch_15e
        0x10 -> :sswitch_17c
        0x11 -> :sswitch_19a
        0x12 -> :sswitch_1a8
        0x13 -> :sswitch_1ba
        0x14 -> :sswitch_1db
        0x15 -> :sswitch_1f2
        0x16 -> :sswitch_210
        0x17 -> :sswitch_232
        0x18 -> :sswitch_249
        0x19 -> :sswitch_26b
        0x1a -> :sswitch_282
        0x1b -> :sswitch_290
        0x1c -> :sswitch_29e
        0x1d -> :sswitch_2bc
        0x1e -> :sswitch_2ce
        0x1f -> :sswitch_2e0
        0x20 -> :sswitch_2fb
        0x21 -> :sswitch_309
        0x22 -> :sswitch_31b
        0x23 -> :sswitch_33a
        0x24 -> :sswitch_368
        0x25 -> :sswitch_37e
        0x26 -> :sswitch_394
        0x27 -> :sswitch_3a6
        0x28 -> :sswitch_3bc
        0x29 -> :sswitch_3d2
        0x2a -> :sswitch_3ed
        0x2b -> :sswitch_403
        0x2c -> :sswitch_42a
        0x2d -> :sswitch_440
        0x2e -> :sswitch_452
        0x2f -> :sswitch_464
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
