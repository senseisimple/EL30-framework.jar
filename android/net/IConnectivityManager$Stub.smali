.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getAllNetworkInfo:I = 0x5

.field static final TRANSACTION_getBackgroundDataSetting:I = 0xb

.field static final TRANSACTION_getInterfaceName:I = 0x19

.field static final TRANSACTION_getLastTetherError:I = 0x11

.field static final TRANSACTION_getMobileDataEnabled:I = 0xd

.field static final TRANSACTION_getNameServers:I = 0x1a

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getTetherableIfaces:I = 0x13

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x16

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x17

.field static final TRANSACTION_getTetheredIfaces:I = 0x14

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x15

.field static final TRANSACTION_isTetheringSupported:I = 0x12

.field static final TRANSACTION_reportInetCondition:I = 0x18

.field static final TRANSACTION_requestRouteToHost:I = 0xa

.field static final TRANSACTION_setBackgroundDataSetting:I = 0xc

.field static final TRANSACTION_setMobileDataEnabled:I = 0xe

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setRadio:I = 0x7

.field static final TRANSACTION_setRadios:I = 0x6

.field static final TRANSACTION_setRoamingMobileDataEnabled:I = 0x1b

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x8

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x9

.field static final TRANSACTION_tether:I = 0xf

.field static final TRANSACTION_untether:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "android.net.IConnectivityManager"

    .line 42
    sparse-switch p1, :sswitch_data_28a

    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_b
    return v4

    .line 46
    :sswitch_c
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_b

    .line 51
    :sswitch_13
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 56
    goto :goto_b

    .line 60
    .end local v0           #_arg0:I
    :sswitch_24
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v3

    .line 62
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 64
    goto :goto_b

    .line 68
    .end local v3           #_result:I
    :sswitch_35
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 70
    .local v3, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_4b

    .line 72
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v3, p3, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_49
    move v4, v5

    .line 78
    goto :goto_b

    .line 76
    :cond_4b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 82
    .end local v3           #_result:Landroid/net/NetworkInfo;
    :sswitch_4f
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 86
    .restart local v3       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_69

    .line 88
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v3, p3, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_67
    move v4, v5

    .line 94
    goto :goto_b

    .line 92
    :cond_69
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    .line 98
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/net/NetworkInfo;
    :sswitch_6d
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 100
    .local v3, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v4, v5

    .line 102
    goto :goto_b

    .line 106
    .end local v3           #_result:[Landroid/net/NetworkInfo;
    :sswitch_7e
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9a

    move v0, v5

    .line 109
    .local v0, _arg0:Z
    :goto_8a
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v3

    .line 110
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_9c

    move v4, v5

    :goto_94
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 112
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_9a
    move v0, v7

    .line 108
    goto :goto_8a

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_9c
    move v4, v7

    .line 111
    goto :goto_94

    .line 116
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_9e
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_be

    move v1, v5

    .line 121
    .local v1, _arg1:Z
    :goto_ae
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v3

    .line 122
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_c0

    move v4, v5

    :goto_b8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 124
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v3           #_result:Z
    :cond_be
    move v1, v7

    .line 120
    goto :goto_ae

    .restart local v1       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_c0
    move v4, v7

    .line 123
    goto :goto_b8

    .line 128
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_c2
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 135
    .local v2, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    .line 136
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 138
    goto/16 :goto_b

    .line 142
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/os/IBinder;
    .end local v3           #_result:I
    :sswitch_e0
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 148
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 150
    goto/16 :goto_b

    .line 154
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_fa
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v3

    .line 160
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_117

    move v4, v5

    :goto_111
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 162
    goto/16 :goto_b

    :cond_117
    move v4, v7

    .line 161
    goto :goto_111

    .line 166
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_119
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getBackgroundDataSetting()Z

    move-result v3

    .line 168
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v3, :cond_12e

    move v4, v5

    :goto_128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 170
    goto/16 :goto_b

    :cond_12e
    move v4, v7

    .line 169
    goto :goto_128

    .line 174
    .end local v3           #_result:Z
    :sswitch_130
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_145

    move v0, v5

    .line 177
    .local v0, _arg0:Z
    :goto_13c
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setBackgroundDataSetting(Z)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 179
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_145
    move v0, v7

    .line 176
    goto :goto_13c

    .line 183
    :sswitch_147
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v3

    .line 185
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v3, :cond_15c

    move v4, v5

    :goto_156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 187
    goto/16 :goto_b

    :cond_15c
    move v4, v7

    .line 186
    goto :goto_156

    .line 191
    .end local v3           #_result:Z
    :sswitch_15e
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_173

    move v0, v5

    .line 194
    .restart local v0       #_arg0:Z
    :goto_16a
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 196
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_173
    move v0, v7

    .line 193
    goto :goto_16a

    .line 200
    :sswitch_175
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v3

    .line 204
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 206
    goto/16 :goto_b

    .line 210
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_18b
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v3

    .line 214
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 216
    goto/16 :goto_b

    .line 220
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_1a1
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v3

    .line 224
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 226
    goto/16 :goto_b

    .line 230
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_1b7
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v3

    .line 232
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v3, :cond_1cc

    move v4, v5

    :goto_1c6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 234
    goto/16 :goto_b

    :cond_1cc
    move v4, v7

    .line 233
    goto :goto_1c6

    .line 238
    .end local v3           #_result:Z
    :sswitch_1ce
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 242
    goto/16 :goto_b

    .line 246
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_1e0
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 250
    goto/16 :goto_b

    .line 254
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_1f2
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 256
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 258
    goto/16 :goto_b

    .line 262
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_204
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 266
    goto/16 :goto_b

    .line 270
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_216
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 272
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 274
    goto/16 :goto_b

    .line 278
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_228
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 285
    goto/16 :goto_b

    .line 289
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_23e
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->getInterfaceName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 297
    goto/16 :goto_b

    .line 301
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_258
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNameServers(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 309
    goto/16 :goto_b

    .line 313
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_272
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_287

    move v0, v5

    .line 316
    .local v0, _arg0:Z
    :goto_27e
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRoamingMobileDataEnabled(Z)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 318
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_287
    move v0, v7

    .line 315
    goto :goto_27e

    .line 42
    nop

    :sswitch_data_28a
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_e0
        0xa -> :sswitch_fa
        0xb -> :sswitch_119
        0xc -> :sswitch_130
        0xd -> :sswitch_147
        0xe -> :sswitch_15e
        0xf -> :sswitch_175
        0x10 -> :sswitch_18b
        0x11 -> :sswitch_1a1
        0x12 -> :sswitch_1b7
        0x13 -> :sswitch_1ce
        0x14 -> :sswitch_1e0
        0x15 -> :sswitch_1f2
        0x16 -> :sswitch_204
        0x17 -> :sswitch_216
        0x18 -> :sswitch_228
        0x19 -> :sswitch_23e
        0x1a -> :sswitch_258
        0x1b -> :sswitch_272
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
