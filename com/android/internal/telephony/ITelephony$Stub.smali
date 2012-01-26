.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_IsDomesticRoaming:I = 0x2c

.field static final TRANSACTION_IsInternationalRoaming:I = 0x2b

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canMakeCall:I = 0x39

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x16

.field static final TRANSACTION_disableDataConnectivity:I = 0x18

.field static final TRANSACTION_disableLocationUpdates:I = 0x14

.field static final TRANSACTION_enableApnType:I = 0x15

.field static final TRANSACTION_enableDataConnectivity:I = 0x17

.field static final TRANSACTION_enableLocationUpdates:I = 0x13

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActiveCallsCount:I = 0x33

.field static final TRANSACTION_getActivePhoneType:I = 0x1f

.field static final TRANSACTION_getCallBaseTime:I = 0x37

.field static final TRANSACTION_getCallState:I = 0x1c

.field static final TRANSACTION_getCallTime:I = 0x36

.field static final TRANSACTION_getCallerName:I = 0x35

.field static final TRANSACTION_getCdmaEriBannerStyle:I = 0x29

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x20

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x21

.field static final TRANSACTION_getCdmaEriRinger:I = 0x2a

.field static final TRANSACTION_getCdmaEriText:I = 0x22

.field static final TRANSACTION_getCdmaNeedsProvisioning:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x1a

.field static final TRANSACTION_getDataActivity:I = 0x1d

.field static final TRANSACTION_getDataState:I = 0x1e

.field static final TRANSACTION_getHoldCallsCount:I = 0x34

.field static final TRANSACTION_getMute:I = 0x31

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1b

.field static final TRANSACTION_getNetworkType:I = 0x25

.field static final TRANSACTION_getVoiceMessageCount:I = 0x24

.field static final TRANSACTION_handlePinMmi:I = 0xf

.field static final TRANSACTION_hasIccCard:I = 0x26

.field static final TRANSACTION_initiateFakecall:I = 0x2e

.field static final TRANSACTION_isAddCallButtonPress:I = 0x3a

.field static final TRANSACTION_isCallAcceptable:I = 0x2d

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x19

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingtonePlaying:I = 0x3b

.field static final TRANSACTION_isSimPermBlocked:I = 0x27

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isVideoCall:I = 0x38

.field static final TRANSACTION_isVoiceRecognitionSupported:I = 0x3c

.field static final TRANSACTION_sendThreeWayCallFlashCode:I = 0x28

.field static final TRANSACTION_setMute:I = 0x30

.field static final TRANSACTION_setRadio:I = 0x11

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_switchHoldingAndActive:I = 0x2f

.field static final TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final TRANSACTION_turnOnSpeaker:I = 0x32

