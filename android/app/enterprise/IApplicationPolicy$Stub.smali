.class public abstract Landroid/app/enterprise/IApplicationPolicy$Stub;
.super Landroid/os/Binder;
.source "IApplicationPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IApplicationPolicy"

.field static final TRANSACTION_deleteManagedAppInfo:I = 0xd

.field static final TRANSACTION_getApplicationCacheSize:I = 0x16

.field static final TRANSACTION_getApplicationCodeSize:I = 0x14

.field static final TRANSACTION_getApplicationDataSize:I = 0x15

.field static final TRANSACTION_getApplicationInstallationEnabled:I = 0xe

.field static final TRANSACTION_getApplicationName:I = 0x11

.field static final TRANSACTION_getApplicationStateEnabled:I = 0xc

.field static final TRANSACTION_getApplicationTotalSize:I = 0x13

.field static final TRANSACTION_getApplicationUninstallationEnabled:I = 0xf

.field static final TRANSACTION_getApplicationVersion:I = 0x12

.field static final TRANSACTION_getApplicationsList:I = 0x9

.field static final TRANSACTION_getInstalledApplicationsIDList:I = 0x10

.field static final TRANSACTION_getInstalledManagedApplicationsList:I = 0x8

.field static final TRANSACTION_getTopNCPUUsageApp:I = 0x17

.field static final TRANSACTION_getTopNDataUsageApp:I = 0x19

.field static final TRANSACTION_getTopNMemoryUsageApp:I = 0x18

.field static final TRANSACTION_installApplication:I = 0x5

.field static final TRANSACTION_isApplicationInstalled:I = 0x3

.field static final TRANSACTION_isApplicationRunning:I = 0x4

.field static final TRANSACTION_removeManagedApplications:I = 0x1

.field static final TRANSACTION_setApplicationInstallationDisabled:I = 0xa

.field static final TRANSACTION_setApplicationState:I = 0x7

.field static final TRANSACTION_setApplicationUninstallationDisabled:I = 0xb

.field static final TRANSACTION_uninstallApplication:I = 0x6

