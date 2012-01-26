.class public abstract Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;
.super Landroid/os/Binder;
.source "IPhoneInfoInterface.java"

# interfaces
.implements Lcom/samsungframeworks/internal/IPhoneInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/IPhoneInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsungframeworks.internal.IPhoneInfoInterface"

.field static final TRANSACTION_disableDataconnection:I = 0x39

.field static final TRANSACTION_disableScreenTimeout:I = 0x43

.field static final TRANSACTION_enableScreenTimeout:I = 0x44

.field static final TRANSACTION_getA_Key:I = 0x5

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x46

.field static final TRANSACTION_getCurrentSlot:I = 0x3a

.field static final TRANSACTION_getDOM_DATA_GUARD_ON_ENABLED:I = 0x47

.field static final TRANSACTION_getDOM_DATA_GUARD_ON_FORCED:I = 0x48

.field static final TRANSACTION_getDOM_DATA_ROAMING_BLOCK_ENABLED:I = 0x49

.field static final TRANSACTION_getDOM_DATA_ROAMING_BLOCK_FORCED:I = 0x4a

.field static final TRANSACTION_getDOM_VOICE_GUARD_ON_ENABLED:I = 0x4b

.field static final TRANSACTION_getDOM_VOICE_GUARD_ON_FORCED:I = 0x4c

.field static final TRANSACTION_getDOM_VOICE_ROAMING_BLOCK_ENABLED:I = 0x4d

.field static final TRANSACTION_getDOM_VOICE_ROAMING_BLOCK_FORCED:I = 0x4e

.field static final TRANSACTION_getDSA_SERVER_IP:I = 0x16

.field static final TRANSACTION_getDSA_SERVER_PORT:I = 0x17

.field static final TRANSACTION_getDSA_SERVER_URL:I = 0x13

.field static final TRANSACTION_getDataProfile:I = 0x3c

.field static final TRANSACTION_getHTTPPD_PROXY_ADDR:I = 0x1a

.field static final TRANSACTION_getHTTPPD_PROXY_PORT:I = 0x1b

.field static final TRANSACTION_getINTL_DATA_GUARD_ON_ENABLED:I = 0x4f

.field static final TRANSACTION_getINTL_DATA_GUARD_ON_FORCED:I = 0x50

.field static final TRANSACTION_getINTL_DATA_ROAMING_BLOCK_ENABLED:I = 0x51

.field static final TRANSACTION_getINTL_DATA_ROAMING_BLOCK_FORCED:I = 0x52

.field static final TRANSACTION_getINTL_DIALING_ENABLED:I = 0x53

.field static final TRANSACTION_getINTL_DIALING_FORCED:I = 0x54

.field static final TRANSACTION_getINTL_VOICE_GUARD_ON_ENABLED:I = 0x55

.field static final TRANSACTION_getINTL_VOICE_GUARD_ON_FORCED:I = 0x56

.field static final TRANSACTION_getINTL_VOICE_ROAMING_BLOCK_ENABLED:I = 0x57

.field static final TRANSACTION_getINTL_VOICE_ROAMING_BLOCK_FORCED:I = 0x58

.field static final TRANSACTION_getMDN:I = 0x1

.field static final TRANSACTION_getMEID:I = 0x3

.field static final TRANSACTION_getMOBILESYNK_ENABLED:I = 0x12

.field static final TRANSACTION_getMSID:I = 0x2

.field static final TRANSACTION_getPDE_PRIMARY_IP:I = 0x14

.field static final TRANSACTION_getPDE_PRIMARY_PORT:I = 0x15

.field static final TRANSACTION_getPESUDO_ESN:I = 0x4

.field static final TRANSACTION_getRTSP_PROXY_ADDR:I = 0x18

.field static final TRANSACTION_getRTSP_PROXY_PORT:I = 0x19

.field static final TRANSACTION_getRoamingIndicator:I = 0x6b

.field static final TRANSACTION_getSLOT_1_AAA_AUTH_ALGORITHM:I = 0xd

.field static final TRANSACTION_getSLOT_1_AAA_SPI:I = 0xe

.field static final TRANSACTION_getSLOT_1_HA_AUTH_ALGORITHM:I = 0xa

.field static final TRANSACTION_getSLOT_1_HA_PASSWORD:I = 0xc

