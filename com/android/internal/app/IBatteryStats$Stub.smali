.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x30

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x31

.field static final TRANSACTION_getStatistics:I = 0x1

.field static final TRANSACTION_noteBluetoothOff:I = 0x1e

.field static final TRANSACTION_noteBluetoothOn:I = 0x1d

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x1f

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x25

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x20

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x26

.field static final TRANSACTION_noteFullWimaxLockAcquired:I = 0x2b

.field static final TRANSACTION_noteFullWimaxLockReleased:I = 0x2c

.field static final TRANSACTION_noteInputEvent:I = 0xd

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x12

.field static final TRANSACTION_notePhoneOff:I = 0x10

.field static final TRANSACTION_notePhoneOn:I = 0xf

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x11

.field static final TRANSACTION_notePhoneState:I = 0x13

.field static final TRANSACTION_noteScanWifiLockAcquired:I = 0x21

.field static final TRANSACTION_noteScanWifiLockAcquiredFromSource:I = 0x27

.field static final TRANSACTION_noteScanWifiLockReleased:I = 0x22

.field static final TRANSACTION_noteScanWifiLockReleasedFromSource:I = 0x28

.field static final TRANSACTION_noteScreenBrightness:I = 0xb

.field static final TRANSACTION_noteScreenOff:I = 0xc

.field static final TRANSACTION_noteScreenOn:I = 0xa

.field static final TRANSACTION_noteStartGps:I = 0x8

.field static final TRANSACTION_noteStartSensor:I = 0x4

.field static final TRANSACTION_noteStartWakelock:I = 0x2

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x6

.field static final TRANSACTION_noteStopGps:I = 0x9

.field static final TRANSACTION_noteStopSensor:I = 0x5

.field static final TRANSACTION_noteStopWakelock:I = 0x3

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x7

.field static final TRANSACTION_noteUserActivity:I = 0xe

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x24

.field static final TRANSACTION_noteWifiMulticastDisabledFromSource:I = 0x2a

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x23

.field static final TRANSACTION_noteWifiMulticastEnabledFromSource:I = 0x29

.field static final TRANSACTION_noteWifiOff:I = 0x15

.field static final TRANSACTION_noteWifiOn:I = 0x14

.field static final TRANSACTION_noteWifiRunning:I = 0x16

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x17

.field static final TRANSACTION_noteWifiStopped:I = 0x18

.field static final TRANSACTION_noteWimaxMulticastDisabled:I = 0x2e

.field static final TRANSACTION_noteWimaxMulticastEnabled:I = 0x2d

.field static final TRANSACTION_noteWimaxOff:I = 0x1a

.field static final TRANSACTION_noteWimaxOn:I = 0x19

.field static final TRANSACTION_noteWimaxRunning:I = 0x1b

.field static final TRANSACTION_noteWimaxStopped:I = 0x1c