.field static final TRANSACTION_updateServiceLocation:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
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
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v6, "com.android.internal.telephony.ITelephony"

    .line 45
    sparse-switch p1, :sswitch_data_4d0

    .line 545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_b
    return v4

    .line 49
    :sswitch_c
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 50
    goto :goto_b

    .line 54
    :sswitch_13
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 59
    goto :goto_b

    .line 63
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 68
    goto :goto_b

    .line 72
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_35
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v1

    .line 74
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v1, :cond_49

    move v4, v5

    :goto_44
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 76
    goto :goto_b

    :cond_49
    move v4, v7

    .line 75
    goto :goto_44

    .line 80
    .end local v1           #_result:Z
    :sswitch_4b
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_66

    move v0, v5

    .line 83
    .local v0, _arg0:Z
    :goto_57
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v1

    .line 84
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v1, :cond_68

    move v4, v5

    :goto_61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 86
    goto :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_66
    move v0, v7

    .line 82
    goto :goto_57

    .restart local v0       #_arg0:Z
    .restart local v1       #_result:Z
    :cond_68
    move v4, v7

    .line 85
    goto :goto_61

    .line 90
    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :sswitch_6a
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v1

    .line 92
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v1, :cond_7e

    move v4, v5

    :goto_79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 94
    goto :goto_b

    :cond_7e
    move v4, v7

    .line 93
    goto :goto_79

    .line 98
    .end local v1           #_result:Z
    :sswitch_80
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 101
    goto/16 :goto_b

    .line 105
    :sswitch_8e
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 108
    goto/16 :goto_b

    .line 112
    :sswitch_9c
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v1

    .line 114
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v1, :cond_b1

    move v4, v5

    :goto_ab
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 116
    goto/16 :goto_b

    :cond_b1
    move v4, v7

    .line 115
    goto :goto_ab

    .line 120
    .end local v1           #_result:Z
    :sswitch_b3
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v1

    .line 122
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v1, :cond_c8

    move v4, v5

    :goto_c2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 124
    goto/16 :goto_b

    :cond_c8
    move v4, v7

    .line 123
    goto :goto_c2

    .line 128
    .end local v1           #_result:Z
    :sswitch_ca
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v1

    .line 130
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v1, :cond_df

    move v4, v5

    :goto_d9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 132
    goto/16 :goto_b

    :cond_df
    move v4, v7

    .line 131
    goto :goto_d9

    .line 136
    .end local v1           #_result:Z
    :sswitch_e1
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v1

    .line 138
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v1, :cond_f6

    move v4, v5

    :goto_f0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 140
    goto/16 :goto_b

    :cond_f6
    move v4, v7

    .line 139
    goto :goto_f0

    .line 144
    .end local v1           #_result:Z
    :sswitch_f8
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v1

    .line 146
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v1, :cond_10d

    move v4, v5

    :goto_107
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 148
    goto/16 :goto_b

    :cond_10d
    move v4, v7

    .line 147
    goto :goto_107

    .line 152
    .end local v1           #_result:Z
    :sswitch_10f
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 155
    goto/16 :goto_b

    .line 159
    :sswitch_11d
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    .line 163
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v1, :cond_136

    move v4, v5

    :goto_130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 165
    goto/16 :goto_b

    :cond_136
    move v4, v7

    .line 164
    goto :goto_130

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_138
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 173
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v1, :cond_151

    move v4, v5

    :goto_14b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 175
    goto/16 :goto_b

    :cond_151
    move v4, v7

    .line 174
    goto :goto_14b

    .line 179
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_153
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 182
    goto/16 :goto_b

    .line 186
    :sswitch_161
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17d

    move v0, v5

    .line 189
    .local v0, _arg0:Z
    :goto_16d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v1

    .line 190
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v1, :cond_17f

    move v4, v5

    :goto_177
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 192
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_17d
    move v0, v7

    .line 188
    goto :goto_16d

    .restart local v0       #_arg0:Z
    .restart local v1       #_result:Z
    :cond_17f
    move v4, v7

    .line 191
    goto :goto_177

    .line 196
    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :sswitch_181
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 199
    goto/16 :goto_b

    .line 203
    :sswitch_18f
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 206
    goto/16 :goto_b

    .line 210
    :sswitch_19d
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 213
    goto/16 :goto_b

    .line 217
    :sswitch_1ab
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 223
    goto/16 :goto_b

    .line 227
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:I
    :sswitch_1c1
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v1

    .line 231
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 233
    goto/16 :goto_b

    .line 237
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:I
    :sswitch_1d7
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v1

    .line 239
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v1, :cond_1ec

    move v4, v5

    :goto_1e6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 241
    goto/16 :goto_b

    :cond_1ec
    move v4, v7

    .line 240
    goto :goto_1e6

    .line 245
    .end local v1           #_result:Z
    :sswitch_1ee
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v1

    .line 247
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v1, :cond_203

    move v4, v5

    :goto_1fd
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 249
    goto/16 :goto_b

    :cond_203
    move v4, v7

    .line 248
    goto :goto_1fd

    .line 253
    .end local v1           #_result:Z
    :sswitch_205
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v1

    .line 255
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v1, :cond_21a

    move v4, v5

    :goto_214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 257
    goto/16 :goto_b

    :cond_21a
    move v4, v7

    .line 256
    goto :goto_214

    .line 261
    .end local v1           #_result:Z
    :sswitch_21c
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v1

    .line 263
    .local v1, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v1, :cond_233

    .line 265
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {v1, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_230
    move v4, v5

    .line 271
    goto/16 :goto_b

    .line 269
    :cond_233
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_230

    .line 275
    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_237
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v3

    .line 277
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v4, v5

    .line 279
    goto/16 :goto_b

    .line 283
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_249
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v1

    .line 285
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 287
    goto/16 :goto_b

    .line 291
    .end local v1           #_result:I
    :sswitch_25b
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v1

    .line 293
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 295
    goto/16 :goto_b

    .line 299
    .end local v1           #_result:I
    :sswitch_26d
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v1

    .line 301
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 303
    goto/16 :goto_b

    .line 307
    .end local v1           #_result:I
    :sswitch_27f
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v1

    .line 309
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 311
    goto/16 :goto_b

    .line 315
    .end local v1           #_result:I
    :sswitch_291
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v1

    .line 317
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 319
    goto/16 :goto_b

    .line 323
    .end local v1           #_result:I
    :sswitch_2a3
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v1

    .line 325
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 327
    goto/16 :goto_b

    .line 331
    .end local v1           #_result:I
    :sswitch_2b5
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 335
    goto/16 :goto_b

    .line 339
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2c7
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaNeedsProvisioning()Z

    move-result v1

    .line 341
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v1, :cond_2dc

    move v4, v5

    :goto_2d6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 343
    goto/16 :goto_b

    :cond_2dc
    move v4, v7

    .line 342
    goto :goto_2d6

    .line 347
    .end local v1           #_result:Z
    :sswitch_2de
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v1

    .line 349
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 351
    goto/16 :goto_b

    .line 355
    .end local v1           #_result:I
    :sswitch_2f0
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v1

    .line 357
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 359
    goto/16 :goto_b

    .line 363
    .end local v1           #_result:I
    :sswitch_302
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v1

    .line 365
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v1, :cond_317

    move v4, v5

    :goto_311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 367
    goto/16 :goto_b

    :cond_317
    move v4, v7

    .line 366
    goto :goto_311

    .line 371
    .end local v1           #_result:Z
    :sswitch_319
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPermBlocked()I

    move-result v1

    .line 373
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 375
    goto/16 :goto_b

    .line 379
    .end local v1           #_result:I
    :sswitch_32b
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->sendThreeWayCallFlashCode()V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 382
    goto/16 :goto_b

    .line 386
    :sswitch_339
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriBannerStyle()I

    move-result v1

    .line 388
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 390
    goto/16 :goto_b

    .line 394
    .end local v1           #_result:I
    :sswitch_34b
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriRinger()I

    move-result v1

    .line 396
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 398
    goto/16 :goto_b

    .line 402
    .end local v1           #_result:I
    :sswitch_35d
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsInternationalRoaming()Z

    move-result v1

    .line 404
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v1, :cond_372

    move v4, v5

    :goto_36c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 406
    goto/16 :goto_b

    :cond_372
    move v4, v7

    .line 405
    goto :goto_36c

    .line 410
    .end local v1           #_result:Z
    :sswitch_374
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsDomesticRoaming()Z

    move-result v1

    .line 412
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v1, :cond_389

    move v4, v5

    :goto_383
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 414
    goto/16 :goto_b

    :cond_389
    move v4, v7

    .line 413
    goto :goto_383

    .line 418
    .end local v1           #_result:Z
    :sswitch_38b
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isCallAcceptable()Z

    move-result v1

    .line 420
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v1, :cond_3a0

    move v4, v5

    :goto_39a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 422
    goto/16 :goto_b

    :cond_3a0
    move v4, v7

    .line 421
    goto :goto_39a

    .line 426
    .end local v1           #_result:Z
    :sswitch_3a2
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->initiateFakecall()V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 429
    goto/16 :goto_b

    .line 433
    :sswitch_3b0
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->switchHoldingAndActive()V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 436
    goto/16 :goto_b

    .line 440
    :sswitch_3be
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d3

    move v0, v5

    .line 443
    .local v0, _arg0:Z
    :goto_3ca
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setMute(Z)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 445
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_3d3
    move v0, v7

    .line 442
    goto :goto_3ca

    .line 449
    :sswitch_3d5
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMute()Z

    move-result v1

    .line 451
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v1, :cond_3ea

    move v4, v5

    :goto_3e4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 453
    goto/16 :goto_b

    :cond_3ea
    move v4, v7

    .line 452
    goto :goto_3e4

    .line 457
    .end local v1           #_result:Z
    :sswitch_3ec
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_401

    move v0, v5

    .line 460
    .restart local v0       #_arg0:Z
    :goto_3f8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->turnOnSpeaker(Z)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 462
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_401
    move v0, v7

    .line 459
    goto :goto_3f8

    .line 466
    :sswitch_403
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveCallsCount()I

    move-result v1

    .line 468
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 470
    goto/16 :goto_b

    .line 474
    .end local v1           #_result:I
    :sswitch_415
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getHoldCallsCount()I

    move-result v1

    .line 476
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 478
    goto/16 :goto_b

    .line 482
    .end local v1           #_result:I
    :sswitch_427
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 486
    goto/16 :goto_b

    .line 490
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_439
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallTime()J

    move-result-wide v1

    .line 492
    .local v1, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 494
    goto/16 :goto_b

    .line 498
    .end local v1           #_result:J
    :sswitch_44b
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallBaseTime()J

    move-result-wide v1

    .line 500
    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 502
    goto/16 :goto_b

    .line 506
    .end local v1           #_result:J
    :sswitch_45d
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCall()Z

    move-result v1

    .line 508
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v1, :cond_472

    move v4, v5

    :goto_46c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 510
    goto/16 :goto_b

    :cond_472
    move v4, v7

    .line 509
    goto :goto_46c

    .line 514
    .end local v1           #_result:Z
    :sswitch_474
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canMakeCall()Z

    move-result v1

    .line 516
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v1, :cond_489

    move v4, v5

    :goto_483
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 518
    goto/16 :goto_b

    :cond_489
    move v4, v7

    .line 517
    goto :goto_483

    .line 522
    .end local v1           #_result:Z
    :sswitch_48b
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAddCallButtonPress()Z

    move-result v1

    .line 524
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    if-eqz v1, :cond_4a0

    move v4, v5

    :goto_49a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 526
    goto/16 :goto_b

    :cond_4a0
    move v4, v7

    .line 525
    goto :goto_49a

    .line 530
    .end local v1           #_result:Z
    :sswitch_4a2
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingtonePlaying()Z

    move-result v1

    .line 532
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v1, :cond_4b7

    move v4, v5

    :goto_4b1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 534
    goto/16 :goto_b

    :cond_4b7
    move v4, v7

    .line 533
    goto :goto_4b1

    .line 538
    .end local v1           #_result:Z
    :sswitch_4b9
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoiceRecognitionSupported()Z

    move-result v1

    .line 540
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v1, :cond_4ce

    move v4, v5

    :goto_4c8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 542
    goto/16 :goto_b

    :cond_4ce
    move v4, v7

    .line 541
    goto :goto_4c8

    .line 45
    :sswitch_data_4d0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_80
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_b3
        0xa -> :sswitch_ca
        0xb -> :sswitch_e1
        0xc -> :sswitch_f8
        0xd -> :sswitch_10f
        0xe -> :sswitch_11d
        0xf -> :sswitch_138
        0x10 -> :sswitch_153
        0x11 -> :sswitch_161
        0x12 -> :sswitch_181
        0x13 -> :sswitch_18f
        0x14 -> :sswitch_19d
        0x15 -> :sswitch_1ab
        0x16 -> :sswitch_1c1
        0x17 -> :sswitch_1d7
        0x18 -> :sswitch_1ee
        0x19 -> :sswitch_205
        0x1a -> :sswitch_21c
        0x1b -> :sswitch_237
        0x1c -> :sswitch_249
        0x1d -> :sswitch_25b
        0x1e -> :sswitch_26d
        0x1f -> :sswitch_27f
        0x20 -> :sswitch_291
        0x21 -> :sswitch_2a3
        0x22 -> :sswitch_2b5
        0x23 -> :sswitch_2c7
        0x24 -> :sswitch_2de
        0x25 -> :sswitch_2f0
        0x26 -> :sswitch_302
        0x27 -> :sswitch_319
        0x28 -> :sswitch_32b
        0x29 -> :sswitch_339
        0x2a -> :sswitch_34b
        0x2b -> :sswitch_35d
        0x2c -> :sswitch_374
        0x2d -> :sswitch_38b
        0x2e -> :sswitch_3a2
        0x2f -> :sswitch_3b0
        0x30 -> :sswitch_3be
        0x31 -> :sswitch_3d5
        0x32 -> :sswitch_3ec
        0x33 -> :sswitch_403
        0x34 -> :sswitch_415
        0x35 -> :sswitch_427
        0x36 -> :sswitch_439
        0x37 -> :sswitch_44b
        0x38 -> :sswitch_45d
        0x39 -> :sswitch_474
        0x3a -> :sswitch_48b
        0x3b -> :sswitch_4a2
        0x3c -> :sswitch_4b9
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