.field static final TRANSACTION_wipeApplicationData:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "android.app.enterprise.IApplicationPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/app/enterprise/IApplicationPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.app.enterprise.IApplicationPolicy"

    .line 44
    sparse-switch p1, :sswitch_data_284

    .line 306
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_b
    return v6

    .line 48
    :sswitch_c
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 49
    goto :goto_b

    .line 53
    :sswitch_13
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 57
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v6, v7

    .line 59
    goto :goto_b

    .line 63
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_28
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->wipeApplicationData(Ljava/lang/String;)Z

    move-result v3

    .line 67
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v3, :cond_40

    move v6, v7

    :goto_3b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 69
    goto :goto_b

    :cond_40
    move v6, v9

    .line 68
    goto :goto_3b

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_42
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 77
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v3, :cond_5a

    move v6, v7

    :goto_55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 79
    goto :goto_b

    :cond_5a
    move v6, v9

    .line 78
    goto :goto_55

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_5c
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationRunning(Ljava/lang/String;)Z

    move-result v3

    .line 87
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v3, :cond_74

    move v6, v7

    :goto_6f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 89
    goto :goto_b

    :cond_74
    move v6, v9

    .line 88
    goto :goto_6f

    .line 93
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_76
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_96

    move v2, v7

    .line 98
    .local v2, _arg1:Z
    :goto_86
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->installApplication(Ljava/lang/String;Z)Z

    move-result v3

    .line 99
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v3, :cond_98

    move v6, v7

    :goto_90
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 101
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_96
    move v2, v9

    .line 97
    goto :goto_86

    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_98
    move v6, v9

    .line 100
    goto :goto_90

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_9a
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ba

    move v2, v7

    .line 110
    .restart local v2       #_arg1:Z
    :goto_aa
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->uninstallApplication(Ljava/lang/String;Z)Z

    move-result v3

    .line 111
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v3, :cond_bc

    move v6, v7

    :goto_b4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 113
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_ba
    move v2, v9

    .line 109
    goto :goto_aa

    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_bc
    move v6, v9

    .line 112
    goto :goto_b4

    .line 117
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_be
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_de

    move v2, v7

    .line 122
    .restart local v2       #_arg1:Z
    :goto_ce
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationState(Ljava/lang/String;Z)Z

    move-result v3

    .line 123
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v3, :cond_e0

    move v6, v7

    :goto_d8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 125
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_de
    move v2, v9

    .line 121
    goto :goto_ce

    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_e0
    move v6, v9

    .line 124
    goto :goto_d8

    .line 129
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_e2
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledManagedApplicationsList()[Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v6, v7

    .line 133
    goto/16 :goto_b

    .line 137
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_f4
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v3

    .line 141
    .local v3, _result:[Landroid/app/enterprise/ManagedAppInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v6, v7

    .line 143
    goto/16 :goto_b

    .line 147
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:[Landroid/app/enterprise/ManagedAppInfo;
    :sswitch_10a
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_123

    move v2, v7

    .line 152
    .restart local v2       #_arg1:Z
    :goto_11a
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 154
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    :cond_123
    move v2, v9

    .line 151
    goto :goto_11a

    .line 158
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_125
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13e

    move v2, v7

    .line 163
    .restart local v2       #_arg1:Z
    :goto_135
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 165
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    :cond_13e
    move v2, v9

    .line 162
    goto :goto_135

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_140
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 173
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v3, :cond_159

    move v6, v7

    :goto_153
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 175
    goto/16 :goto_b

    :cond_159
    move v6, v9

    .line 174
    goto :goto_153

    .line 179
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_15b
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->deleteManagedAppInfo(Ljava/lang/String;)Z

    move-result v3

    .line 183
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v3, :cond_174

    move v6, v7

    :goto_16e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 185
    goto/16 :goto_b

    :cond_174
    move v6, v9

    .line 184
    goto :goto_16e

    .line 189
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_176
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 193
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v3, :cond_18f

    move v6, v7

    :goto_189
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 195
    goto/16 :goto_b

    :cond_18f
    move v6, v9

    .line 194
    goto :goto_189

    .line 199
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_191
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 203
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v3, :cond_1aa

    move v6, v7

    :goto_1a4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 205
    goto/16 :goto_b

    :cond_1aa
    move v6, v9

    .line 204
    goto :goto_1a4

    .line 209
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1ac
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v6, v7

    .line 213
    goto/16 :goto_b

    .line 217
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_1be
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 223
    goto/16 :goto_b

    .line 227
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1d4
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 233
    goto/16 :goto_b

    .line 237
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1ea
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 243
    goto/16 :goto_b

    .line 247
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_200
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 253
    goto/16 :goto_b

    .line 257
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_216
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 263
    goto/16 :goto_b

    .line 267
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_22c
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 273
    goto/16 :goto_b

    .line 277
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_242
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNCPUUsageApp(I)Ljava/util/List;

    move-result-object v4

    .line 281
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 283
    goto/16 :goto_b

    .line 287
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :sswitch_258
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNMemoryUsageApp(I)Ljava/util/List;

    move-result-object v4

    .line 291
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 293
    goto/16 :goto_b

    .line 297
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :sswitch_26e
    const-string v6, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNDataUsageApp(I)Ljava/util/List;

    move-result-object v4

    .line 301
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 303
    goto/16 :goto_b

    .line 44
    :sswitch_data_284
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_28
        0x3 -> :sswitch_42
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_76
        0x6 -> :sswitch_9a
        0x7 -> :sswitch_be
        0x8 -> :sswitch_e2
        0x9 -> :sswitch_f4
        0xa -> :sswitch_10a
        0xb -> :sswitch_125
        0xc -> :sswitch_140
        0xd -> :sswitch_15b
        0xe -> :sswitch_176
        0xf -> :sswitch_191
        0x10 -> :sswitch_1ac
        0x11 -> :sswitch_1be
        0x12 -> :sswitch_1d4
        0x13 -> :sswitch_1ea
        0x14 -> :sswitch_200
        0x15 -> :sswitch_216
        0x16 -> :sswitch_22c
        0x17 -> :sswitch_242
        0x18 -> :sswitch_258
        0x19 -> :sswitch_26e
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
