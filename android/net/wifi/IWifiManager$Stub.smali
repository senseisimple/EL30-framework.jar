.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1f

.field static final TRANSACTION_acquireWifiLock:I = 0x1a

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xf

.field static final TRANSACTION_getDhcpInfo:I = 0x19

.field static final TRANSACTION_getNumAllowedChannels:I = 0x15

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getValidChannelCounts:I = 0x17

.field static final TRANSACTION_getWifiApConfiguration:I = 0x23

.field static final TRANSACTION_getWifiApEnabledState:I = 0x22

.field static final TRANSACTION_getWifiApInfo:I = 0x26

.field static final TRANSACTION_getWifiApProfileConfiguration:I = 0x28

.field static final TRANSACTION_getWifiApStaList:I = 0x29

.field static final TRANSACTION_getWifiEnabledState:I = 0x14

.field static final TRANSACTION_getWifiMacAddr:I = 0x27

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1d

.field static final TRANSACTION_isMulticastEnabled:I = 0x1e

.field static final TRANSACTION_isShowingAccessPointListDialog:I = 0x12

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xe

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x20

.field static final TRANSACTION_releaseWifiLock:I = 0x1c

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x18

.field static final TRANSACTION_setNumAllowedChannels:I = 0x16

.field static final TRANSACTION_setShowAccessPointListDialog:I = 0x13

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2b

.field static final TRANSACTION_setWifiApDisassocSta:I = 0x2a

.field static final TRANSACTION_setWifiApEnabled:I = 0x21

.field static final TRANSACTION_setWifiEnabled:I = 0x10

.field static final TRANSACTION_setWifiEnabledDialog:I = 0x11

.field static final TRANSACTION_startMfgService:I = 0x24

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_stopMfgService:I = 0x25

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1b

.field static final TRANSACTION_wpsCommandCancel:I = 0xd

.field static final TRANSACTION_wpsPbcConnect:I = 0xb

