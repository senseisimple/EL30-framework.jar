.class public abstract Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataList.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/IClipboardDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.data.IClipboardDataList"

.field static final TRANSACTION_getItem:I = 0x2

.field static final TRANSACTION_size:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/data/IClipboardDataList;
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
    const-string v1, "android.sec.clipboard.data.IClipboardDataList"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sec/clipboard/data/IClipboardDataList;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Landroid/sec/clipboard/data/IClipboardDataList;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v3, 0x1

    const-string v4, "android.sec.clipboard.data.IClipboardDataList"

    .line 38
    sparse-switch p1, :sswitch_data_42

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 42
    :sswitch_b
    const-string v2, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v2, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->size()I

    move-result v1

    .line 49
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 51
    goto :goto_a

    .line 55
    .end local v1           #_result:I
    :sswitch_23
    const-string v2, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 59
    .local v1, _result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v1, :cond_3d

    .line 61
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v1, p3, v3}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3b
    move v2, v3

    .line 67
    goto :goto_a

    .line 65
    :cond_3d
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 38
    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
