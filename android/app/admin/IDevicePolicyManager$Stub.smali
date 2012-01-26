.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_generateRecoveryPassword:I = 0x5a

.field static final TRANSACTION_getActiveAdmins:I = 0x4d

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x2a

.field static final TRANSACTION_getAllowBrowser:I = 0x24

.field static final TRANSACTION_getAllowCamera:I = 0x1a

.field static final TRANSACTION_getAllowDesktopSync:I = 0x42

.field static final TRANSACTION_getAllowHTMLEmail:I = 0x22

.field static final TRANSACTION_getAllowInternetSharing:I = 0x26

.field static final TRANSACTION_getAllowIrDA:I = 0x44

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x20

.field static final TRANSACTION_getAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3e

.field static final TRANSACTION_getAllowSMIMESoftCerts:I = 0x40

.field static final TRANSACTION_getAllowStorageCard:I = 0x18

.field static final TRANSACTION_getAllowTextMessaging:I = 0x1e

.field static final TRANSACTION_getAllowWifi:I = 0x1c

.field static final TRANSACTION_getAttachmentsEnabled:I = 0x14

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x7

.field static final TRANSACTION_getMaxAttachmentSize:I = 0x16

.field static final TRANSACTION_getMaxCalendarAge:I = 0x2e

.field static final TRANSACTION_getMaxEmailAge:I = 0x30

.field static final TRANSACTION_getMaxEmailBodyTruncSize:I = 0x32

.field static final TRANSACTION_getMaxHtmlEmailBodyTruncSize:I = 0x34

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x9

.field static final TRANSACTION_getMaximumTimeToLock:I = 0xc

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x2c

.field static final TRANSACTION_getPassword:I = 0x59

.field static final TRANSACTION_getPasswordExpires:I = 0x10

.field static final TRANSACTION_getPasswordHistory:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPasswordRecoverable:I = 0xe

.field static final TRANSACTION_getRemoveWarning:I = 0x4f

.field static final TRANSACTION_getRequireDeviceEncryption:I = 0x46

.field static final TRANSACTION_getRequireEncryptedSMIMEMessages:I = 0x38

.field static final TRANSACTION_getRequireEncryptionSMIMEAlgorithm:I = 0x3c

.field static final TRANSACTION_getRequireManualSyncRoaming:I = 0x28

.field static final TRANSACTION_getRequireSignedSMIMEAlgorithm:I = 0x3a

.field static final TRANSACTION_getRequireSignedSMIMEMessages:I = 0x36

.field static final TRANSACTION_getRequireStorageCardEncryption:I = 0x48

.field static final TRANSACTION_isActivePasswordExpired:I = 0x6

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x5

.field static final TRANSACTION_isAdminActive:I = 0x4c

.field static final TRANSACTION_lockNow:I = 0x49

.field static final TRANSACTION_notifyChanges:I = 0x56

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x4e

.field static final TRANSACTION_reboot:I = 0x58

.field static final TRANSACTION_recoverPassword:I = 0x51

.field static final TRANSACTION_removeActiveAdmin:I = 0x50

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x54

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x55

.field static final TRANSACTION_resetPassword:I = 0xa

.field static final TRANSACTION_setActiveAdmin:I = 0x4b

.field static final TRANSACTION_setActivePasswordState:I = 0x53

.field static final TRANSACTION_setAdminPermissions:I = 0x57

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x29

.field static final TRANSACTION_setAllowBrowser:I = 0x23

.field static final TRANSACTION_setAllowCamera:I = 0x19

.field static final TRANSACTION_setAllowDesktopSync:I = 0x41

.field static final TRANSACTION_setAllowHTMLEmail:I = 0x21

.field static final TRANSACTION_setAllowInternetSharing:I = 0x25

.field static final TRANSACTION_setAllowIrDA:I = 0x43

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0x1f

.field static final TRANSACTION_setAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3d

.field static final TRANSACTION_setAllowSMIMESoftCerts:I = 0x3f

