.class public abstract Landroid/app/enterprise/IRoamingPolicy$Stub;
.super Landroid/os/Binder;
.source "IRoamingPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IRoamingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IRoamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IRoamingPolicy"

.field static final TRANSACTION_isRoamingDataEnabled:I = 0x6

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x4

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x2

.field static final TRANSACTION_setRoamingData:I = 0x5

.field static final TRANSACTION_setRoamingPush:I = 0x3

.field static final TRANSACTION_setRoamingSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "android.app.enterprise.IRoamingPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/app/enterprise/IRoamingPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "android.app.enterprise.IRoamingPolicy"

    .line 42
    sparse-switch p1, :sswitch_data_98

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 46
    :sswitch_c
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 47
    goto :goto_b

    .line 51
    :sswitch_13
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    move v0, v3

    .line 54
    .local v0, _arg0:Z
    :goto_1f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingSync(Z)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 56
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_27
    move v0, v5

    .line 53
    goto :goto_1f

    .line 60
    :sswitch_29
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingSyncEnabled()Z

    move-result v1

    .line 62
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v1, :cond_3d

    move v2, v3

    :goto_38
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 64
    goto :goto_b

    :cond_3d
    move v2, v5

    .line 63
    goto :goto_38

    .line 68
    .end local v1           #_result:Z
    :sswitch_3f
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    move v0, v3

    .line 71
    .restart local v0       #_arg0:Z
    :goto_4b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingPush(Z)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 73
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_53
    move v0, v5

    .line 70
    goto :goto_4b

    .line 77
    :sswitch_55
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingPushEnabled()Z

    move-result v1

    .line 79
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v1, :cond_69

    move v2, v3

    :goto_64
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 81
    goto :goto_b

    :cond_69
    move v2, v5

    .line 80
    goto :goto_64

    .line 85
    .end local v1           #_result:Z
    :sswitch_6b
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7f

    move v0, v3

    .line 88
    .restart local v0       #_arg0:Z
    :goto_77
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingData(Z)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 90
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_7f
    move v0, v5

    .line 87
    goto :goto_77

    .line 94
    :sswitch_81
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingDataEnabled()Z

    move-result v1

    .line 96
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_96

    move v2, v3

    :goto_90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 98
    goto/16 :goto_b

    :cond_96
    move v2, v5

    .line 97
    goto :goto_90

    .line 42
    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_55
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_81
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
