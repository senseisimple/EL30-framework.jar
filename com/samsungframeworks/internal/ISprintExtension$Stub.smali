.class public abstract Lcom/samsungframeworks/internal/ISprintExtension$Stub;
.super Landroid/os/Binder;
.source "ISprintExtension.java"

# interfaces
.implements Lcom/samsungframeworks/internal/ISprintExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/ISprintExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/ISprintExtension$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsungframeworks.internal.ISprintExtension"

.field static final TRANSACTION_disableScreenTimeout:I = 0xd

.field static final TRANSACTION_enableScreenTimeout:I = 0xe

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x10

.field static final TRANSACTION_getDataProfile:I = 0x3

.field static final TRANSACTION_getString:I = 0x1

.field static final TRANSACTION_reboot:I = 0xf

.field static final TRANSACTION_registerHFA:I = 0xc

.field static final TRANSACTION_release:I = 0x5

.field static final TRANSACTION_releaseDSAProxy:I = 0x7

.field static final TRANSACTION_requestDataProfile:I = 0x4

.field static final TRANSACTION_setDSAProxy:I = 0x6

.field static final TRANSACTION_setString:I = 0x2

.field static final TRANSACTION_startCIDC:I = 0x8

.field static final TRANSACTION_startCIFUMO:I = 0x9

.field static final TRANSACTION_startCIPRL:I = 0xa

.field static final TRANSACTION_startHFA:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p0, p0, v0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;
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
    const-string v1, "com.samsungframeworks.internal.ISprintExtension"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/samsungframeworks/internal/ISprintExtension;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/samsungframeworks/internal/ISprintExtension$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "com.samsungframeworks.internal.ISprintExtension"

    .line 38
    sparse-switch p1, :sswitch_data_114

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 42
    :sswitch_b
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 53
    goto :goto_a

    .line 57
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->setString(ILjava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 64
    goto :goto_a

    .line 68
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3c
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->getDataProfile()I

    move-result v2

    .line 70
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 72
    goto :goto_a

    .line 76
    .end local v2           #_result:I
    :sswitch_4d
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->requestDataProfile(I)I

    move-result v2

    .line 80
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 82
    goto :goto_a

    .line 86
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_62
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->release()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 89
    goto :goto_a

    .line 93
    :sswitch_6f
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->setDSAProxy(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 100
    goto :goto_a

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_84
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->releaseDSAProxy()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 107
    goto/16 :goto_a

    .line 111
    :sswitch_92
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startCIDC()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 114
    goto/16 :goto_a

    .line 118
    :sswitch_a0
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startCIFUMO()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 121
    goto/16 :goto_a

    .line 125
    :sswitch_ae
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startCIPRL()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 128
    goto/16 :goto_a

    .line 132
    :sswitch_bc
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startHFA()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 135
    goto/16 :goto_a

    .line 139
    :sswitch_ca
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->registerHFA()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 142
    goto/16 :goto_a

    .line 146
    :sswitch_d8
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->disableScreenTimeout()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 149
    goto/16 :goto_a

    .line 153
    :sswitch_e6
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->enableScreenTimeout()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 156
    goto/16 :goto_a

    .line 160
    :sswitch_f4
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->reboot()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 163
    goto/16 :goto_a

    .line 167
    :sswitch_102
    const-string v3, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 171
    goto/16 :goto_a

    .line 38
    :sswitch_data_114
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_62
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_84
        0x8 -> :sswitch_92
        0x9 -> :sswitch_a0
        0xa -> :sswitch_ae
        0xb -> :sswitch_bc
        0xc -> :sswitch_ca
        0xd -> :sswitch_d8
        0xe -> :sswitch_e6
        0xf -> :sswitch_f4
        0x10 -> :sswitch_102
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
