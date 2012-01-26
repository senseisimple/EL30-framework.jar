.class public abstract Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;
.super Landroid/os/Binder;
.source "IFMEventListener.java"

# interfaces
.implements Lcom/samsung/media/fmradio/internal/IFMEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/internal/IFMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.media.fmradio.internal.IFMEventListener"

.field static final TRANSACTION_earPhoneConnected:I = 0x8

.field static final TRANSACTION_earPhoneDisconnected:I = 0x9

.field static final TRANSACTION_onAFReceived:I = 0xe

.field static final TRANSACTION_onAFStarted:I = 0xd

.field static final TRANSACTION_onChannelFound:I = 0x3

.field static final TRANSACTION_onOff:I = 0x2

.field static final TRANSACTION_onOn:I = 0x1

.field static final TRANSACTION_onRDSDisabled:I = 0xc

.field static final TRANSACTION_onRDSEnabled:I = 0xb

.field static final TRANSACTION_onRDSReceived:I = 0xa

.field static final TRANSACTION_onScanFinished:I = 0x6

.field static final TRANSACTION_onScanStarted:I = 0x4

.field static final TRANSACTION_onScanStopped:I = 0x5

.field static final TRANSACTION_onTune:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;
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
    const-string v1, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x1

    const-string v7, "com.samsung.media.fmradio.internal.IFMEventListener"

    .line 43
    sparse-switch p1, :sswitch_data_da

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_a
    return v5

    .line 47
    :sswitch_b
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_a

    .line 52
    :sswitch_12
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onOn()V

    move v5, v6

    .line 54
    goto :goto_a

    .line 58
    :sswitch_1c
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onOff(I)V

    move v5, v6

    .line 62
    goto :goto_a

    .line 66
    .end local v0           #_arg0:I
    :sswitch_2a
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 69
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onChannelFound(J)V

    move v5, v6

    .line 70
    goto :goto_a

    .line 74
    .end local v0           #_arg0:J
    :sswitch_38
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanStarted()V

    move v5, v6

    .line 76
    goto :goto_a

    .line 80
    :sswitch_42
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, _arg0_length:I
    if-gez v2, :cond_56

    .line 84
    const/4 v0, 0x0

    .line 89
    .local v0, _arg0:[J
    :goto_4e
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanStopped([J)V

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 91
    goto :goto_a

    .line 87
    .end local v0           #_arg0:[J
    :cond_56
    new-array v0, v2, [J

    .restart local v0       #_arg0:[J
    goto :goto_4e

    .line 95
    .end local v0           #_arg0:[J
    .end local v2           #_arg0_length:I
    :sswitch_59
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .restart local v2       #_arg0_length:I
    if-gez v2, :cond_6d

    .line 99
    const/4 v0, 0x0

    .line 104
    .restart local v0       #_arg0:[J
    :goto_65
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanFinished([J)V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 106
    goto :goto_a

    .line 102
    .end local v0           #_arg0:[J
    :cond_6d
    new-array v0, v2, [J

    .restart local v0       #_arg0:[J
    goto :goto_65

    .line 110
    .end local v0           #_arg0:[J
    .end local v2           #_arg0_length:I
    :sswitch_70
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 113
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onTune(J)V

    move v5, v6

    .line 114
    goto :goto_a

    .line 118
    .end local v0           #_arg0:J
    :sswitch_7e
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->earPhoneConnected()V

    move v5, v6

    .line 120
    goto :goto_a

    .line 124
    :sswitch_88
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->earPhoneDisconnected()V

    move v5, v6

    .line 126
    goto/16 :goto_a

    .line 130
    :sswitch_93
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 134
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 138
    goto/16 :goto_a

    .line 142
    .end local v0           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_aa
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSEnabled()V

    move v5, v6

    .line 144
    goto/16 :goto_a

    .line 148
    :sswitch_b5
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSDisabled()V

    move v5, v6

    .line 150
    goto/16 :goto_a

    .line 154
    :sswitch_c0
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onAFStarted()V

    move v5, v6

    .line 156
    goto/16 :goto_a

    .line 160
    :sswitch_cb
    const-string v5, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 163
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onAFReceived(J)V

    move v5, v6

    .line 164
    goto/16 :goto_a

    .line 43
    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_38
        0x5 -> :sswitch_42
        0x6 -> :sswitch_59
        0x7 -> :sswitch_70
        0x8 -> :sswitch_7e
        0x9 -> :sswitch_88
        0xa -> :sswitch_93
        0xb -> :sswitch_aa
        0xc -> :sswitch_b5
        0xd -> :sswitch_c0
        0xe -> :sswitch_cb
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
