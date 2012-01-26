.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final DOWNLOAD_DATA_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_PACKAGE_DIRECTORY:Ljava/io/File; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_EJECTING:Ljava/lang/String; = "ejecting"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_PENDING:Ljava/lang/String; = "pending"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final ROOT_DIRECTORY:Ljava/io/File; = null

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File; = null

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static final USBHOST_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

.field private static final USBHOST_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

.field private static final USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

.field private static mMntSvc:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const-string v8, "EXTERNAL_STORAGE"

    const-string v7, "/mnt/sdcard/usbStorage"

    const-string v6, "/mnt/sdcard/external_sd"

    const-string v5, "/mnt/sdcard"

    const-string v4, "Android"

    .line 34
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 88
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 94
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 98
    const-string v0, "EXTERNAL_STORAGE"

    const-string v0, "/mnt/sdcard"

    invoke-static {v8, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 101
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v8, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 104
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v8, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 109
    const-string v0, "EXTERNAL_STORAGE2"

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-static {v0, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    .line 112
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE2"

    const-string v3, "/mnt/sdcard/external_sd"

    invoke-static {v2, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE2"

    const-string v3, "/mnt/sdcard/external_sd"

    invoke-static {v2, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 120
    invoke-static {}, Landroid/os/Environment;->getStorageInstalledPackageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_PACKAGE_DIRECTORY:Ljava/io/File;

    .line 124
    const-string v0, "USBHOST_STORAGE"

    const-string v1, "/mnt/sdcard/usbStorage"

    invoke-static {v0, v7}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    .line 127
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "USBHOST_STORAGE"

    const-string v3, "/mnt/sdcard/usbStorage"

    invoke-static {v2, v7}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 130
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "USBHOST_STORAGE"

    const-string v3, "/mnt/sdcard/usbStorage"

    invoke-static {v2, v7}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 134
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 137
    const-string v0, "DOWNLOAD_DATA_CACHE"

    const-string v1, "/data/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_DATA_CACHE_DIRECTORY:Ljava/io/File;

    .line 211
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 223
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 235
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 247
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 259
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 267
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 275
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 285
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 292
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 492
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_PACKAGE_DIRECTORY:Ljava/io/File;

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/Environment;->STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDirectory()Ljava/io/File;
    .registers 1

    .prologue
    .line 144
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 547
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .registers 1

    .prologue
    .line 367
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getDownloadDataCacheDirectory()Ljava/io/File;
    .registers 1

    .prologue
    .line 374
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_DATA_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalMemoryStatus()Z
    .registers 3

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, statusExternal:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 585
    const/4 v0, 0x1

    .line 591
    :goto_e
    return v0

    .line 587
    :cond_f
    const-string/jumbo v1, "unmounted"

    goto :goto_e
.end method

.method public static getExternalStorageAndroidDataDir()Ljava/io/File;
    .registers 1

    .prologue
    .line 327
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "packageName"

    .prologue
    .line 359
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 335
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "packageName"

    .prologue
    .line 351
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 343
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .registers 1

    .prologue
    .line 186
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageDirectorySd()Ljava/io/File;
    .registers 2

    .prologue
    .line 189
    const-string v0, "Environment"

    const-string v1, "### getExternalStorageDirectorySd :: invalid call ... PLEASE CHECK IT. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageDirectoryUsbHost()Ljava/io/File;
    .registers 2

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 197
    sget-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    .line 200
    :goto_8
    return-object v0

    .line 199
    :cond_9
    const-string v0, "Environment"

    const-string v1, "getExternalStorageDirectoryUsbHost :: invalid call "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_8
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "type"

    .prologue
    .line 319
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 445
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_10

    .line 446
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 449
    :cond_10
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v1

    .line 451
    :goto_1e
    return-object v1

    .line 450
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 451
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_1e
.end method

.method public static getExternalStorageStateSd()Ljava/lang/String;
    .registers 4

    .prologue
    const-string/jumbo v3, "removed"

    .line 456
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 457
    const-string v1, "Environment"

    const-string v2, "### getExternalStorageStateSd :: invalid call ... PLEASE CHECK IT. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 468
    :goto_14
    return-object v1

    .line 462
    :cond_15
    :try_start_15
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_25

    .line 463
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 466
    :cond_25
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_34

    move-result-object v1

    goto :goto_14

    .line 467
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 468
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_14
.end method

.method public static getExternalStorageStateUsbHost()Ljava/lang/String;
    .registers 4

    .prologue
    const-string/jumbo v3, "removed"

    .line 474
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 475
    const-string v1, "Environment"

    const-string v2, "getExternalStorageStateUsbHost :: invalid call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 486
    :goto_14
    return-object v1

    .line 480
    :cond_15
    :try_start_15
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_25

    .line 481
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 484
    :cond_25
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_34

    move-result-object v1

    goto :goto_14

    .line 485
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 486
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_14
.end method

.method public static getInstalledStorageDirectory()[Ljava/io/File;
    .registers 1

    .prologue
    .line 495
    sget-object v0, Landroid/os/Environment;->STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File;

    return-object v0
.end method

.method public static getInstalledStorageState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "Directory"

    .prologue
    .line 500
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_10

    .line 501
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 504
    :cond_10
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v1

    .line 506
    :goto_16
    return-object v1

    .line 505
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 506
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_16
.end method

.method public static getInternalMemoryStatus()Z
    .registers 4

    .prologue
    .line 562
    const-string v2, "Environment"

    const-string v3, "### getInternalMemoryStatus :: invalid call ... PLEASE CHECK IT. "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, statusInternal:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 568
    const/4 v0, 0x1

    .line 574
    :goto_15
    return v0

    .line 570
    :cond_16
    const-string/jumbo v1, "unmounted"

    goto :goto_15
.end method

.method public static getRootDirectory()Ljava/io/File;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .registers 1

    .prologue
    .line 71
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 74
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_8
.end method

.method static getStorageInstalledPackageDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, path:Ljava/lang/String;
    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .registers 4

    .prologue
    const-string/jumbo v3, "system"

    .line 56
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .registers 2

    .prologue
    .line 85
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageFirstInsalled()Z
    .registers 2

    .prologue
    .line 532
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovable()Z
    .registers 2

    .prologue
    .line 518
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovableSd()Z
    .registers 2

    .prologue
    .line 523
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageSecondInsalled()Z
    .registers 2

    .prologue
    .line 537
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isUsbHostStorageInsalled()Z
    .registers 2

    .prologue
    .line 542
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