.field static final TRANSACTION_getSLOT_1_HA_SPI:I = 0xb

.field static final TRANSACTION_getSLOT_1_MOBILE_IP_ADDRESS:I = 0x10

.field static final TRANSACTION_getSLOT_1_NAI:I = 0x6

.field static final TRANSACTION_getSLOT_1_NAI_PASSWORD:I = 0x7

.field static final TRANSACTION_getSLOT_1_PRIMARY_HA:I = 0x8

.field static final TRANSACTION_getSLOT_1_REVERSE_TUNNELING:I = 0xf

.field static final TRANSACTION_getSLOT_1_SECONDARY_HA:I = 0x9

.field static final TRANSACTION_getSetUpCompleted:I = 0x42

.field static final TRANSACTION_getUAPROF:I = 0x11

.field static final TRANSACTION_getWORK_MODE:I = 0x1c

.field static final TRANSACTION_reboot:I = 0x45

.field static final TRANSACTION_release:I = 0x3e

.field static final TRANSACTION_releaseDSAProxy:I = 0x40

.field static final TRANSACTION_requestDataProfile:I = 0x3d

.field static final TRANSACTION_setA_Key:I = 0x21

.field static final TRANSACTION_setDOM_DATA_GUARD_ON_ENABLED:I = 0x59

.field static final TRANSACTION_setDOM_DATA_GUARD_ON_FORCED:I = 0x5a

.field static final TRANSACTION_setDOM_DATA_ROAMING_BLOCK_ENABLED:I = 0x5b

.field static final TRANSACTION_setDOM_DATA_ROAMING_BLOCK_FORCED:I = 0x5c

.field static final TRANSACTION_setDOM_VOICE_GUARD_ON_ENABLED:I = 0x5d

.field static final TRANSACTION_setDOM_VOICE_GUARD_ON_FORCED:I = 0x5e

.field static final TRANSACTION_setDOM_VOICE_ROAMING_BLOCK_ENABLED:I = 0x5f

.field static final TRANSACTION_setDOM_VOICE_ROAMING_BLOCK_FORCED:I = 0x60

.field static final TRANSACTION_setDSAProxy:I = 0x3f

.field static final TRANSACTION_setDSA_SERVER_IP:I = 0x32

.field static final TRANSACTION_setDSA_SERVER_PORT:I = 0x33

.field static final TRANSACTION_setDSA_SERVER_URL:I = 0x2f

.field static final TRANSACTION_setHTTPPD_PROXY_ADDR:I = 0x36

.field static final TRANSACTION_setHTTPPD_PROXY_PORT:I = 0x37

.field static final TRANSACTION_setINTL_DATA_GUARD_ON_ENABLED:I = 0x61

.field static final TRANSACTION_setINTL_DATA_GUARD_ON_FORCED:I = 0x62

.field static final TRANSACTION_setINTL_DATA_ROAMING_BLOCK_ENABLED:I = 0x63

.field static final TRANSACTION_setINTL_DATA_ROAMING_BLOCK_FORCED:I = 0x64

.field static final TRANSACTION_setINTL_DIALING_ENABLED:I = 0x65

.field static final TRANSACTION_setINTL_DIALING_FORCED:I = 0x66

.field static final TRANSACTION_setINTL_VOICE_GUARD_ON_ENABLED:I = 0x67

.field static final TRANSACTION_setINTL_VOICE_GUARD_ON_FORCED:I = 0x68

.field static final TRANSACTION_setINTL_VOICE_ROAMING_BLOCK_ENABLED:I = 0x69

.field static final TRANSACTION_setINTL_VOICE_ROAMING_BLOCK_FORCED:I = 0x6a

.field static final TRANSACTION_setMDN:I = 0x1d

.field static final TRANSACTION_setMEID:I = 0x1f

.field static final TRANSACTION_setMOBILESYNK_ENABLED:I = 0x2e

.field static final TRANSACTION_setMSID:I = 0x1e

.field static final TRANSACTION_setNetworkPreference:I = 0x3b

.field static final TRANSACTION_setPDE_PRIMARY_IP:I = 0x30

.field static final TRANSACTION_setPDE_PRIMARY_PORT:I = 0x31

.field static final TRANSACTION_setPESUDO_ESN:I = 0x20

