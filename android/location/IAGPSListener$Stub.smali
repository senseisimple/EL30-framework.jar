.class public abstract Landroid/location/IAGPSListener$Stub;
.super Landroid/os/Binder;
.source "IAGPSListener.java"

# interfaces
.implements Landroid/location/IAGPSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IAGPSListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IAGPSListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IAGPSListener"

.field static final TRANSACTION_onLBSRequest:I = 0x2

.field static final TRANSACTION_onNMEAChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.location.IAGPSListener"

    invoke-virtual {p0, p0, v0}, Landroid/location/IAGPSListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IAGPSListener;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "android.location.IAGPSListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/IAGPSListener;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/location/IAGPSListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/location/IAGPSListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IAGPSListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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

    const-string v7, "android.location.IAGPSListener"

    .line 41
    sparse-switch p1, :sswitch_data_40

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 45
    :sswitch_b
    const-string v0, "android.location.IAGPSListener"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v0, "android.location.IAGPSListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/location/IAGPSListener$Stub;->onNMEAChanged(Ljava/lang/String;)V

    move v0, v6

    .line 54
    goto :goto_a

    .line 58
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_20
    const-string v0, "android.location.IAGPSListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 68
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/location/IAGPSListener$Stub;->onLBSRequest(IILjava/lang/String;ILjava/lang/String;)V

    move v0, v6

    .line 70
    goto :goto_a

    .line 41
    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_20
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
