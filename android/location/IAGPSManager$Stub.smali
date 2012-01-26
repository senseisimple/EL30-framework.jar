.class public abstract Landroid/location/IAGPSManager$Stub;
.super Landroid/os/Binder;
.source "IAGPSManager.java"

# interfaces
.implements Landroid/location/IAGPSManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IAGPSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IAGPSManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IAGPSManager"

.field static final TRANSACTION_acceptLbsRequest:I = 0xd

.field static final TRANSACTION_enableNmea:I = 0xa

.field static final TRANSACTION_enableXtra:I = 0x1c

.field static final TRANSACTION_getAGpsTransport:I = 0x1a

.field static final TRANSACTION_getGprsApn:I = 0x13

.field static final TRANSACTION_getGprsAuthType:I = 0x16

.field static final TRANSACTION_getGprsPassword:I = 0x15

.field static final TRANSACTION_getGprsUsername:I = 0x14

.field static final TRANSACTION_getHslpAddress:I = 0x11

.field static final TRANSACTION_getHslpPort:I = 0x12

.field static final TRANSACTION_getOperationType:I = 0xf

.field static final TRANSACTION_getPdeServerOption:I = 0x22

.field static final TRANSACTION_getQosHorizontalAccuracy:I = 0x18

.field static final TRANSACTION_getQosPerformance:I = 0x17

.field static final TRANSACTION_getQosVerticalAccuracy:I = 0x19

.field static final TRANSACTION_getSessionType:I = 0xe

.field static final TRANSACTION_getSsl:I = 0x1b

.field static final TRANSACTION_getStartMode:I = 0x10

.field static final TRANSACTION_getXtraDownloadInterval:I = 0x20

.field static final TRANSACTION_invalidateXtraData:I = 0x1e

.field static final TRANSACTION_isXtraEnabled:I = 0x1d

.field static final TRANSACTION_removeAGpsUpdates:I = 0xc

.field static final TRANSACTION_requestAGpsUpdates:I = 0xb

.field static final TRANSACTION_setAGpsTransport:I = 0x7

.field static final TRANSACTION_setGprsOptions:I = 0x5

.field static final TRANSACTION_setHslpAddress:I = 0x4

.field static final TRANSACTION_setLbsTimer:I = 0x9

.field static final TRANSACTION_setOperationType:I = 0x2

.field static final TRANSACTION_setPdeServerOption:I = 0x21

.field static final TRANSACTION_setQos:I = 0x6

.field static final TRANSACTION_setSessionType:I = 0x1

.field static final TRANSACTION_setSsl:I = 0x8

.field static final TRANSACTION_setStartMode:I = 0x3

