.class public Landroid/deviceencryption/DeviceEncryptionManager;
.super Ljava/lang/Object;
.source "DeviceEncryptionManager.java"


# static fields
.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_FORMAT:I = 0x20

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REBOOT:I = 0x40

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REINSERT:I = 0x60

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ENABLE_POLICY:I = 0x2

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ERROR:I = 0x10

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_FIRST_STORAGE:I = 0x0

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_SECOND_STORAGE:I = 0x1

.field public static final DECRYPT:I = 0x0

.field public static final ECRYPT_ACTIVITY_POPUP_INTENT_NAME:Ljava/lang/String; = "encyprt_activity_popuptype"

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_BATCH:I = 0x40

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_MAPPING:I = 0x50

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_SHARED_BIT:I = 0x8

.field public static final ENCRYPT:I = 0x1

.field public static final ENCRYPT_ACTION:Ljava/lang/String; = "com.sec.android.app.encrypt.action.ENCRYPT"

.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final EXTERNAL_STORAGE:I = 0x0

.field public static final EXT_POLICY_STATUS_BIT_ENC:I = 0x4

.field public static final EXT_STATUS_BIT_COMP:I = 0x1

.field public static final EXT_STATUS_BIT_DECB:I = 0x2

.field public static final EXT_STATUS_BIT_ENCB:I = 0x3

.field public static final EXT_STATUS_BIT_NULL:I = 0x0

.field public static final INTERNAL:Ljava/lang/String; = "internal"

.field public static final INTERNAL_EXTERNAL:Ljava/lang/String; = "internal:external"

.field public static final INTERNAL_STORAGE:I = 0x1

.field private static final LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object; = null

.field private static final NORMAL_PASSWORD:I = 0x0

.field public static final POLICY_APPLIED:Ljava/lang/String; = "com.sec.android.app.encrypt.action.POLICY_APPLIED"

.field private static final RECOVERY_PASSWORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceEncryption"

.field public static final WHOLE_STORAGE:I = 0x2

.field private static final debug:Z

.field public static final enabled:Ljava/lang/String;

.field private static isFirstboot:Z

.field public static m_InstEncSvc:Landroid/os/storage/IEncryptService;

.field public static final supportFileLevelEncryption:Ljava/lang/String;

.field private static token:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "false"

    .line 22
    const-string/jumbo v0, "ro.secdevenc"

    const-string v1, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "ro.file_level_encryption"

    const-string v1, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager$1;

    invoke-direct {v0}, Landroid/deviceencryption/DeviceEncryptionManager$1;-><init>()V

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    .line 72
    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 77
    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Landroid/deviceencryption/DeviceEncryptionManager;->isFirstboot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public static checkPassword(Ljava/lang/String;)Z
    .registers 7
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    const-string v5, "DeviceEncryption"

    .line 269
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v4

    .line 305
    :goto_f
    return v2

    .line 271
    :cond_10
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1b

    :cond_19
    move v2, v4

    .line 272
    goto :goto_f

    .line 275
    :cond_1b
    const/4 v1, 0x0

    .line 276
    .local v1, ret:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    .line 277
    const/4 v3, 0x0

    :try_start_20
    invoke-static {p0, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->verifyPassword(Ljava/lang/String;I)Z

    move-result v1

    .line 278
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_46

    .line 280
    if-eqz v1, :cond_29

    .line 281
    sput-object p0, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    .line 285
    :cond_29
    if-eqz v1, :cond_44

    .line 289
    :try_start_2b
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v2, :cond_3b

    .line 290
    const-string v2, "encrypt"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v2

    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 293
    :cond_3b
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v2, :cond_49

    .line 294
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v2, p0}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_44} :catch_51

    :cond_44
    :goto_44
    move v2, v1

    .line 305
    goto :goto_f

    .line 278
    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v3

    .line 296
    :cond_49
    :try_start_49
    const-string v2, "DeviceEncryption"

    const-string v3, "checkPassword : IEncryptService instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_44

    .line 298
    :catch_51
    move-exception v2

    move-object v0, v2

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceEncryption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkPassword : exception =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method private static native getBatchStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCryptBatchStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "label"

    .prologue
    .line 402
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 413
    :goto_c
    return-object v1

    .line 408
    :cond_d
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_10
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getBatchStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    .line 413
    goto :goto_c

    .line 410
    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v2