.field static final TRANSACTION_wpsPinConnect:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.net.wifi.IWifiManager"

    .line 43
    sparse-switch p1, :sswitch_data_452

    .line 488
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_b
    return v7

    .line 47
    :sswitch_c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 56
    goto :goto_b

    .line 60
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_24
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_43

    .line 63
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_37
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 71
    goto :goto_b

    .line 66
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_37

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_45
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_5d

    move v7, v8

    :goto_58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 81
    goto :goto_b

    :cond_5d
    move v7, v10

    .line 80
    goto :goto_58

    .line 85
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_5f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7e

    move v1, v8

    .line 90
    .local v1, _arg1:Z
    :goto_6f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_80

    move v7, v8

    :goto_79
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 93
    goto :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_7e
    move v1, v10

    .line 89
    goto :goto_6f

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_80
    move v7, v10

    .line 92
    goto :goto_79

    .line 97
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_82
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_9b

    move v7, v8

    :goto_95
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 103
    goto/16 :goto_b

    :cond_9b
    move v7, v10

    .line 102
    goto :goto_95

    .line 107
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_9d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 109
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_b2

    move v7, v8

    :goto_ac
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 111
    goto/16 :goto_b

    :cond_b2
    move v7, v10

    .line 110
    goto :goto_ac

    .line 115
    .end local v4           #_result:Z
    :sswitch_b4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c9

    move v0, v8

    .line 118
    .local v0, _arg0:Z
    :goto_c0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 120
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_c9
    move v0, v10

    .line 117
    goto :goto_c0

    .line 124
    :sswitch_cb
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 128
    goto/16 :goto_b

    .line 132
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_dd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()Z

    move-result v4

    .line 134
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_f2

    move v7, v8

    :goto_ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 136
    goto/16 :goto_b

    :cond_f2
    move v7, v10

    .line 135
    goto :goto_ec

    .line 140
    .end local v4           #_result:Z
    :sswitch_f4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()Z

    move-result v4

    .line 142
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_109

    move v7, v8

    :goto_103
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 144
    goto/16 :goto_b

    :cond_109
    move v7, v10

    .line 143
    goto :goto_103

    .line 148
    .end local v4           #_result:Z
    :sswitch_10b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->wpsPbcConnect()Z

    move-result v4

    .line 150
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v4, :cond_120

    move v7, v8

    :goto_11a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 152
    goto/16 :goto_b

    :cond_120
    move v7, v10

    .line 151
    goto :goto_11a

    .line 156
    .end local v4           #_result:Z
    :sswitch_122
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->wpsPinConnect(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 162
    goto/16 :goto_b

    .line 166
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_138
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->wpsCommandCancel()Z

    move-result v4

    .line 168
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v4, :cond_14d

    move v7, v8

    :goto_147
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 170
    goto/16 :goto_b

    :cond_14d
    move v7, v10

    .line 169
    goto :goto_147

    .line 174
    .end local v4           #_result:Z
    :sswitch_14f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()Z

    move-result v4

    .line 176
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_164

    move v7, v8

    :goto_15e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 178
    goto/16 :goto_b

    :cond_164
    move v7, v10

    .line 177
    goto :goto_15e

    .line 182
    .end local v4           #_result:Z
    :sswitch_166
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 184
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_17d

    .line 186
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17a
    move v7, v8

    .line 192
    goto/16 :goto_b

    .line 190
    :cond_17d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17a

    .line 196
    .end local v4           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_181
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19d

    move v0, v8

    .line 199
    .local v0, _arg0:Z
    :goto_18d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 200
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v4, :cond_19f

    move v7, v8

    :goto_197
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 202
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_19d
    move v0, v10

    .line 198
    goto :goto_18d

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_19f
    move v7, v10

    .line 201
    goto :goto_197

    .line 206
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_1a1
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1bd

    move v0, v8

    .line 209
    .restart local v0       #_arg0:Z
    :goto_1ad
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledDialog(Z)Z

    move-result v4

    .line 210
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v4, :cond_1bf

    move v7, v8

    :goto_1b7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 212
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_1bd
    move v0, v10

    .line 208
    goto :goto_1ad

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_1bf
    move v7, v10

    .line 211
    goto :goto_1b7

    .line 216
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_1c1
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isShowingAccessPointListDialog()Z

    move-result v4

    .line 218
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_1d6

    move v7, v8

    :goto_1d0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 220
    goto/16 :goto_b

    :cond_1d6
    move v7, v10

    .line 219
    goto :goto_1d0

    .line 224
    .end local v4           #_result:Z
    :sswitch_1d8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f4

    move v0, v8

    .line 227
    .restart local v0       #_arg0:Z
    :goto_1e4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setShowAccessPointListDialog(Z)Z

    move-result v4

    .line 228
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v4, :cond_1f6

    move v7, v8

    :goto_1ee
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 230
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_1f4
    move v0, v10

    .line 226
    goto :goto_1e4

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_1f6
    move v7, v10

    .line 229
    goto :goto_1ee

    .line 234
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_1f8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 236
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 238
    goto/16 :goto_b

    .line 242
    .end local v4           #_result:I
    :sswitch_20a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumAllowedChannels()I

    move-result v4

    .line 244
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 246
    goto/16 :goto_b

    .line 250
    .end local v4           #_result:I
    :sswitch_21c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23c

    move v1, v8

    .line 255
    .restart local v1       #_arg1:Z
    :goto_22c
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setNumAllowedChannels(IZ)Z

    move-result v4

    .line 256
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v4, :cond_23e

    move v7, v8

    :goto_236
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 258
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_23c
    move v1, v10

    .line 254
    goto :goto_22c

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_23e
    move v7, v10

    .line 257
    goto :goto_236

    .line 262
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_240
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getValidChannelCounts()[I

    move-result-object v4

    .line 264
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v7, v8

    .line 266
    goto/16 :goto_b

    .line 270
    .end local v4           #_result:[I
    :sswitch_252
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 272
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v4, :cond_267

    move v7, v8

    :goto_261
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 274
    goto/16 :goto_b

    :cond_267
    move v7, v10

    .line 273
    goto :goto_261

    .line 278
    .end local v4           #_result:Z
    :sswitch_269
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 280
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v4, :cond_280

    .line 282
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_27d
    move v7, v8

    .line 288
    goto/16 :goto_b

    .line 286
    :cond_280
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27d

    .line 292
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_284
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 296
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2b3

    .line 301
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 306
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_2a3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 307
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_2b5

    move v7, v8

    :goto_2ad
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 309
    goto/16 :goto_b

    .line 304
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_2b3
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;
    goto :goto_2a3

    .restart local v4       #_result:Z
    :cond_2b5
    move v7, v10

    .line 308
    goto :goto_2ad

    .line 313
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :sswitch_2b7
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 317
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2d7

    .line 318
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 323
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_2ce
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 325
    goto/16 :goto_b

    .line 321
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :cond_2d7
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;
    goto :goto_2ce

    .line 329
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :sswitch_2d9
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 332
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 333
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v4, :cond_2f2

    move v7, v8

    :goto_2ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 335
    goto/16 :goto_b

    :cond_2f2
    move v7, v10

    .line 334
    goto :goto_2ec

    .line 339
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_2f4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 342
    goto/16 :goto_b

    .line 346
    :sswitch_302
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 348
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v4, :cond_317

    move v7, v8

    :goto_311
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 350
    goto/16 :goto_b

    :cond_317
    move v7, v10

    .line 349
    goto :goto_311

    .line 354
    .end local v4           #_result:Z
    :sswitch_319
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 358
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 361
    goto/16 :goto_b

    .line 365
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_32f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 368
    goto/16 :goto_b

    .line 372
    :sswitch_33d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_367

    .line 375
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 381
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_369

    move v1, v8

    .line 382
    .local v1, _arg1:Z
    :goto_357
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 383
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v4, :cond_36b

    move v7, v8

    :goto_361
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 385
    goto/16 :goto_b

    .line 378
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_367
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_350

    :cond_369
    move v1, v10

    .line 381
    goto :goto_357

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_36b
    move v7, v10

    .line 384
    goto :goto_361

    .line 389
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_36d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 391
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 393
    goto/16 :goto_b

    .line 397
    .end local v4           #_result:I
    :sswitch_37f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 399
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v4, :cond_396

    .line 401
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_393
    move v7, v8

    .line 407
    goto/16 :goto_b

    .line 405
    :cond_396
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_393

    .line 411
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_39a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startMfgService()Z

    move-result v4

    .line 413
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v4, :cond_3af

    move v7, v8

    :goto_3a9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 415
    goto/16 :goto_b

    :cond_3af
    move v7, v10

    .line 414
    goto :goto_3a9

    .line 419
    .end local v4           #_result:Z
    :sswitch_3b1
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopMfgService()Z

    move-result v4

    .line 421
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v4, :cond_3c6

    move v7, v8

    :goto_3c0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 423
    goto/16 :goto_b

    :cond_3c6
    move v7, v10

    .line 422
    goto :goto_3c0

    .line 427
    .end local v4           #_result:Z
    :sswitch_3c8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApInfo()I

    move-result v4

    .line 429
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 431
    goto/16 :goto_b

    .line 435
    .end local v4           #_result:I
    :sswitch_3da
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiMacAddr()Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 439
    goto/16 :goto_b

    .line 443
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_3ec
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 445
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v4, :cond_403

    .line 447
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_400
    move v7, v8

    .line 453
    goto/16 :goto_b

    .line 451
    :cond_403
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_400

    .line 457
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_407
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 461
    goto/16 :goto_b

    .line 465
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_419
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApDisassocSta(Ljava/lang/String;)Z

    move-result v4

    .line 469
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    if-eqz v4, :cond_432

    move v7, v8

    :goto_42c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 471
    goto/16 :goto_b

    :cond_432
    move v7, v10

    .line 470
    goto :goto_42c

    .line 475
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_434
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_450

    .line 478
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 483
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_447
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 485
    goto/16 :goto_b

    .line 481
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_450
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_447

    .line 43
    :sswitch_data_452
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_dd
        0xa -> :sswitch_f4
        0xb -> :sswitch_10b
        0xc -> :sswitch_122
        0xd -> :sswitch_138
        0xe -> :sswitch_14f
        0xf -> :sswitch_166
        0x10 -> :sswitch_181
        0x11 -> :sswitch_1a1
        0x12 -> :sswitch_1c1
        0x13 -> :sswitch_1d8
        0x14 -> :sswitch_1f8
        0x15 -> :sswitch_20a
        0x16 -> :sswitch_21c
        0x17 -> :sswitch_240
        0x18 -> :sswitch_252
        0x19 -> :sswitch_269
        0x1a -> :sswitch_284
        0x1b -> :sswitch_2b7
        0x1c -> :sswitch_2d9
        0x1d -> :sswitch_2f4
        0x1e -> :sswitch_302
        0x1f -> :sswitch_319
        0x20 -> :sswitch_32f
        0x21 -> :sswitch_33d
        0x22 -> :sswitch_36d
        0x23 -> :sswitch_37f
        0x24 -> :sswitch_39a
        0x25 -> :sswitch_3b1
        0x26 -> :sswitch_3c8
        0x27 -> :sswitch_3da
        0x28 -> :sswitch_3ec
        0x29 -> :sswitch_407
        0x2a -> :sswitch_419
        0x2b -> :sswitch_434
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