.field static final TRANSACTION_setXtraDownloadInterval:I = 0x1f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.IAGPSManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/IAGPSManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IAGPSManager;
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
    const-string v1, "android.location.IAGPSManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/IAGPSManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/location/IAGPSManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/location/IAGPSManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IAGPSManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.location.IAGPSManager"

    .line 43
    sparse-switch p1, :sswitch_data_2a2

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 47
    :sswitch_c
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setSessionType(I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 57
    goto :goto_b

    .line 61
    .end local v0           #_arg0:I
    :sswitch_24
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setOperationType(I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 66
    goto :goto_b

    .line 70
    .end local v0           #_arg0:I
    :sswitch_35
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setStartMode(I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 75
    goto :goto_b

    .line 79
    .end local v0           #_arg0:I
    :sswitch_46
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/location/IAGPSManager$Stub;->setHslpAddress(Ljava/lang/String;I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 86
    goto :goto_b

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_5b
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/location/IAGPSManager$Stub;->setGprsOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 101
    goto :goto_b

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:I
    :sswitch_78
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/location/IAGPSManager$Stub;->setQos(III)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 114
    goto/16 :goto_b

    .line 118
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_92
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setAGpsTransport(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 123
    goto/16 :goto_b

    .line 127
    .end local v0           #_arg0:I
    :sswitch_a4
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setSsl(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 132
    goto/16 :goto_b

    .line 136
    .end local v0           #_arg0:I
    :sswitch_b6
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setLbsTimer(I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 141
    goto/16 :goto_b

    .line 145
    .end local v0           #_arg0:I
    :sswitch_c8
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e1

    move v0, v6

    .line 149
    .local v0, _arg0:Z
    :goto_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/location/IAGPSManager$Stub;->enableNmea(ZLjava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 152
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_e1
    move v0, v8

    .line 147
    goto :goto_d4

    .line 156
    :sswitch_e3
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/location/IAGPSListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IAGPSListener;

    move-result-object v0

    .line 159
    .local v0, _arg0:Landroid/location/IAGPSListener;
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->requestAGpsUpdates(Landroid/location/IAGPSListener;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 161
    goto/16 :goto_b

    .line 165
    .end local v0           #_arg0:Landroid/location/IAGPSListener;
    :sswitch_f9
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/location/IAGPSListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IAGPSListener;

    move-result-object v0

    .line 168
    .restart local v0       #_arg0:Landroid/location/IAGPSListener;
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->removeAGpsUpdates(Landroid/location/IAGPSListener;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 170
    goto/16 :goto_b

    .line 174
    .end local v0           #_arg0:Landroid/location/IAGPSListener;
    :sswitch_10f
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->acceptLbsRequest(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 179
    goto/16 :goto_b

    .line 183
    .end local v0           #_arg0:I
    :sswitch_121
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getSessionType()I

    move-result v4

    .line 185
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 187
    goto/16 :goto_b

    .line 191
    .end local v4           #_result:I
    :sswitch_133
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getOperationType()I

    move-result v4

    .line 193
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 195
    goto/16 :goto_b

    .line 199
    .end local v4           #_result:I
    :sswitch_145
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getStartMode()I

    move-result v4

    .line 201
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 203
    goto/16 :goto_b

    .line 207
    .end local v4           #_result:I
    :sswitch_157
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getHslpAddress()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 211
    goto/16 :goto_b

    .line 215
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_169
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getHslpPort()I

    move-result v4

    .line 217
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 219
    goto/16 :goto_b

    .line 223
    .end local v4           #_result:I
    :sswitch_17b
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getGprsApn()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 227
    goto/16 :goto_b

    .line 231
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_18d
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getGprsUsername()Ljava/lang/String;

    move-result-object v4

    .line 233
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 235
    goto/16 :goto_b

    .line 239
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_19f
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getGprsPassword()Ljava/lang/String;

    move-result-object v4

    .line 241
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 243
    goto/16 :goto_b

    .line 247
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_1b1
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getGprsAuthType()I

    move-result v4

    .line 249
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 251
    goto/16 :goto_b

    .line 255
    .end local v4           #_result:I
    :sswitch_1c3
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getQosPerformance()I

    move-result v4

    .line 257
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 259
    goto/16 :goto_b

    .line 263
    .end local v4           #_result:I
    :sswitch_1d5
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getQosHorizontalAccuracy()I

    move-result v4

    .line 265
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 267
    goto/16 :goto_b

    .line 271
    .end local v4           #_result:I
    :sswitch_1e7
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getQosVerticalAccuracy()I

    move-result v4

    .line 273
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 275
    goto/16 :goto_b

    .line 279
    .end local v4           #_result:I
    :sswitch_1f9
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getAGpsTransport()I

    move-result v4

    .line 281
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 283
    goto/16 :goto_b

    .line 287
    .end local v4           #_result:I
    :sswitch_20b
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getSsl()I

    move-result v4

    .line 289
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 291
    goto/16 :goto_b

    .line 295
    .end local v4           #_result:I
    :sswitch_21d
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_232

    move v0, v6

    .line 298
    .local v0, _arg0:Z
    :goto_229
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->enableXtra(Z)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 300
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_232
    move v0, v8

    .line 297
    goto :goto_229

    .line 304
    :sswitch_234
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->isXtraEnabled()Z

    move-result v4

    .line 306
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v4, :cond_249

    move v5, v6

    :goto_243
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 308
    goto/16 :goto_b

    :cond_249
    move v5, v8

    .line 307
    goto :goto_243

    .line 312
    .end local v4           #_result:Z
    :sswitch_24b
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->invalidateXtraData()V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 315
    goto/16 :goto_b

    .line 319
    :sswitch_259
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setXtraDownloadInterval(I)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 324
    goto/16 :goto_b

    .line 328
    .end local v0           #_arg0:I
    :sswitch_26b
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getXtraDownloadInterval()I

    move-result v4

    .line 330
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 332
    goto/16 :goto_b

    .line 336
    .end local v4           #_result:I
    :sswitch_27d
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/IAGPSManager$Stub;->setPdeServerOption(I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 341
    goto/16 :goto_b

    .line 345
    .end local v0           #_arg0:I
    :sswitch_28f
    const-string v5, "android.location.IAGPSManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/location/IAGPSManager$Stub;->getPdeServerOption()I

    move-result v4

    .line 347
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 349
    goto/16 :goto_b

    .line 43
    nop

    :sswitch_data_2a2
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_46
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_78
        0x7 -> :sswitch_92
        0x8 -> :sswitch_a4
        0x9 -> :sswitch_b6
        0xa -> :sswitch_c8
        0xb -> :sswitch_e3
        0xc -> :sswitch_f9
        0xd -> :sswitch_10f
        0xe -> :sswitch_121
        0xf -> :sswitch_133
        0x10 -> :sswitch_145
        0x11 -> :sswitch_157
        0x12 -> :sswitch_169
        0x13 -> :sswitch_17b
        0x14 -> :sswitch_18d
        0x15 -> :sswitch_19f
        0x16 -> :sswitch_1b1
        0x17 -> :sswitch_1c3
        0x18 -> :sswitch_1d5
        0x19 -> :sswitch_1e7
        0x1a -> :sswitch_1f9
        0x1b -> :sswitch_20b
        0x1c -> :sswitch_21d
        0x1d -> :sswitch_234
        0x1e -> :sswitch_24b
        0x1f -> :sswitch_259
        0x20 -> :sswitch_26b
        0x21 -> :sswitch_27d
        0x22 -> :sswitch_28f
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