.field static final TRANSACTION_setBatteryState:I = 0x2f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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
    const/4 v9, 0x1

    const-string v10, "com.android.internal.app.IBatteryStats"

    .line 38
    sparse-switch p1, :sswitch_data_456

    .line 575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 42
    :sswitch_b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v7

    .line 49
    .local v7, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v9

    .line 51
    goto :goto_a

    .line 55
    .end local v7           #_result:[B
    :sswitch_23
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 66
    goto :goto_a

    .line 70
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :sswitch_40
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 81
    goto :goto_a

    .line 85
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :sswitch_5d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 92
    goto :goto_a

    .line 96
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_72
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 103
    goto :goto_a

    .line 107
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_87
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    .line 110
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 116
    .local v1, _arg0:Landroid/os/WorkSource;
    :goto_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 123
    goto/16 :goto_a

    .line 113
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :cond_af
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_9a

    .line 127
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_b1
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d9

    .line 130
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 136
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 143
    goto/16 :goto_a

    .line 133
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :cond_d9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_c4

    .line 147
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_db
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 152
    goto/16 :goto_a

    .line 156
    .end local v1           #_arg0:I
    :sswitch_ed
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 161
    goto/16 :goto_a

    .line 165
    .end local v1           #_arg0:I
    :sswitch_ff
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOn()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 168
    goto/16 :goto_a

    .line 172
    :sswitch_10d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 177
    goto/16 :goto_a

    .line 181
    .end local v1           #_arg0:I
    :sswitch_11f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOff()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 184
    goto/16 :goto_a

    .line 188
    :sswitch_12d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInputEvent()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 191
    goto/16 :goto_a

    .line 195
    :sswitch_13b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 202
    goto/16 :goto_a

    .line 206
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_151
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 209
    goto/16 :goto_a

    .line 213
    :sswitch_15f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 216
    goto/16 :goto_a

    .line 220
    :sswitch_16d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_189

    .line 223
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 228
    .local v1, _arg0:Landroid/telephony/SignalStrength;
    :goto_180
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 230
    goto/16 :goto_a

    .line 226
    .end local v1           #_arg0:Landroid/telephony/SignalStrength;
    :cond_189
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_180

    .line 234
    .end local v1           #_arg0:Landroid/telephony/SignalStrength;
    :sswitch_18b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a4

    move v2, v9

    .line 239
    .local v2, _arg1:Z
    :goto_19b
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 241
    goto/16 :goto_a

    .line 238
    .end local v2           #_arg1:Z
    :cond_1a4
    const/4 v0, 0x0

    move v2, v0

    goto :goto_19b

    .line 245
    .end local v1           #_arg0:I
    :sswitch_1a7
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 250
    goto/16 :goto_a

    .line 254
    .end local v1           #_arg0:I
    :sswitch_1b9
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 259
    goto/16 :goto_a

    .line 263
    .end local v1           #_arg0:I
    :sswitch_1cb
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff(I)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 268
    goto/16 :goto_a

    .line 272
    .end local v1           #_arg0:I
    :sswitch_1dd
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f9

    .line 275
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 280
    .local v1, _arg0:Landroid/os/WorkSource;
    :goto_1f0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 282
    goto/16 :goto_a

    .line 278
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_1f9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_1f0

    .line 286
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_1fb
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_225

    .line 289
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 295
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_227

    .line 296
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 301
    .local v2, _arg1:Landroid/os/WorkSource;
    :goto_21c
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 303
    goto/16 :goto_a

    .line 292
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :cond_225
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_20e

    .line 299
    :cond_227
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/WorkSource;
    goto :goto_21c

    .line 307
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :sswitch_229
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_245

    .line 310
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 315
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_23c
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 317
    goto/16 :goto_a

    .line 313
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_245
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_23c

    .line 321
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_247
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWimaxOn(I)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 326
    goto/16 :goto_a

    .line 330
    .end local v1           #_arg0:I
    :sswitch_259
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWimaxOff(I)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 335
    goto/16 :goto_a

    .line 339
    .end local v1           #_arg0:I
    :sswitch_26b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWimaxRunning()V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 342
    goto/16 :goto_a

    .line 346
    :sswitch_279
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWimaxStopped()V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 349
    goto/16 :goto_a

    .line 353
    :sswitch_287
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn()V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 356
    goto/16 :goto_a

    .line 360
    :sswitch_295
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff()V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 363
    goto/16 :goto_a

    .line 367
    :sswitch_2a3
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 372
    goto/16 :goto_a

    .line 376
    .end local v1           #_arg0:I
    :sswitch_2b5
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 381
    goto/16 :goto_a

    .line 385
    .end local v1           #_arg0:I
    :sswitch_2c7
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 388
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockAcquired(I)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 390
    goto/16 :goto_a

    .line 394
    .end local v1           #_arg0:I
    :sswitch_2d9
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockReleased(I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 399
    goto/16 :goto_a

    .line 403
    .end local v1           #_arg0:I
    :sswitch_2eb
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 408
    goto/16 :goto_a

    .line 412
    .end local v1           #_arg0:I
    :sswitch_2fd
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 417
    goto/16 :goto_a

    .line 421
    .end local v1           #_arg0:I
    :sswitch_30f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32b

    .line 424
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 429
    .local v1, _arg0:Landroid/os/WorkSource;
    :goto_322
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 431
    goto/16 :goto_a

    .line 427
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_32b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_322

    .line 435
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_32d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_349

    .line 438
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 443
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_340
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 445
    goto/16 :goto_a

    .line 441
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_349
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_340

    .line 449
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_34b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_367

    .line 452
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 457
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_35e
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 459
    goto/16 :goto_a

    .line 455
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_367
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_35e

    .line 463
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_369
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_385

    .line 466
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 471
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_37c
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 473
    goto/16 :goto_a

    .line 469
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_385
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_37c

    .line 477
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_387
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a3

    .line 480
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 485
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_39a
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 487
    goto/16 :goto_a

    .line 483
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_3a3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_39a

    .line 491
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_3a5
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c1

    .line 494
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 499
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_3b8
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 501
    goto/16 :goto_a

    .line 497
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_3c1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_3b8

    .line 505
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_3c3
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWimaxLockAcquired(I)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 510
    goto/16 :goto_a

    .line 514
    .end local v1           #_arg0:I
    :sswitch_3d5
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 517
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWimaxLockReleased(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 519
    goto/16 :goto_a

    .line 523
    .end local v1           #_arg0:I
    :sswitch_3e7
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWimaxMulticastEnabled(I)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 528
    goto/16 :goto_a

    .line 532
    .end local v1           #_arg0:I
    :sswitch_3f9
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWimaxMulticastDisabled(I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 537
    goto/16 :goto_a

    .line 541
    .end local v1           #_arg0:I
    :sswitch_40b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 547
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 549
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 551
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 553
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 554
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIII)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 556
    goto/16 :goto_a

    .line 560
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    :sswitch_432
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v7

    .line 562
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v9

    .line 564
    goto/16 :goto_a

    .line 568
    .end local v7           #_result:J
    :sswitch_444
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v7

    .line 570
    .restart local v7       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v9

    .line 572
    goto/16 :goto_a

    .line 38
    :sswitch_data_456
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_40
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_72
        0x6 -> :sswitch_87
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_db
        0x9 -> :sswitch_ed
        0xa -> :sswitch_ff
        0xb -> :sswitch_10d
        0xc -> :sswitch_11f
        0xd -> :sswitch_12d
        0xe -> :sswitch_13b
        0xf -> :sswitch_151
        0x10 -> :sswitch_15f
        0x11 -> :sswitch_16d
        0x12 -> :sswitch_18b
        0x13 -> :sswitch_1a7
        0x14 -> :sswitch_1b9
        0x15 -> :sswitch_1cb
        0x16 -> :sswitch_1dd
        0x17 -> :sswitch_1fb
        0x18 -> :sswitch_229
        0x19 -> :sswitch_247
        0x1a -> :sswitch_259
        0x1b -> :sswitch_26b
        0x1c -> :sswitch_279
        0x1d -> :sswitch_287
        0x1e -> :sswitch_295
        0x1f -> :sswitch_2a3
        0x20 -> :sswitch_2b5
        0x21 -> :sswitch_2c7
        0x22 -> :sswitch_2d9
        0x23 -> :sswitch_2eb
        0x24 -> :sswitch_2fd
        0x25 -> :sswitch_30f
        0x26 -> :sswitch_32d
        0x27 -> :sswitch_34b
        0x28 -> :sswitch_369
        0x29 -> :sswitch_387
        0x2a -> :sswitch_3a5
        0x2b -> :sswitch_3c3
        0x2c -> :sswitch_3d5
        0x2d -> :sswitch_3e7
        0x2e -> :sswitch_3f9
        0x2f -> :sswitch_40b
        0x30 -> :sswitch_432
        0x31 -> :sswitch_444
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
