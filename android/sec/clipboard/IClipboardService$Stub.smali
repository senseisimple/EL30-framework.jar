.class public abstract Landroid/sec/clipboard/IClipboardService$Stub;
.super Landroid/os/Binder;
.source "IClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardService"

.field static final TRANSACTION_AddClipboardFormatListener:I = 0x4

.field static final TRANSACTION_GetClipboardData:I = 0x6

.field static final TRANSACTION_GetClipboardFormatName:I = 0x3

.field static final TRANSACTION_ObserverUpdate:I = 0x1

.field static final TRANSACTION_RegistClipboardWorkingFormUiInterface:I = 0x9

.field static final TRANSACTION_RegisterClipboardFormat:I = 0x2

.field static final TRANSACTION_RemoveClipboardFormatListener:I = 0x5

.field static final TRANSACTION_SetClipboardData:I = 0x8

.field static final TRANSACTION_SetSyncClipboardData:I = 0x7

.field static final TRANSACTION_getDataSize:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
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
    const-string v1, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Landroid/sec/clipboard/IClipboardService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.sec.clipboard.IClipboardService"

    .line 38
    sparse-switch p1, :sswitch_data_134

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 42
    :sswitch_c
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    .line 52
    sget-object v3, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 57
    .local v1, _arg1:Landroid/sec/clipboard/data/ClipboardData;
    :goto_2a
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 59
    goto :goto_b

    .line 55
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    :cond_32
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_2a

    .line 63
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_34
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegisterClipboardFormat(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 69
    goto :goto_b

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_49
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardFormatName(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 79
    goto :goto_b

    .line 83
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5e
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 86
    .local v0, _arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v2

    .line 87
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_7a

    move v3, v4

    :goto_75
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 89
    goto :goto_b

    :cond_7a
    move v3, v6

    .line 88
    goto :goto_75

    .line 93
    .end local v0           #_arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v2           #_result:Z
    :sswitch_7c
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v2

    .line 97
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_99

    move v3, v4

    :goto_93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 99
    goto/16 :goto_b

    :cond_99
    move v3, v6

    .line 98
    goto :goto_93

    .line 103
    .end local v0           #_arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v2           #_result:Z
    :sswitch_9b
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 107
    .local v2, _result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v2, :cond_b6

    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v2, p3, v4}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b3
    move v3, v4

    .line 115
    goto/16 :goto_b

    .line 113
    :cond_b6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b3

    .line 119
    .end local v0           #_arg0:I
    .end local v2           #_result:Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_ba
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_dd

    .line 122
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 127
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_cd
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->SetSyncClipboardData(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 128
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v2, :cond_df

    move v3, v4

    :goto_d7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 130
    goto/16 :goto_b

    .line 125
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v2           #_result:Z
    :cond_dd
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_cd

    .restart local v2       #_result:Z
    :cond_df
    move v3, v6

    .line 129
    goto :goto_d7

    .line 134
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v2           #_result:Z
    :sswitch_e1
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_108

    .line 139
    sget-object v3, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 144
    .restart local v1       #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    :goto_f8
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    .line 145
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v2, :cond_10a

    move v3, v4

    :goto_102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 147
    goto/16 :goto_b

    .line 142
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #_result:Z
    :cond_108
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_f8

    .restart local v2       #_result:Z
    :cond_10a
    move v3, v6

    .line 146
    goto :goto_102

    .line 151
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #_result:Z
    :sswitch_10c
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v0

    .line 154
    .local v0, _arg0:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 156
    goto/16 :goto_b

    .line 159
    .end local v0           #_arg0:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_122
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getDataSize()I

    move-result v2

    .line 161
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 163
    goto/16 :goto_b

    .line 38
    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_34
        0x3 -> :sswitch_49
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_9b
        0x7 -> :sswitch_ba
        0x8 -> :sswitch_e1
        0x9 -> :sswitch_10c
        0xa -> :sswitch_122
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
