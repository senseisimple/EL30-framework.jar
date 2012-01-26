.class public abstract Lcom/android/internal/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyExt"

.field static final TRANSACTION_getActiveCallsCount:I = 0xf

.field static final TRANSACTION_getCallBaseTime:I = 0x13

.field static final TRANSACTION_getCallTime:I = 0x12

.field static final TRANSACTION_getCallerName:I = 0x11

.field static final TRANSACTION_getDataStatebyApnType:I = 0x1a

.field static final TRANSACTION_getHoldCallsCount:I = 0x10

.field static final TRANSACTION_getMsisdnavailable:I = 0x3

.field static final TRANSACTION_getMute:I = 0xc

.field static final TRANSACTION_getSimPinRetry:I = 0x4

.field static final TRANSACTION_getSimPukRetry:I = 0x5

.field static final TRANSACTION_getTelephonyFeature:I = 0x6

.field static final TRANSACTION_initiateFakecall:I = 0x9

.field static final TRANSACTION_isConferenceCall:I = 0x16

.field static final TRANSACTION_isFirstCallDialingAndSecondCallActive:I = 0x18

.field static final TRANSACTION_isIdle:I = 0x15

.field static final TRANSACTION_isMultiCall:I = 0x17

.field static final TRANSACTION_isSimFDNEnabled:I = 0x8

.field static final TRANSACTION_isVideoCall:I = 0x19

.field static final TRANSACTION_setMute:I = 0xb

.field static final TRANSACTION_showPopupCallScreen:I = 0x14

.field static final TRANSACTION_supplyPin2:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x1

.field static final TRANSACTION_switchHoldingAndActive:I = 0xa

.field static final TRANSACTION_turnOnBluetooth:I = 0xe

.field static final TRANSACTION_turnOnSpeaker:I = 0xd