.field static final TRANSACTION_setAllowStorageCard:I = 0x17

.field static final TRANSACTION_setAllowTextMessaging:I = 0x1d

.field static final TRANSACTION_setAllowWifi:I = 0x1b

.field static final TRANSACTION_setAttachmentsEnabled:I = 0x13

.field static final TRANSACTION_setEncryptionPolicyWithEncryptApp:I = 0x5b

.field static final TRANSACTION_setMaxAttachmentSize:I = 0x15

.field static final TRANSACTION_setMaxCalendarAge:I = 0x2d

.field static final TRANSACTION_setMaxEmailAge:I = 0x2f

.field static final TRANSACTION_setMaxEmailBodyTruncSize:I = 0x31

.field static final TRANSACTION_setMaxHtmlEmailBodyTruncSize:I = 0x33

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x8

.field static final TRANSACTION_setMaximumTimeToLock:I = 0xb

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x2b

.field static final TRANSACTION_setPasswordExpires:I = 0xf

.field static final TRANSACTION_setPasswordHistory:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordRecoverable:I = 0xd

.field static final TRANSACTION_setRecoveryPasswordState:I = 0x52

.field static final TRANSACTION_setRequireDeviceEncryption:I = 0x45

.field static final TRANSACTION_setRequireEncryptedSMIMEMessages:I = 0x37

.field static final TRANSACTION_setRequireEncryptionSMIMEAlgorithm:I = 0x3b

.field static final TRANSACTION_setRequireManualSyncRoaming:I = 0x27

.field static final TRANSACTION_setRequireSignedSMIMEAlgorithm:I = 0x39

.field static final TRANSACTION_setRequireSignedSMIMEMessages:I = 0x35

.field static final TRANSACTION_setRequireStorageCardEncryption:I = 0x47