.field static final TRANSACTION_setRTSP_PROXY_ADDR:I = 0x34

.field static final TRANSACTION_setRTSP_PROXY_PORT:I = 0x35

.field static final TRANSACTION_setSLOT_1_AAA_AUTH_ALGORITHM:I = 0x29

.field static final TRANSACTION_setSLOT_1_AAA_SPI:I = 0x2a

.field static final TRANSACTION_setSLOT_1_HA_AUTH_ALGORITHM:I = 0x26

.field static final TRANSACTION_setSLOT_1_HA_PASSWORD:I = 0x28

.field static final TRANSACTION_setSLOT_1_HA_SPI:I = 0x27

.field static final TRANSACTION_setSLOT_1_MOBILE_IP_ADDRESS:I = 0x2c

.field static final TRANSACTION_setSLOT_1_NAI:I = 0x22

.field static final TRANSACTION_setSLOT_1_NAI_PASSWORD:I = 0x23

.field static final TRANSACTION_setSLOT_1_PRIMARY_HA:I = 0x24

.field static final TRANSACTION_setSLOT_1_REVERSE_TUNNELING:I = 0x2b

.field static final TRANSACTION_setSLOT_1_SECONDARY_HA:I = 0x25

.field static final TRANSACTION_setSetUpCompleted:I = 0x41

.field static final TRANSACTION_setUAPROF:I = 0x2d

