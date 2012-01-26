.class public abstract Landroid/app/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Landroid/app/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IStatusBar"

.field static final TRANSACTION_activate:I = 0x1

.field static final TRANSACTION_addIcon:I = 0x5

.field static final TRANSACTION_deactivate:I = 0x2

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_getEventContact:I = 0xd

.field static final TRANSACTION_getEventCount:I = 0xc

.field static final TRANSACTION_getEventIndexWithReq:I = 0x8

.field static final TRANSACTION_getEventIntent:I = 0xe

.field static final TRANSACTION_getEventText:I = 0xa

.field static final TRANSACTION_getEventTime:I = 0xb

.field static final TRANSACTION_getEventTitle:I = 0x9

.field static final TRANSACTION_removeIcon:I = 0x7

.field static final TRANSACTION_toggle:I = 0x3

.field static final TRANSACTION_updateIcon:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p0, p0, v0}, Landroid/app/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_3
    return-object v1

    .line 27
    :cond_4
    const-string v1, "android.app.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IStatusBar;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Landroid/app/IStatusBar;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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
    const/4 v7, 0x1

    const-string v8, "android.app.IStatusBar"

    .line 39
    sparse-switch p1, :sswitch_data_150

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 43
    :sswitch_b
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 44
    goto :goto_a

    .line 48
    :sswitch_12
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/IStatusBar$Stub;->activate()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 51
    goto :goto_a

    .line 55
    :sswitch_1f
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/IStatusBar$Stub;->deactivate()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 58
    goto :goto_a

    .line 62
    :sswitch_2c
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/IStatusBar$Stub;->toggle()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 65
    goto :goto_a

    .line 69
    :sswitch_39
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 75
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IStatusBar$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 78
    goto :goto_a

    .line 82
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_52
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IStatusBar$Stub;->addIcon(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/IBinder;

    move-result-object v6

    .line 92
    .local v6, _result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 94
    goto :goto_a

    .line 98
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v6           #_result:Landroid/os/IBinder;
    :sswitch_73
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 102
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/app/IStatusBar$Stub;->updateIcon(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 111
    goto/16 :goto_a

    .line 115
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    :sswitch_96
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 118
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IStatusBar$Stub;->removeIcon(Landroid/os/IBinder;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 120
    goto/16 :goto_a

    .line 124
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_a8
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/IStatusBar$Stub;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v6

    .line 130
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 132
    goto/16 :goto_a

    .line 136
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_c2
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/IStatusBar$Stub;->getEventTitle(I)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 142
    goto/16 :goto_a

    .line 146
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_d8
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/IStatusBar$Stub;->getEventText(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 152
    goto/16 :goto_a

    .line 156
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_ee
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/IStatusBar$Stub;->getEventTime(I)Ljava/lang/String;

    move-result-object v6

    .line 160
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 162
    goto/16 :goto_a

    .line 166
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_104
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/IStatusBar$Stub;->getEventCount(I)I

    move-result v6

    .line 170
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 172
    goto/16 :goto_a

    .line 176
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_11a
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/IStatusBar$Stub;->getEventContact(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 182
    goto/16 :goto_a

    .line 186
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_130
    const-string v0, "android.app.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/IStatusBar$Stub;->getEventIntent(I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 190
    .local v6, _result:Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v6, :cond_14b

    .line 192
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v6, p3, v7}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_148
    move v0, v7

    .line 198
    goto/16 :goto_a

    .line 196
    :cond_14b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_148

    .line 39
    :sswitch_data_150
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_39
        0x5 -> :sswitch_52
        0x6 -> :sswitch_73
        0x7 -> :sswitch_96
        0x8 -> :sswitch_a8
        0x9 -> :sswitch_c2
        0xa -> :sswitch_d8
        0xb -> :sswitch_ee
        0xc -> :sswitch_104
        0xd -> :sswitch_11a
        0xe -> :sswitch_130
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