.field static final TRANSACTION_wipeData:I = 0x4a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
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
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    .line 42
    sparse-switch p1, :sswitch_data_c96

    .line 1376
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 46
    :sswitch_8
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_7

    .line 51
    :sswitch_f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 54
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 60
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v0, 0x1

    goto :goto_7

    .line 57
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_2e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_22

    .line 67
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_30
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4f

    .line 70
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 75
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v8

    .line 76
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v0, 0x1

    goto :goto_7

    .line 73
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_4f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .line 82
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_51
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    .line 85
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 91
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v0, 0x1

    goto :goto_7

    .line 88
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_70
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_64

    .line 98
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_72
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_92

    .line 101
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 106
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_85
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v8

    .line 107
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 104
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_92
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_85

    .line 113
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_94
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v8

    .line 115
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v8, :cond_a9

    const/4 v0, 0x1

    :goto_a3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 116
    :cond_a9
    const/4 v0, 0x0

    goto :goto_a3

    .line 121
    .end local v8           #_result:Z
    :sswitch_ab
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordExpired()Z

    move-result v8

    .line 123
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v8, :cond_c0

    const/4 v0, 0x1

    :goto_ba
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 124
    :cond_c0
    const/4 v0, 0x0

    goto :goto_ba

    .line 129
    .end local v8           #_result:Z
    :sswitch_c2
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v8

    .line 131
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 137
    .end local v8           #_result:I
    :sswitch_d4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f4

    .line 140
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 146
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 143
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_f4
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_e7

    .line 153
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_f6
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_116

    .line 156
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 161
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_109
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v8

    .line 162
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 159
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_116
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_109

    .line 168
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_118
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v8

    .line 174
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v8, :cond_135

    const/4 v0, 0x1

    :goto_12f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 175
    :cond_135
    const/4 v0, 0x0

    goto :goto_12f

    .line 180
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v8           #_result:Z
    :sswitch_137
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_157

    .line 183
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 189
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 190
    .local v6, _arg1:J
    invoke-virtual {p0, v1, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 186
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:J
    :cond_157
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_14a

    .line 196
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_159
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_179

    .line 199
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 204
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_16c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v8

    .line 205
    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 202
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:J
    :cond_179
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_16c

    .line 211
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_17b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19f

    .line 214
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 220
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a1

    const/4 v0, 0x1

    move v2, v0

    .line 221
    .local v2, _arg1:Z
    :goto_196
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 217
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_19f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_18e

    .line 220
    :cond_1a1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_196

    .line 227
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c7

    .line 230
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 235
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1b7
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v8

    .line 236
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v8, :cond_1c9

    const/4 v0, 0x1

    :goto_1c1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 233
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_1c7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1b7

    .line 237
    .restart local v8       #_result:Z
    :cond_1c9
    const/4 v0, 0x0

    goto :goto_1c1

    .line 242
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_1cb
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1eb

    .line 245
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 251
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 248
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_1eb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1de

    .line 258
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1ed
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20d

    .line 261
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 266
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_200
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v8

    .line 267
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 264
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_20d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_200

    .line 273
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_20f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22f

    .line 276
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 282
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 279
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_22f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_222

    .line 289
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_231
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_251

    .line 292
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 297
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_244
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v8

    .line 298
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 295
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_251
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_244

    .line 304
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_253
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_277

    .line 307
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 313
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_279

    const/4 v0, 0x1

    move v2, v0

    .line 314
    .local v2, _arg1:Z
    :goto_26e
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 310
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_277
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_266

    .line 313
    :cond_279
    const/4 v0, 0x0

    move v2, v0

    goto :goto_26e

    .line 320
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_27c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29f

    .line 323
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 328
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_28f
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    .line 329
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v8, :cond_2a1

    const/4 v0, 0x1

    :goto_299
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 326
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_29f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_28f

    .line 330
    .restart local v8       #_result:Z
    :cond_2a1
    const/4 v0, 0x0

    goto :goto_299

    .line 335
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_2a3
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c3

    .line 338
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 344
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 341
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_2c3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b6

    .line 351
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2c5
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e5

    .line 354
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 359
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2d8
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v8

    .line 360
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 357
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_2e5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2d8

    .line 366
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2e7
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30b

    .line 369
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 375
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30d

    const/4 v0, 0x1

    move v2, v0

    .line 376
    .local v2, _arg1:Z
    :goto_302
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 372
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_30b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2fa

    .line 375
    :cond_30d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_302

    .line 382
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_310
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_333

    .line 385
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 390
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_323
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v8

    .line 391
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v8, :cond_335

    const/4 v0, 0x1

    :goto_32d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 388
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_333
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_323

    .line 392
    .restart local v8       #_result:Z
    :cond_335
    const/4 v0, 0x0

    goto :goto_32d

    .line 397
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_337
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35b

    .line 400
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 406
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_34a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35d

    const/4 v0, 0x1

    move v2, v0

    .line 407
    .restart local v2       #_arg1:Z
    :goto_352
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 403
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_35b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_34a

    .line 406
    :cond_35d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_352

    .line 413
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_360
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_383

    .line 416
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 421
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_373
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v8

    .line 422
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v8, :cond_385

    const/4 v0, 0x1

    :goto_37d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 419
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_383
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_373

    .line 423
    .restart local v8       #_result:Z
    :cond_385
    const/4 v0, 0x0

    goto :goto_37d

    .line 428
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_387
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3ab

    .line 431
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 437
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_39a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3ad

    const/4 v0, 0x1

    move v2, v0

    .line 438
    .restart local v2       #_arg1:Z
    :goto_3a2
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 434
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_3ab
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_39a

    .line 437
    :cond_3ad
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3a2

    .line 444
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3b0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d3

    .line 447
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 452
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3c3
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    .line 453
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v8, :cond_3d5

    const/4 v0, 0x1

    :goto_3cd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 450
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_3d3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c3

    .line 454
    .restart local v8       #_result:Z
    :cond_3d5
    const/4 v0, 0x0

    goto :goto_3cd

    .line 459
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_3d7
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3fb

    .line 462
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 468
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3fd

    const/4 v0, 0x1

    move v2, v0

    .line 469
    .restart local v2       #_arg1:Z
    :goto_3f2
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 465
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_3fb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3ea

    .line 468
    :cond_3fd
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3f2

    .line 475
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_400
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_423

    .line 478
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 483
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_413
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v8

    .line 484
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v8, :cond_425

    const/4 v0, 0x1

    :goto_41d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 481
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_423
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_413

    .line 485
    .restart local v8       #_result:Z
    :cond_425
    const/4 v0, 0x0

    goto :goto_41d

    .line 490
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_427
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44b

    .line 493
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 499
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_43a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44d

    const/4 v0, 0x1

    move v2, v0

    .line 500
    .restart local v2       #_arg1:Z
    :goto_442
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 496
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_44b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_43a

    .line 499
    :cond_44d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_442

    .line 506
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_450
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_473

    .line 509
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 514
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_463
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v8

    .line 515
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    if-eqz v8, :cond_475

    const/4 v0, 0x1

    :goto_46d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 512
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_473
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_463

    .line 516
    .restart local v8       #_result:Z
    :cond_475
    const/4 v0, 0x0

    goto :goto_46d

    .line 521
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_477
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49b

    .line 524
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 530
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_48a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49d

    const/4 v0, 0x1

    move v2, v0

    .line 531
    .restart local v2       #_arg1:Z
    :goto_492
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 527
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_49b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_48a

    .line 530
    :cond_49d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_492

    .line 537
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_4a0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c3

    .line 540
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 545
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4b3
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v8

    .line 546
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v8, :cond_4c5

    const/4 v0, 0x1

    :goto_4bd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 543
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_4c3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4b3

    .line 547
    .restart local v8       #_result:Z
    :cond_4c5
    const/4 v0, 0x0

    goto :goto_4bd

    .line 552
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_4c7
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4eb

    .line 555
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 561
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4ed

    const/4 v0, 0x1

    move v2, v0

    .line 562
    .restart local v2       #_arg1:Z
    :goto_4e2
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 558
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_4eb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4da

    .line 561
    :cond_4ed
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4e2

    .line 568
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_4f0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_513

    .line 571
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 576
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_503
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v8

    .line 577
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v8, :cond_515

    const/4 v0, 0x1

    :goto_50d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 574
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_513
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_503

    .line 578
    .restart local v8       #_result:Z
    :cond_515
    const/4 v0, 0x0

    goto :goto_50d

    .line 583
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_517
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53b

    .line 586
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 592
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_52a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53d

    const/4 v0, 0x1

    move v2, v0

    .line 593
    .restart local v2       #_arg1:Z
    :goto_532
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 589
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_53b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_52a

    .line 592
    :cond_53d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_532

    .line 599
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_540
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_563

    .line 602
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 607
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_553
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v8

    .line 608
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v8, :cond_565

    const/4 v0, 0x1

    :goto_55d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 605
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_563
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_553

    .line 609
    .restart local v8       #_result:Z
    :cond_565
    const/4 v0, 0x0

    goto :goto_55d

    .line 614
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_567
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58b

    .line 617
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 623
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_57a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58d

    const/4 v0, 0x1

    move v2, v0

    .line 624
    .restart local v2       #_arg1:Z
    :goto_582
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 620
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_58b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_57a

    .line 623
    :cond_58d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_582

    .line 630
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_590
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b3

    .line 633
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 638
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5a3
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z

    move-result v8

    .line 639
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v8, :cond_5b5

    const/4 v0, 0x1

    :goto_5ad
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 636
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_5b3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5a3

    .line 640
    .restart local v8       #_result:Z
    :cond_5b5
    const/4 v0, 0x0

    goto :goto_5ad

    .line 645
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_5b7
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d7

    .line 648
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 654
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 655
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 651
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_5d7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5ca

    .line 661
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5d9
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f9

    .line 664
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 669
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5ec
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    .line 670
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 667
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_5f9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5ec

    .line 676
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5fb
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61b

    .line 679
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 685
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_60e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 682
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_61b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_60e

    .line 692
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_61d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63d

    .line 695
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 700
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_630
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v8

    .line 701
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 698
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_63d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_630

    .line 707
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_63f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65f

    .line 710
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 716
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxCalendarAge(Landroid/content/ComponentName;I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 713
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_65f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_652

    .line 723
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_661
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_681

    .line 726
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 731
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_674
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v8

    .line 732
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 729
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_681
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_674

    .line 738
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_683
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a3

    .line 741
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 747
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 748
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailAge(Landroid/content/ComponentName;I)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 744
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_6a3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_696

    .line 754
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_6a5
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c5

    .line 757
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 762
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6b8
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v8

    .line 763
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 760
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_6c5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6b8

    .line 769
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_6c7
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e7

    .line 772
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 778
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 775
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_6e7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6da

    .line 785
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_6e9
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_709

    .line 788
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 793
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6fc
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v8

    .line 794
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 791
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_709
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6fc

    .line 800
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_70b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72b

    .line 803
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 809
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_71e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 810
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 806
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_72b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_71e

    .line 816
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_72d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74d

    .line 819
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 824
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_740
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v8

    .line 825
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 822
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_74d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_740

    .line 831
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_74f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_773

    .line 834
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 840
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_775

    const/4 v0, 0x1

    move v2, v0

    .line 841
    .local v2, _arg1:Z
    :goto_76a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 837
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_773
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_762

    .line 840
    :cond_775
    const/4 v0, 0x0

    move v2, v0

    goto :goto_76a

    .line 847
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_778
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79b

    .line 850
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 855
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_78b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v8

    .line 856
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    if-eqz v8, :cond_79d

    const/4 v0, 0x1

    :goto_795
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 853
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_79b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_78b

    .line 857
    .restart local v8       #_result:Z
    :cond_79d
    const/4 v0, 0x0

    goto :goto_795

    .line 862
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_79f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c3

    .line 865
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 871
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_7b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c5

    const/4 v0, 0x1

    move v2, v0

    .line 872
    .restart local v2       #_arg1:Z
    :goto_7ba
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 868
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_7c3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7b2

    .line 871
    :cond_7c5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_7ba

    .line 878
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_7c8
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7eb

    .line 881
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 886
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_7db
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v8

    .line 887
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v8, :cond_7ed

    const/4 v0, 0x1

    :goto_7e5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 884
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_7eb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7db

    .line 888
    .restart local v8       #_result:Z
    :cond_7ed
    const/4 v0, 0x0

    goto :goto_7e5

    .line 893
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_7ef
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_813

    .line 896
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 902
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_815

    const/4 v0, 0x1

    move v2, v0

    .line 903
    .restart local v2       #_arg1:Z
    :goto_80a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 899
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_813
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_802

    .line 902
    :cond_815
    const/4 v0, 0x0

    move v2, v0

    goto :goto_80a

    .line 909
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_818
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83b

    .line 912
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 917
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_82b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v8

    .line 918
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v8, :cond_83d

    const/4 v0, 0x1

    :goto_835
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 915
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_83b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_82b

    .line 919
    .restart local v8       #_result:Z
    :cond_83d
    const/4 v0, 0x0

    goto :goto_835

    .line 924
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_83f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_863

    .line 927
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 933
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_865

    const/4 v0, 0x1

    move v2, v0

    .line 934
    .restart local v2       #_arg1:Z
    :goto_85a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    .line 935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 930
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_863
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_852

    .line 933
    :cond_865
    const/4 v0, 0x0

    move v2, v0

    goto :goto_85a

    .line 940
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_868
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_88b

    .line 943
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 948
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_87b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v8

    .line 949
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v8, :cond_88d

    const/4 v0, 0x1

    :goto_885
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 946
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_88b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_87b

    .line 950
    .restart local v8       #_result:Z
    :cond_88d
    const/4 v0, 0x0

    goto :goto_885

    .line 955
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_88f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8b3

    .line 958
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 964
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_8a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8b5

    const/4 v0, 0x1

    move v2, v0

    .line 965
    .restart local v2       #_arg1:Z
    :goto_8aa
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 961
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_8b3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_8a2

    .line 964
    :cond_8b5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_8aa

    .line 971
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_8b8
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8db

    .line 974
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 979
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_8cb
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z

    move-result v8

    .line 980
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v8, :cond_8dd

    const/4 v0, 0x1

    :goto_8d5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 977
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_8db
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_8cb

    .line 981
    .restart local v8       #_result:Z
    :cond_8dd
    const/4 v0, 0x0

    goto :goto_8d5

    .line 986
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_8df
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_903

    .line 989
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 995
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_8f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_905

    const/4 v0, 0x1

    move v2, v0

    .line 996
    .restart local v2       #_arg1:Z
    :goto_8fa
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 992
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_903
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_8f2

    .line 995
    :cond_905
    const/4 v0, 0x0

    move v2, v0

    goto :goto_8fa

    .line 1002
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_908
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_92b

    .line 1005
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1010
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_91b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1011
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    if-eqz v8, :cond_92d

    const/4 v0, 0x1

    :goto_925
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1008
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_92b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_91b

    .line 1012
    .restart local v8       #_result:Z
    :cond_92d
    const/4 v0, 0x0

    goto :goto_925

    .line 1017
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_92f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_953

    .line 1020
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1026
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_955

    const/4 v0, 0x1

    move v2, v0

    .line 1027
    .restart local v2       #_arg1:Z
    :goto_94a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V

    .line 1028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1023
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_953
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_942

    .line 1026
    :cond_955
    const/4 v0, 0x0

    move v2, v0

    goto :goto_94a

    .line 1033
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_958
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97b

    .line 1036
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1041
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_96b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1042
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v8, :cond_97d

    const/4 v0, 0x1

    :goto_975
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1039
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_97b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_96b

    .line 1043
    .restart local v8       #_result:Z
    :cond_97d
    const/4 v0, 0x0

    goto :goto_975

    .line 1048
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_97f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9a3

    .line 1051
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1057
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9a5

    const/4 v0, 0x1

    move v2, v0

    .line 1058
    .restart local v2       #_arg1:Z
    :goto_99a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1054
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_9a3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_992

    .line 1057
    :cond_9a5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_99a

    .line 1064
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_9a8
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9cb

    .line 1067
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1072
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_9bb
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1073
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    if-eqz v8, :cond_9cd

    const/4 v0, 0x1

    :goto_9c5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1070
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_9cb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_9bb

    .line 1074
    .restart local v8       #_result:Z
    :cond_9cd
    const/4 v0, 0x0

    goto :goto_9c5

    .line 1079
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_9cf
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9f3

    .line 1082
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1088
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_9e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9f5

    const/4 v0, 0x1

    move v2, v0

    .line 1089
    .restart local v2       #_arg1:Z
    :goto_9ea
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1085
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_9f3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_9e2

    .line 1088
    :cond_9f5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_9ea

    .line 1095
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_9f8
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a1b

    .line 1098
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1103
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_a0b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1104
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    if-eqz v8, :cond_a1d

    const/4 v0, 0x1

    :goto_a15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1101
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_a1b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_a0b

    .line 1105
    .restart local v8       #_result:Z
    :cond_a1d
    const/4 v0, 0x0

    goto :goto_a15

    .line 1110
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_a1f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a43

    .line 1113
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1119
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_a32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a45

    const/4 v0, 0x1

    move v2, v0

    .line 1120
    .restart local v2       #_arg1:Z
    :goto_a3a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1116
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_a43
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_a32

    .line 1119
    :cond_a45
    const/4 v0, 0x0

    move v2, v0

    goto :goto_a3a

    .line 1126
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_a48
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a6b

    .line 1129
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1134
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_a5b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1135
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    if-eqz v8, :cond_a6d

    const/4 v0, 0x1

    :goto_a65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1132
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_a6b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_a5b

    .line 1136
    .restart local v8       #_result:Z
    :cond_a6d
    const/4 v0, 0x0

    goto :goto_a65

    .line 1141
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_a6f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1148
    :sswitch_a7d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1151
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1157
    .end local v1           #_arg0:I
    :sswitch_a8f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_aab

    .line 1160
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1165
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_aa2
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1163
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_aab
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_aa2

    .line 1171
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_aad
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ad0

    .line 1174
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1179
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_ac0
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1180
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    if-eqz v8, :cond_ad2

    const/4 v0, 0x1

    :goto_aca
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1177
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_ad0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_ac0

    .line 1181
    .restart local v8       #_result:Z
    :cond_ad2
    const/4 v0, 0x0

    goto :goto_aca

    .line 1186
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_ad4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v10

    .line 1188
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1190
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1194
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_ae6
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v8

    .line 1198
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    if-eqz v8, :cond_aff

    const/4 v0, 0x1

    :goto_af9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1199
    :cond_aff
    const/4 v0, 0x0

    goto :goto_af9

    .line 1204
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_b01
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b2b

    .line 1207
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1213
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_b14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b2d

    .line 1214
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 1219
    .local v2, _arg1:Landroid/os/RemoteCallback;
    :goto_b22
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1210
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :cond_b2b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b14

    .line 1217
    :cond_b2d
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_b22

    .line 1225
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_b2f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b4b

    .line 1228
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1233
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_b42
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1231
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_b4b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b42

    .line 1239
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_b4d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->recoverPassword()V

    .line 1241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1246
    :sswitch_b5b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b7f

    .line 1249
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1255
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_b6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b81

    const/4 v0, 0x1

    move v2, v0

    .line 1256
    .local v2, _arg1:Z
    :goto_b76
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1252
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_b7f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b6e

    .line 1255
    :cond_b81
    const/4 v0, 0x0

    move v2, v0

    goto :goto_b76

    .line 1262
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_b84
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1266
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1268
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1270
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_baf

    const/4 v0, 0x1

    move v4, v0

    .line 1272
    .local v4, _arg3:Z
    :goto_b9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bb2

    const/4 v0, 0x1

    move v5, v0

    .local v5, _arg4:Z
    :goto_ba5
    move-object v0, p0

    .line 1273
    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIZZ)V

    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1270
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    :cond_baf
    const/4 v0, 0x0

    move v4, v0

    goto :goto_b9d

    .line 1272
    .restart local v4       #_arg3:Z
    :cond_bb2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_ba5

    .line 1279
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    :sswitch_bb5
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1286
    :sswitch_bc3
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    .line 1288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1293
    :sswitch_bd1
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bf5

    .line 1296
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1302
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_be4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bf7

    const/4 v0, 0x1

    move v2, v0

    .line 1303
    .local v2, _arg1:Z
    :goto_bec
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1299
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_bf5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_be4

    .line 1302
    :cond_bf7
    const/4 v0, 0x0

    move v2, v0

    goto :goto_bec

    .line 1309
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_bfa
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c16

    .line 1312
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1317
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_c0d
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 1318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1315
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_c16
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_c0d

    .line 1323
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_c18
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1326
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1332
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_c2a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c4a

    .line 1335
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1340
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_c3d
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    .line 1341
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1343
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1338
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Ljava/lang/String;
    :cond_c4a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_c3d

    .line 1347
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_c4c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c6c

    .line 1350
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1355
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_c5f
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    .line 1356
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1353
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Ljava/lang/String;
    :cond_c6c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_c5f

    .line 1362
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_c6e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c91

    .line 1365
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1370
    .local v1, _arg0:Landroid/content/Intent;
    :goto_c81
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z

    move-result v8

    .line 1371
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    if-eqz v8, :cond_c93

    const/4 v0, 0x1

    :goto_c8b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1368
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v8           #_result:Z
    :cond_c91
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_c81

    .line 1372
    .restart local v8       #_result:Z
    :cond_c93
    const/4 v0, 0x0

    goto :goto_c8b

    .line 42
    nop

    :sswitch_data_c96
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_30
        0x3 -> :sswitch_51
        0x4 -> :sswitch_72
        0x5 -> :sswitch_94
        0x6 -> :sswitch_ab
        0x7 -> :sswitch_c2
        0x8 -> :sswitch_d4
        0x9 -> :sswitch_f6
        0xa -> :sswitch_118
        0xb -> :sswitch_137
        0xc -> :sswitch_159
        0xd -> :sswitch_17b
        0xe -> :sswitch_1a4
        0xf -> :sswitch_1cb
        0x10 -> :sswitch_1ed
        0x11 -> :sswitch_20f
        0x12 -> :sswitch_231
        0x13 -> :sswitch_253
        0x14 -> :sswitch_27c
        0x15 -> :sswitch_2a3
        0x16 -> :sswitch_2c5
        0x17 -> :sswitch_2e7
        0x18 -> :sswitch_310
        0x19 -> :sswitch_337
        0x1a -> :sswitch_360
        0x1b -> :sswitch_387
        0x1c -> :sswitch_3b0
        0x1d -> :sswitch_3d7
        0x1e -> :sswitch_400
        0x1f -> :sswitch_427
        0x20 -> :sswitch_450
        0x21 -> :sswitch_477
        0x22 -> :sswitch_4a0
        0x23 -> :sswitch_4c7
        0x24 -> :sswitch_4f0
        0x25 -> :sswitch_517
        0x26 -> :sswitch_540
        0x27 -> :sswitch_567
        0x28 -> :sswitch_590
        0x29 -> :sswitch_5b7
        0x2a -> :sswitch_5d9
        0x2b -> :sswitch_5fb
        0x2c -> :sswitch_61d
        0x2d -> :sswitch_63f
        0x2e -> :sswitch_661
        0x2f -> :sswitch_683
        0x30 -> :sswitch_6a5
        0x31 -> :sswitch_6c7
        0x32 -> :sswitch_6e9
        0x33 -> :sswitch_70b
        0x34 -> :sswitch_72d
        0x35 -> :sswitch_74f
        0x36 -> :sswitch_778
        0x37 -> :sswitch_79f
        0x38 -> :sswitch_7c8
        0x39 -> :sswitch_7ef
        0x3a -> :sswitch_818
        0x3b -> :sswitch_83f
        0x3c -> :sswitch_868
        0x3d -> :sswitch_88f
        0x3e -> :sswitch_8b8
        0x3f -> :sswitch_8df
        0x40 -> :sswitch_908
        0x41 -> :sswitch_92f
        0x42 -> :sswitch_958
        0x43 -> :sswitch_97f
        0x44 -> :sswitch_9a8
        0x45 -> :sswitch_9cf
        0x46 -> :sswitch_9f8
        0x47 -> :sswitch_a1f
        0x48 -> :sswitch_a48
        0x49 -> :sswitch_a6f
        0x4a -> :sswitch_a7d
        0x4b -> :sswitch_a8f
        0x4c -> :sswitch_aad
        0x4d -> :sswitch_ad4
        0x4e -> :sswitch_ae6
        0x4f -> :sswitch_b01
        0x50 -> :sswitch_b2f
        0x51 -> :sswitch_b4d
        0x52 -> :sswitch_b5b
        0x53 -> :sswitch_b84
        0x54 -> :sswitch_bb5
        0x55 -> :sswitch_bc3
        0x56 -> :sswitch_bd1
        0x57 -> :sswitch_bfa
        0x58 -> :sswitch_c18
        0x59 -> :sswitch_c2a
        0x5a -> :sswitch_c4c
        0x5b -> :sswitch_c6e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
