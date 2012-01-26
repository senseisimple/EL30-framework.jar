.class public Landroid/app/enterprise/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/enterprise/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "MiscPolicy"

    sput-object v0, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    .line 30
    return-void
.end method


# virtual methods
.method public addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 46
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 48
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 54
    :cond_9
    :goto_9
    return-void

    .line 50
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 7
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    .line 34
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 36
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 42
    :cond_9
    :goto_9
    return-void

    .line 38
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 39
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 8
    .parameter "emailId"
    .parameter "accountType"
    .parameter "url"
    .parameter "displayName"

    .prologue
    .line 58
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 60
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IMiscPolicy;->addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 66
    :goto_a
    return v1

    .line 62
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public formatInternalStorage(ZZ)Z
    .registers 6
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 341
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 343
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 349
    :goto_a
    return v1

    .line 345
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 312
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 314
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 319
    :goto_a
    return-object v1

    .line 315
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 316
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public formatStorageCard(Z)Z
    .registers 5
    .parameter "isExternal"

    .prologue
    .line 361
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 363
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->formatStorageCard(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 368
    :goto_a
    return v1

    .line 364
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledCertiFicateList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 109
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getInstalledCertiFicateList()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 114
    :goto_a
    return-object v1

    .line 110
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .registers 6
    .parameter "type"
    .parameter "value"

    .prologue
    .line 76
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 78
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 83
    :cond_9
    :goto_9
    return-void

    .line 79
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public installCertificatesFromSdCard()V
    .registers 4

    .prologue
    .line 89
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 91
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->installCertificatesFromSdCard()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 96
    :cond_9
    :goto_9
    return-void

    .line 92
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 8
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    .line 180
    const/4 v1, 0x1

    .line 182
    .local v1, enabled:Z
    :try_start_2
    iget-object v3, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_15

    move-result v2

    .line 185
    .local v2, value:I
    if-ne v5, v2, :cond_12

    move v1, v5

    .line 189
    .end local v2           #value:I
    :goto_11
    return v1

    .line 185
    .restart local v2       #value:I
    :cond_12
    const/4 v3, 0x0

    move v1, v3

    goto :goto_11

    .line 186
    .end local v2           #value:I
    :catch_15
    move-exception v3

    move-object v0, v3

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public isCameraEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 218
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 220
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isCameraEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 225
    :goto_a
    return v1

    .line 221
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isExternalStorageEncrypted()Z
    .registers 4

    .prologue
    .line 427
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 429
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isExternalStorageEncrypted()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 434
    :goto_a
    return v1

    .line 430
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isInternalStorageEncrypted()Z
    .registers 4

    .prologue
    .line 411
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 413
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isInternalStorageEncrypted()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 418
    :goto_a
    return v1

    .line 414
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 415
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 254
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 256
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 261
    :goto_a
    return v1

    .line 257
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isWiFiEnabled(Z)Z
    .registers 8
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    .line 143
    const/4 v1, 0x1

    .line 145
    .local v1, enabled:Z
    :try_start_2
    iget-object v3, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_16

    move-result v2

    .line 147
    .local v2, value:I
    if-ne v5, v2, :cond_13

    move v1, v5

    .line 151
    .end local v2           #value:I
    :goto_12
    return v1

    .line 147
    .restart local v2       #value:I
    :cond_13
    const/4 v3, 0x0

    move v1, v3

    goto :goto_12

    .line 148
    .end local v2           #value:I
    :catch_16
    move-exception v3

    move-object v0, v3

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public setBluetoothState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 162
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 164
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setBluetooth(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 169
    :goto_a
    return v1

    .line 165
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setCameraState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 200
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 202
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setCamera(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 207
    :goto_a
    return v1

    .line 203
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setExternalStorageEncryption(Z)V
    .registers 5
    .parameter "isEncrypt"

    .prologue
    .line 396
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 398
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setExternalStorageEncryption(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 403
    :cond_9
    :goto_9
    return-void

    .line 399
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setInternalStorageEncryption(Z)V
    .registers 5
    .parameter "isEncrypt"

    .prologue
    .line 379
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 381
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setInternalStorageEncryption(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 386
    :cond_9
    :goto_9
    return-void

    .line 382
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 383
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMicrophoneState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 236
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 238
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setMicrophoneState(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 243
    :goto_a
    return v1

    .line 239
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setWiFiState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 125
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_14

    .line 127
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setWiFi(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 132
    :goto_a
    return v1

    .line 128
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public wipeDevice(I)Z
    .registers 8
    .parameter "flags"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, result:Z
    iget-object v3, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v3, :cond_1e

    .line 278
    const/4 v3, 0x2

    if-eq p1, v3, :cond_c

    if-ne p1, v5, :cond_10

    .line 280
    :cond_c
    const/4 v3, 0x1

    :try_start_d
    invoke-virtual {p0, v3}, Landroid/app/enterprise/MiscPolicy;->formatStorageCard(Z)Z

    .line 282
    :cond_10
    if-eq p1, v4, :cond_14

    if-ne p1, v5, :cond_1e

    .line 284
    :cond_14
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/enterprise/MiscPolicy;->formatStorageCard(Z)Z

    .line 285
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/app/enterprise/MiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_20

    move-result v1

    :cond_1e
    move v2, v1

    .line 292
    .end local v1           #result:Z
    .local v2, result:I
    :goto_1f
    return v2

    .line 287
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 288
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc info policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 289
    .restart local v2       #result:I
    goto :goto_1f
.end method