.field static final TRANSACTION_setWORK_MODE:I = 0x38


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;
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
    const-string v1, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v4, 0x1

    const-string v5, "com.samsungframeworks.internal.IPhoneInfoInterface"

    .line 38
    sparse-switch p1, :sswitch_data_782

    .line 949
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 42
    :sswitch_b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMDN()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 51
    goto :goto_a

    .line 55
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMSID()Ljava/lang/String;

    move-result-object v2

    .line 57
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 59
    goto :goto_a

    .line 63
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_34
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMEID()Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 67
    goto :goto_a

    .line 71
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_45
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPESUDO_ESN()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 75
    goto :goto_a

    .line 79
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_56
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getA_Key()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 83
    goto :goto_a

    .line 87
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_67
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_NAI()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 91
    goto :goto_a

    .line 95
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_78
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_NAI_PASSWORD()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 99
    goto :goto_a

    .line 103
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_89
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_PRIMARY_HA()Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 107
    goto/16 :goto_a

    .line 111
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_9b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_SECONDARY_HA()Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 115
    goto/16 :goto_a

    .line 119
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_ad
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 123
    goto/16 :goto_a

    .line 127
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_bf
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_SPI()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 131
    goto/16 :goto_a

    .line 135
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_d1
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_PASSWORD()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 139
    goto/16 :goto_a

    .line 143
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_e3
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_AAA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 147
    goto/16 :goto_a

    .line 151
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_f5
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_AAA_SPI()Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 155
    goto/16 :goto_a

    .line 159
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_107
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_REVERSE_TUNNELING()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 163
    goto/16 :goto_a

    .line 167
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_119
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_MOBILE_IP_ADDRESS()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 171
    goto/16 :goto_a

    .line 175
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_12b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getUAPROF()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 179
    goto/16 :goto_a

    .line 183
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_13d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMOBILESYNK_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 187
    goto/16 :goto_a

    .line 191
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_14f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_URL()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 195
    goto/16 :goto_a

    .line 199
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_161
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPDE_PRIMARY_IP()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 203
    goto/16 :goto_a

    .line 207
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_173
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPDE_PRIMARY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 211
    goto/16 :goto_a

    .line 215
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_185
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_IP()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 219
    goto/16 :goto_a

    .line 223
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_197
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_PORT()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 227
    goto/16 :goto_a

    .line 231
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1a9
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRTSP_PROXY_ADDR()Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 235
    goto/16 :goto_a

    .line 239
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1bb
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRTSP_PROXY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 243
    goto/16 :goto_a

    .line 247
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1cd
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getHTTPPD_PROXY_ADDR()Ljava/lang/String;

    move-result-object v2

    .line 249
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 251
    goto/16 :goto_a

    .line 255
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1df
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getHTTPPD_PROXY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 259
    goto/16 :goto_a

    .line 263
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1f1
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getWORK_MODE()Ljava/lang/String;

    move-result-object v2

    .line 265
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 267
    goto/16 :goto_a

    .line 271
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_203
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMDN(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 276
    goto/16 :goto_a

    .line 280
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_215
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMSID(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 285
    goto/16 :goto_a

    .line 289
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_227
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMEID(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 294
    goto/16 :goto_a

    .line 298
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_239
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPESUDO_ESN(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 303
    goto/16 :goto_a

    .line 307
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setA_Key(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 312
    goto/16 :goto_a

    .line 316
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_25d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_NAI(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 321
    goto/16 :goto_a

    .line 325
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_26f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_NAI_PASSWORD(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 330
    goto/16 :goto_a

    .line 334
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_281
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_PRIMARY_HA(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 339
    goto/16 :goto_a

    .line 343
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_293
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_SECONDARY_HA(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 348
    goto/16 :goto_a

    .line 352
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2a5
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_AUTH_ALGORITHM(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 357
    goto/16 :goto_a

    .line 361
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2b7
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_SPI(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 366
    goto/16 :goto_a

    .line 370
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2c9
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_PASSWORD(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 375
    goto/16 :goto_a

    .line 379
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2db
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_AAA_AUTH_ALGORITHM(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 384
    goto/16 :goto_a

    .line 388
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2ed
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_AAA_SPI(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 393
    goto/16 :goto_a

    .line 397
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2ff
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_REVERSE_TUNNELING(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 402
    goto/16 :goto_a

    .line 406
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_311
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_MOBILE_IP_ADDRESS(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 411
    goto/16 :goto_a

    .line 415
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_323
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setUAPROF(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 420
    goto/16 :goto_a

    .line 424
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_335
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMOBILESYNK_ENABLED(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 429
    goto/16 :goto_a

    .line 433
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_347
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_URL(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 438
    goto/16 :goto_a

    .line 442
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_359
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPDE_PRIMARY_IP(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 447
    goto/16 :goto_a

    .line 451
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_36b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPDE_PRIMARY_PORT(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 456
    goto/16 :goto_a

    .line 460
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_37d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_IP(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 465
    goto/16 :goto_a

    .line 469
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_38f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_PORT(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 474
    goto/16 :goto_a

    .line 478
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3a1
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setRTSP_PROXY_ADDR(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 483
    goto/16 :goto_a

    .line 487
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3b3
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setRTSP_PROXY_PORT(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 492
    goto/16 :goto_a

    .line 496
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3c5
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setHTTPPD_PROXY_ADDR(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 501
    goto/16 :goto_a

    .line 505
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3d7
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setHTTPPD_PROXY_PORT(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 510
    goto/16 :goto_a

    .line 514
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3e9
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setWORK_MODE(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 519
    goto/16 :goto_a

    .line 523
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3fb
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->disableDataconnection()V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 526
    goto/16 :goto_a

    .line 530
    :sswitch_409
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getCurrentSlot()I

    move-result v2

    .line 532
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 534
    goto/16 :goto_a

    .line 538
    .end local v2           #_result:I
    :sswitch_41b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 541
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setNetworkPreference(I)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 543
    goto/16 :goto_a

    .line 547
    .end local v0           #_arg0:I
    :sswitch_42d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDataProfile()I

    move-result v2

    .line 549
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 551
    goto/16 :goto_a

    .line 555
    .end local v2           #_result:I
    :sswitch_43f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 558
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->requestDataProfile(I)I

    move-result v2

    .line 559
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 561
    goto/16 :goto_a

    .line 565
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_455
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->release()V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 568
    goto/16 :goto_a

    .line 572
    :sswitch_463
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSAProxy(Ljava/lang/String;I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 579
    goto/16 :goto_a

    .line 583
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_479
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->releaseDSAProxy()V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 586
    goto/16 :goto_a

    .line 590
    :sswitch_487
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 593
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSetUpCompleted(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 595
    goto/16 :goto_a

    .line 599
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_499
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSetUpCompleted()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 603
    goto/16 :goto_a

    .line 607
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4ab
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->disableScreenTimeout()V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 610
    goto/16 :goto_a

    .line 614
    :sswitch_4b9
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->enableScreenTimeout()V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 617
    goto/16 :goto_a

    .line 621
    :sswitch_4c7
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->reboot()V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 624
    goto/16 :goto_a

    .line 628
    :sswitch_4d5
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    .line 630
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 632
    goto/16 :goto_a

    .line 636
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4e7
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_DATA_GUARD_ON_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 638
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 640
    goto/16 :goto_a

    .line 644
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4f9
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_DATA_GUARD_ON_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 646
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 648
    goto/16 :goto_a

    .line 652
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_50b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_DATA_ROAMING_BLOCK_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 654
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 656
    goto/16 :goto_a

    .line 660
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_51d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_DATA_ROAMING_BLOCK_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 662
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 664
    goto/16 :goto_a

    .line 668
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_52f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_VOICE_GUARD_ON_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 670
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 672
    goto/16 :goto_a

    .line 676
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_541
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_VOICE_GUARD_ON_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 678
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 680
    goto/16 :goto_a

    .line 684
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_553
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_VOICE_ROAMING_BLOCK_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 686
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 688
    goto/16 :goto_a

    .line 692
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_565
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDOM_VOICE_ROAMING_BLOCK_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 694
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 696
    goto/16 :goto_a

    .line 700
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_577
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_DATA_GUARD_ON_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 702
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 704
    goto/16 :goto_a

    .line 708
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_589
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_DATA_GUARD_ON_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 710
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 712
    goto/16 :goto_a

    .line 716
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_59b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_DATA_ROAMING_BLOCK_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 718
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 720
    goto/16 :goto_a

    .line 724
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5ad
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_DATA_ROAMING_BLOCK_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 726
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 728
    goto/16 :goto_a

    .line 732
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5bf
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_DIALING_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 734
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 736
    goto/16 :goto_a

    .line 740
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5d1
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_DIALING_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 742
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 744
    goto/16 :goto_a

    .line 748
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5e3
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_VOICE_GUARD_ON_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 750
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 752
    goto/16 :goto_a

    .line 756
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5f5
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_VOICE_GUARD_ON_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 758
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 760
    goto/16 :goto_a

    .line 764
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_607
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_VOICE_ROAMING_BLOCK_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 766
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 768
    goto/16 :goto_a

    .line 772
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_619
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getINTL_VOICE_ROAMING_BLOCK_FORCED()Ljava/lang/String;

    move-result-object v2

    .line 774
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 776
    goto/16 :goto_a

    .line 780
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_62b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_DATA_GUARD_ON_ENABLED(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 785
    goto/16 :goto_a

    .line 789
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_63d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_DATA_GUARD_ON_FORCED(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 794
    goto/16 :goto_a

    .line 798
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_64f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 801
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_DATA_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 803
    goto/16 :goto_a

    .line 807
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_661
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_DATA_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 812
    goto/16 :goto_a

    .line 816
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_673
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 819
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_VOICE_GUARD_ON_ENABLED(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 821
    goto/16 :goto_a

    .line 825
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_685
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 828
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_VOICE_GUARD_ON_FORCED(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 830
    goto/16 :goto_a

    .line 834
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_697
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 837
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_VOICE_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 839
    goto/16 :goto_a

    .line 843
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6a9
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 846
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDOM_VOICE_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 848
    goto/16 :goto_a

    .line 852
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6bb
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 855
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_DATA_GUARD_ON_ENABLED(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 857
    goto/16 :goto_a

    .line 861
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6cd
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 864
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_DATA_GUARD_ON_FORCED(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 866
    goto/16 :goto_a

    .line 870
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6df
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 873
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_DATA_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 875
    goto/16 :goto_a

    .line 879
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6f1
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 882
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_DATA_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 884
    goto/16 :goto_a

    .line 888
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_703
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 891
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_DIALING_ENABLED(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 893
    goto/16 :goto_a

    .line 897
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_715
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_DIALING_FORCED(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 902
    goto/16 :goto_a

    .line 906
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_727
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 909
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_VOICE_GUARD_ON_ENABLED(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 911
    goto/16 :goto_a

    .line 915
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_739
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 918
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_VOICE_GUARD_ON_FORCED(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 920
    goto/16 :goto_a

    .line 924
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_74b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 927
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_VOICE_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 929
    goto/16 :goto_a

    .line 933
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_75d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 936
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setINTL_VOICE_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 938
    goto/16 :goto_a

    .line 942
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_76f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRoamingIndicator()I

    move-result v2

    .line 944
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 946
    goto/16 :goto_a

    .line 38
    nop

    :sswitch_data_782
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_34
        0x4 -> :sswitch_45
        0x5 -> :sswitch_56
        0x6 -> :sswitch_67
        0x7 -> :sswitch_78
        0x8 -> :sswitch_89
        0x9 -> :sswitch_9b
        0xa -> :sswitch_ad
        0xb -> :sswitch_bf
        0xc -> :sswitch_d1
        0xd -> :sswitch_e3
        0xe -> :sswitch_f5
        0xf -> :sswitch_107
        0x10 -> :sswitch_119
        0x11 -> :sswitch_12b
        0x12 -> :sswitch_13d
        0x13 -> :sswitch_14f
        0x14 -> :sswitch_161
        0x15 -> :sswitch_173
        0x16 -> :sswitch_185
        0x17 -> :sswitch_197
        0x18 -> :sswitch_1a9
        0x19 -> :sswitch_1bb
        0x1a -> :sswitch_1cd
        0x1b -> :sswitch_1df
        0x1c -> :sswitch_1f1
        0x1d -> :sswitch_203
        0x1e -> :sswitch_215
        0x1f -> :sswitch_227
        0x20 -> :sswitch_239
        0x21 -> :sswitch_24b
        0x22 -> :sswitch_25d
        0x23 -> :sswitch_26f
        0x24 -> :sswitch_281
        0x25 -> :sswitch_293
        0x26 -> :sswitch_2a5
        0x27 -> :sswitch_2b7
        0x28 -> :sswitch_2c9
        0x29 -> :sswitch_2db
        0x2a -> :sswitch_2ed
        0x2b -> :sswitch_2ff
        0x2c -> :sswitch_311
        0x2d -> :sswitch_323
        0x2e -> :sswitch_335
        0x2f -> :sswitch_347
        0x30 -> :sswitch_359
        0x31 -> :sswitch_36b
        0x32 -> :sswitch_37d
        0x33 -> :sswitch_38f
        0x34 -> :sswitch_3a1
        0x35 -> :sswitch_3b3
        0x36 -> :sswitch_3c5
        0x37 -> :sswitch_3d7
        0x38 -> :sswitch_3e9
        0x39 -> :sswitch_3fb
        0x3a -> :sswitch_409
        0x3b -> :sswitch_41b
        0x3c -> :sswitch_42d
        0x3d -> :sswitch_43f
        0x3e -> :sswitch_455
        0x3f -> :sswitch_463
        0x40 -> :sswitch_479
        0x41 -> :sswitch_487
        0x42 -> :sswitch_499
        0x43 -> :sswitch_4ab
        0x44 -> :sswitch_4b9
        0x45 -> :sswitch_4c7
        0x46 -> :sswitch_4d5
        0x47 -> :sswitch_4e7
        0x48 -> :sswitch_4f9
        0x49 -> :sswitch_50b
        0x4a -> :sswitch_51d
        0x4b -> :sswitch_52f
        0x4c -> :sswitch_541
        0x4d -> :sswitch_553
        0x4e -> :sswitch_565
        0x4f -> :sswitch_577
        0x50 -> :sswitch_589
        0x51 -> :sswitch_59b
        0x52 -> :sswitch_5ad
        0x53 -> :sswitch_5bf
        0x54 -> :sswitch_5d1
        0x55 -> :sswitch_5e3
        0x56 -> :sswitch_5f5
        0x57 -> :sswitch_607
        0x58 -> :sswitch_619
        0x59 -> :sswitch_62b
        0x5a -> :sswitch_63d
        0x5b -> :sswitch_64f
        0x5c -> :sswitch_661
        0x5d -> :sswitch_673
        0x5e -> :sswitch_685
        0x5f -> :sswitch_697
        0x60 -> :sswitch_6a9
        0x61 -> :sswitch_6bb
        0x62 -> :sswitch_6cd
        0x63 -> :sswitch_6df
        0x64 -> :sswitch_6f1
        0x65 -> :sswitch_703
        0x66 -> :sswitch_715
        0x67 -> :sswitch_727
        0x68 -> :sswitch_739
        0x69 -> :sswitch_74b
        0x6a -> :sswitch_75d
        0x6b -> :sswitch_76f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