.field static final TRANSACTION_updateRAFTproximity:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_3
    return-object v1

    .line 33
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyExt;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephonyExt;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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

    const-string v6, "com.android.internal.telephony.ITelephonyExt"

    .line 45
    sparse-switch p1, :sswitch_data_22c

    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_b
    return v4

    .line 49
    :sswitch_c
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 50
    goto :goto_b

    .line 54
    :sswitch_13
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_2f

    move v4, v5

    :goto_2a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 62
    goto :goto_b

    :cond_2f
    move v4, v7

    .line 61
    goto :goto_2a

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_31
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPin2(Ljava/lang/String;)Z

    move-result v2

    .line 70
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_49

    move v4, v5

    :goto_44
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 72
    goto :goto_b

    :cond_49
    move v4, v7

    .line 71
    goto :goto_44

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4b
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMsisdnavailable()Z

    move-result v2

    .line 78
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_5f

    move v4, v5

    :goto_5a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 80
    goto :goto_b

    :cond_5f
    move v4, v7

    .line 79
    goto :goto_5a

    .line 84
    .end local v2           #_result:Z
    :sswitch_61
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPinRetry()I

    move-result v2

    .line 86
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 88
    goto :goto_b

    .line 92
    .end local v2           #_result:I
    :sswitch_72
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPukRetry()I

    move-result v2

    .line 94
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 96
    goto :goto_b

    .line 100
    .end local v2           #_result:I
    :sswitch_83
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTelephonyFeature()Ljava/util/Map;

    move-result-object v2

    .line 102
    .local v2, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v4, v5

    .line 104
    goto/16 :goto_b

    .line 108
    .end local v2           #_result:Ljava/util/Map;
    :sswitch_95
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->updateRAFTproximity(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 113
    goto/16 :goto_b

    .line 117
    .end local v0           #_arg0:I
    :sswitch_a7
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabled()Z

    move-result v2

    .line 119
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v2, :cond_bc

    move v4, v5

    :goto_b6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 121
    goto/16 :goto_b

    :cond_bc
    move v4, v7

    .line 120
    goto :goto_b6

    .line 125
    .end local v2           #_result:Z
    :sswitch_be
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->initiateFakecall()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 128
    goto/16 :goto_b

    .line 132
    :sswitch_cc
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->switchHoldingAndActive()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 135
    goto/16 :goto_b

    .line 139
    :sswitch_da
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ef

    move v0, v5

    .line 142
    .local v0, _arg0:Z
    :goto_e6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setMute(Z)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 144
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_ef
    move v0, v7

    .line 141
    goto :goto_e6

    .line 148
    :sswitch_f1
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMute()Z

    move-result v2

    .line 150
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v2, :cond_106

    move v4, v5

    :goto_100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 152
    goto/16 :goto_b

    :cond_106
    move v4, v7

    .line 151
    goto :goto_100

    .line 156
    .end local v2           #_result:Z
    :sswitch_108
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11d

    move v0, v5

    .line 159
    .restart local v0       #_arg0:Z
    :goto_114
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnSpeaker(Z)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 161
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_11d
    move v0, v7

    .line 158
    goto :goto_114

    .line 165
    :sswitch_11f
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnBluetooth()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 168
    goto/16 :goto_b

    .line 172
    :sswitch_12d
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getActiveCallsCount()I

    move-result v2

    .line 174
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 176
    goto/16 :goto_b

    .line 180
    .end local v2           #_result:I
    :sswitch_13f
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getHoldCallsCount()I

    move-result v2

    .line 182
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 184
    goto/16 :goto_b

    .line 188
    .end local v2           #_result:I
    :sswitch_151
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 192
    goto/16 :goto_b

    .line 196
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_163
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallTime()J

    move-result-wide v2

    .line 198
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 200
    goto/16 :goto_b

    .line 204
    .end local v2           #_result:J
    :sswitch_175
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallBaseTime()J

    move-result-wide v2

    .line 206
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 208
    goto/16 :goto_b

    .line 212
    .end local v2           #_result:J
    :sswitch_187
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->showPopupCallScreen()Z

    move-result v2

    .line 214
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v2, :cond_19c

    move v4, v5

    :goto_196
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 216
    goto/16 :goto_b

    :cond_19c
    move v4, v7

    .line 215
    goto :goto_196

    .line 220
    .end local v2           #_result:Z
    :sswitch_19e
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isIdle()Z

    move-result v2

    .line 222
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v2, :cond_1b3

    move v4, v5

    :goto_1ad
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 224
    goto/16 :goto_b

    :cond_1b3
    move v4, v7

    .line 223
    goto :goto_1ad

    .line 228
    .end local v2           #_result:Z
    :sswitch_1b5
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isConferenceCall()Z

    move-result v2

    .line 230
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v2, :cond_1ca

    move v4, v5

    :goto_1c4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 232
    goto/16 :goto_b

    :cond_1ca
    move v4, v7

    .line 231
    goto :goto_1c4

    .line 236
    .end local v2           #_result:Z
    :sswitch_1cc
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isMultiCall()Z

    move-result v2

    .line 238
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v2, :cond_1e1

    move v4, v5

    :goto_1db
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 240
    goto/16 :goto_b

    :cond_1e1
    move v4, v7

    .line 239
    goto :goto_1db

    .line 244
    .end local v2           #_result:Z
    :sswitch_1e3
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isFirstCallDialingAndSecondCallActive()Z

    move-result v2

    .line 246
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v2, :cond_1f8

    move v4, v5

    :goto_1f2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 248
    goto/16 :goto_b

    :cond_1f8
    move v4, v7

    .line 247
    goto :goto_1f2

    .line 252
    .end local v2           #_result:Z
    :sswitch_1fa
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isVideoCall()Z

    move-result v2

    .line 254
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v2, :cond_20f

    move v4, v5

    :goto_209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 256
    goto/16 :goto_b

    :cond_20f
    move v4, v7

    .line 255
    goto :goto_209

    .line 260
    .end local v2           #_result:Z
    :sswitch_211
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getDataStatebyApnType(Ljava/lang/String;)Z

    move-result v2

    .line 264
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v2, :cond_22a

    move v4, v5

    :goto_224
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 266
    goto/16 :goto_b

    :cond_22a
    move v4, v7

    .line 265
    goto :goto_224

    .line 45
    :sswitch_data_22c
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_31
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_61
        0x5 -> :sswitch_72
        0x6 -> :sswitch_83
        0x7 -> :sswitch_95
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_be
        0xa -> :sswitch_cc
        0xb -> :sswitch_da
        0xc -> :sswitch_f1
        0xd -> :sswitch_108
        0xe -> :sswitch_11f
        0xf -> :sswitch_12d
        0x10 -> :sswitch_13f
        0x11 -> :sswitch_151
        0x12 -> :sswitch_163
        0x13 -> :sswitch_175
        0x14 -> :sswitch_187
        0x15 -> :sswitch_19e
        0x16 -> :sswitch_1b5
        0x17 -> :sswitch_1cc
        0x18 -> :sswitch_1e3
        0x19 -> :sswitch_1fa
        0x1a -> :sswitch_211
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