.end method

.method public static getExternalStorageStatus()Z
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v3

    .line 235
    :goto_e
    return v1

    .line 226
    :cond_f
    const-string/jumbo v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1a

    move v1, v3

    .line 229
    goto :goto_e

    .line 232
    :cond_1a
    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_24

    move v1, v4

    .line 233
    goto :goto_e

    :cond_24
    move v1, v3

    .line 235
    goto :goto_e
.end method

.method public static getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "label"

    .prologue
    .line 418
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 429
    :goto_c
    return-object v1

    .line 424
    :cond_d
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_10
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    .line 429
    goto :goto_c

    .line 426
    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private static native getFileProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getInternalStorageStatus()Z
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v3

    .line 213
    :goto_e
    return v1

    .line 204
    :cond_f
    const-string/jumbo v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1a

    move v1, v3

    .line 207
    goto :goto_e

    .line 210
    :cond_1a
    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_24

    move v1, v4

    .line 211
    goto :goto_e

    :cond_24
    move v1, v3

    .line 213
    goto :goto_e
.end method

.method public static getSaltFilePath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 447
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getSaltPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getSaltPath()Ljava/lang/String;
.end method

.method public static isDeviceEncryptionEnabled()Z
    .registers 2

    .prologue
    .line 248
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFileEncryptionEnabled()Z
    .registers 2

    .prologue
    .line 261
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLockPasswordEnabled()Z
    .registers 3

    .prologue
    .line 370
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 380
    :goto_c
    return v1

    .line 371
    :cond_d
    const/4 v0, 0x0

    .line 374
    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_11
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isPasswordEnabled()Z

    move-result v0

    .line 376
    monitor-exit v1

    move v1, v0

    .line 380
    goto :goto_c

    .line 376
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method private static native isPasswordEnabled()Z
.end method

.method public static isPasswordRequired()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 363
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 365
    :goto_e
    return v0

    .line 364
    :cond_f
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    if-ne v0, v2, :cond_1d

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1d

    move v0, v2

    goto :goto_e

    :cond_1d
    move v0, v3

    .line 365
    goto :goto_e
.end method

.method private static native recoverPassword(Ljava/lang/String;)Z
.end method

.method private static native removeEDK_P()V
.end method

.method public static removeKeyByForce()V
    .registers 2

    .prologue
    .line 451
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 453
    :goto_b
    return-void

    .line 452
    :cond_c
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->removeEDK_P()V

    goto :goto_b
.end method

.method public static resetPassword(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .parameter "password"
    .parameter "obj"

    .prologue
    .line 384
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 397
    :goto_c
    return v1

    .line 385
    :cond_d
    const/4 v0, 0x0

    .line 388
    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_11
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->recoverPassword(Ljava/lang/String;)Z

    move-result v0

    .line 390
    monitor-exit v1

    .line 392
    if-eqz p1, :cond_18

    :cond_18
    move v1, v0

    .line 397
    goto :goto_c

    .line 390
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public static saveLockPassword(Ljava/lang/String;)Z
    .registers 6
    .parameter "password"

    .prologue
    const/4 v3, 0x0

    const-string v4, "DeviceEncryption"

    .line 309
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v3

    .line 345
    :goto_f
    return v1

    .line 314
    :cond_10
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_13
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->savePassword(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 316
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_4a

    .line 321
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_75

    .line 325
    :cond_22
    :try_start_22
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v1, :cond_32

    .line 326
    const-string v1, "encrypt"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v1

    sput-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 328
    :cond_32
    const-string v1, "DeviceEncryption"

    const-string/jumbo v2, "saveLockPassword : IEncryptService : setPassword!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v1, :cond_4d

    .line 331
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    const-string v2, ""

    invoke-interface {v1, v2}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_45} :catch_56

    .line 341
    :goto_45
    const/4 v1, 0x0

    sput-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    .line 345
    :goto_48
    const/4 v1, 0x1

    goto :goto_f

    .line 316
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2

    .line 333
    :cond_4d
    :try_start_4d
    const-string v1, "DeviceEncryption"

    const-string/jumbo v2, "saveLockPassword : IEncryptService instance is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_45

    .line 335
    :catch_56
    move-exception v1

    move-object v0, v1

    .line 337
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeviceEncryption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " saveLockPassword : exception =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :cond_75
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    goto :goto_48
.end method

.method private static native savePassword(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static saveRecoveryPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "newPassword"
    .parameter "lockPassword"

    .prologue
    const/4 v2, 0x1

    .line 349
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 358
    :goto_d
    return v0

    .line 354
    :cond_e
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    const/4 v1, 0x1

    :try_start_12
    invoke-static {p1, p0, v1}, Landroid/deviceencryption/DeviceEncryptionManager;->savePassword(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 356
    monitor-exit v0

    move v0, v2

    .line 358
    goto :goto_d

    .line 356
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static saveToken(Ljava/lang/String;)V
    .registers 1
    .parameter "password"

    .prologue
    .line 265
    sput-object p0, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    .line 266
    return-void
.end method

.method private setEncryptPolicyInternal(IIZ)V
    .registers 10
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    .line 160
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 192
    :cond_c
    :goto_c
    return-void

    .line 162
    :cond_d
    const-string v1, ""

    .line 164
    .local v1, cmd:Ljava/lang/String;
    if-ne p1, v5, :cond_55

    if-ne p2, v5, :cond_55

    .line 165
    const-string v1, "internal:external"

    .line 172
    :cond_15
    :goto_15
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.encrypt.action.ENCRYPT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v3, "cmd"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v3, "force"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    const-string v3, "com.sec.android.app.encrypt"

    const-string v4, "com.sec.android.app.encrypt.DeviceEncryptionActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 181
    .local v0, DPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_47

    .line 182
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z

    move-result v3

    if-eq v3, v5, :cond_c

    .line 189
    :cond_47
    const-string v3, "DeviceEncryption"

    const-string/jumbo v4, "setEncryptPolicyInternal for system application"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 166
    .end local v0           #DPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_55
    if-ne p1, v5, :cond_5a

    .line 167
    const-string v1, "internal"

    goto :goto_15

    .line 168
    :cond_5a
    if-ne p2, v5, :cond_15

    .line 169
    const-string v1, "external"

    goto :goto_15
.end method

.method public static setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "label"
    .parameter "value"

    .prologue
    .line 433
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 443
    :goto_c
    return v1

    .line 434
    :cond_d
    const/4 v0, 0x0

    .line 439
    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_11
    invoke-static {p0, p1}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 441
    monitor-exit v1

    move v1, v0

    .line 443
    goto :goto_c

    .line 441
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method private static native setFileProperty(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native verifyPassword(Ljava/lang/String;I)Z
.end method


# virtual methods
.method public setEncryptPolicy(II)V
    .registers 8
    .parameter "which"
    .parameter "policy"

    .prologue
    const/4 v4, 0x1

    .line 104
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 126
    :cond_c
    :goto_c
    return-void

    .line 106
    :cond_d
    const/4 v1, 0x0

    .local v1, internal:I
    const/4 v0, 0x0

    .line 108
    .local v0, external:I
    if-eq p2, v4, :cond_13

    if-nez p2, :cond_c

    .line 110
    :cond_13
    if-nez p1, :cond_22

    .line 111
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_1c

    .line 112
    const/4 v1, 0x1

    .line 114
    :cond_1c
    move v0, p2

    .line 125
    :cond_1d
    :goto_1d
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    goto :goto_c

    .line 115
    :cond_22
    if-ne p1, v4, :cond_2d

    .line 116
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_2b

    .line 117
    const/4 v0, 0x1

    .line 119
    :cond_2b
    move v1, p2

    goto :goto_1d

    .line 120
    :cond_2d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 121
    move v1, p2

    .line 122
    move v0, p2

    goto :goto_1d
.end method

.method public setEncryptionPolicy(II)V
    .registers 4
    .parameter "internal"
    .parameter "external"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    .line 138
    return-void
.end method

.method public setEncryptionPolicy(IIZ)V
    .registers 4
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    .line 157
    return-void
.end method
