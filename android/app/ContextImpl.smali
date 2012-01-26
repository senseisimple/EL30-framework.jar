.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$1;,
        Landroid/app/ContextImpl$SharedPreferencesImpl;,
        Landroid/app/ContextImpl$ApplicationPackageManager;,
        Landroid/app/ContextImpl$ApplicationContentResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ICONS:Z = false

.field private static final EMPTY_FILE_LIST:[Ljava/lang/String; = null

.field private static final PURE_NAND_DIRECTORY:Ljava/lang/String; = "/dbdata/databases/"

.field private static final TAG:Ljava/lang/String; = "ApplicationContext"

.field private static sAlarmManager:Landroid/app/AlarmManager;

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static sInstanceCount:J

.field private static sLocationManager:Landroid/location/LocationManager;

.field private static sPowerManager:Landroid/os/PowerManager;

.field private static final sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ContextImpl$SharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;

.field private static sThrottleManager:Landroid/net/ThrottleManager;

.field private static sWifiManager:Landroid/net/wifi/WifiManager;

.field private static sWimaxManager:Landroid/net/wimax/WimaxManager;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityToken:Landroid/os/IBinder;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheDir:Ljava/io/File;

.field private mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

.field private mClipboardManager:Landroid/text/ClipboardManager;

.field private mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private mDatabasesDir:Ljava/io/File;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDropBoxManager:Landroid/os/DropBoxManager;

.field private mExternalCacheDir:Ljava/io/File;

.field private mExternalFilesDir:Ljava/io/File;

.field private mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mFilesDir:Ljava/io/File;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mMainThread:Landroid/app/ActivityThread;

.field private mNfcManager:Landroid/nfc/NfcManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOuterContext:Landroid/content/Context;

.field mPackageInfo:Landroid/app/LoadedApk;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferencesDir:Ljava/io/File;

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private mResources:Landroid/content/res/Resources;

.field private mRestricted:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mSync:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    .line 235
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1692
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 197
    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 200
    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 202
    iput-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 203
    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 204
    iput-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 205
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 206
    iput-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    .line 207
    iput-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 208
    iput-object v1, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 209
    iput-object v1, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 210
    iput-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    .line 211
    iput-object v1, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 212
    iput-object v1, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 213
    iput-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 214
    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 216
    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 220
    iput-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 221
    iput-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 222
    iput-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    .line 223
    iput-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    .line 224
    iput-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 1695
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 1696
    return-void
.end method

.method public constructor <init>(Landroid/app/ContextImpl;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1704
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 197
    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 200
    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 202
    iput-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 203
    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 204
    iput-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 205
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 206
    iput-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    .line 207
    iput-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 208
    iput-object v1, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 209
    iput-object v1, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 210
    iput-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    .line 211
    iput-object v1, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 212
    iput-object v1, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 213
    iput-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 214
    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 216
    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 220
    iput-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 221
    iput-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 222
    iput-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    .line 223
    iput-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    .line 224
    iput-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 1705
    sget-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    .line 1706
    iget-object v0, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1707
    iget-object v0, p1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1708
    iget-object v0, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1709
    iget-object v0, p1, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 1710
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 1711
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-static {p0}, Landroid/app/ContextImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 174
    invoke-static {p0, p1, p2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    return-void
.end method

.method static createDropBoxManager()Landroid/os/DropBoxManager;
    .registers 3

    .prologue
    .line 1347
    const-string v2, "dropbox"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1348
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    move-result-object v1

    .line 1349
    .local v1, service:Lcom/android/internal/os/IDropBoxManagerService;
    new-instance v2, Landroid/os/DropBoxManager;

    invoke-direct {v2, v1}, Landroid/os/DropBoxManager;-><init>(Lcom/android/internal/os/IDropBoxManagerService;)V

    return-object v2
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .registers 3
    .parameter "mainThread"

    .prologue
    .line 1687
    new-instance v0, Landroid/app/ContextImpl;

    invoke-direct {v0}, Landroid/app/ContextImpl;-><init>()V

    .line 1688
    .local v0, context:Landroid/app/ContextImpl;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/ContextImpl;->init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V

    .line 1689
    return-object v0
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 10
    .parameter "permission"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "message"

    .prologue
    .line 1445
    if-eqz p2, :cond_70

    .line 1446
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    const-string v2, ""

    goto :goto_1e

    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1454
    :cond_70
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .parameter "modeFlags"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "uri"
    .parameter "message"

    .prologue
    .line 1577
    if-eqz p2, :cond_7e

    .line 1578
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    const-string v2, ""

    goto :goto_1e

    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1588
    :cond_7e
    return-void
.end method

.method private getAccountManager()Landroid/accounts/AccountManager;
    .registers 5

    .prologue
    .line 1132
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1133
    :try_start_3
    iget-object v3, p0, Landroid/app/ContextImpl;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v3, :cond_18

    .line 1134
    const-string v3, "account"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1135
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v1

    .line 1136
    .local v1, service:Landroid/accounts/IAccountManager;
    new-instance v3, Landroid/accounts/AccountManager;

    invoke-direct {v3, p0, v1}, Landroid/accounts/AccountManager;-><init>(Landroid/content/Context;Landroid/accounts/IAccountManager;)V

    iput-object v3, p0, Landroid/app/ContextImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1138
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/accounts/IAccountManager;
    :cond_18
    iget-object v3, p0, Landroid/app/ContextImpl;->mAccountManager:Landroid/accounts/AccountManager;

    monitor-exit v2

    return-object v3

    .line 1139
    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method private getActivityManager()Landroid/app/ActivityManager;
    .registers 5

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_18

    .line 1145
    new-instance v1, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/ActivityManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 1148
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1149
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0

    .line 1148
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 5

    .prologue
    .line 1153
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1154
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v3, :cond_18

    .line 1155
    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1156
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v1

    .line 1157
    .local v1, service:Landroid/app/IAlarmManager;
    new-instance v3, Landroid/app/AlarmManager;

    invoke-direct {v3, v1}, Landroid/app/AlarmManager;-><init>(Landroid/app/IAlarmManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sAlarmManager:Landroid/app/AlarmManager;

    .line 1159
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/app/IAlarmManager;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1160
    sget-object v2, Landroid/app/ContextImpl;->sAlarmManager:Landroid/app/AlarmManager;

    return-object v2

    .line 1159
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/app/ContextImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_b

    .line 1341
    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 1343
    :cond_b
    iget-object v0, p0, Landroid/app/ContextImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;
    .registers 5

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1267
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v1, :cond_18

    .line 1268
    new-instance v1, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 1271
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1272
    iget-object v0, p0, Landroid/app/ContextImpl;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0

    .line 1271
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getClipboardManager()Landroid/text/ClipboardManager;
    .registers 5

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    if-nez v1, :cond_18

    .line 1257
    new-instance v1, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/text/ClipboardManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 1260
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1261
    iget-object v0, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    return-object v0

    .line 1260
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 5

    .prologue
    .line 1176
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1177
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_18

    .line 1178
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1179
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 1180
    .local v1, service:Landroid/net/IConnectivityManager;
    new-instance v3, Landroid/net/ConnectivityManager;

    invoke-direct {v3, v1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1182
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/IConnectivityManager;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1183
    sget-object v2, Landroid/app/ContextImpl;->sConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v2

    .line 1182
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method private getDataDirFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 1654
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 1655
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1657
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .registers 5

    .prologue
    const-string v0, "databases"

    .line 670
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_5
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_16

    .line 686
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 689
    :cond_16
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "databases"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 690
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 692
    :cond_2d
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 693
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1363
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_13

    .line 1364
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/app/admin/DevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1367
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1368
    iget-object v0, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0

    .line 1367
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private getDownloadManager()Landroid/app/DownloadManager;
    .registers 5

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    if-nez v1, :cond_16

    .line 1383
    new-instance v1, Landroid/app/DownloadManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/DownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    .line 1385
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1a

    .line 1386
    iget-object v0, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0

    .line 1385
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private getDropBoxManager()Landroid/os/DropBoxManager;
    .registers 3

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1354
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-nez v1, :cond_d

    .line 1355
    invoke-static {}, Landroid/app/ContextImpl;->createDropBoxManager()Landroid/os/DropBoxManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 1357
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    .line 1358
    iget-object v0, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    return-object v0

    .line 1357
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private getFMPlayer()Lcom/samsung/media/fmradio/FMPlayer;
    .registers 4

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_12

    .line 1123
    new-instance v1, Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 1125
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 1126
    iget-object v0, p0, Landroid/app/ContextImpl;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    return-object v0

    .line 1125
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static getInstanceCount()J
    .registers 2

    .prologue
    .line 255
    sget-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    return-wide v0
.end method

.method private getLocationManager()Landroid/location/LocationManager;
    .registers 5

    .prologue
    .line 1276
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1277
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl;->sLocationManager:Landroid/location/LocationManager;

    if-nez v3, :cond_18

    .line 1278
    const-string v3, "location"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1279
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    .line 1280
    .local v1, service:Landroid/location/ILocationManager;
    new-instance v3, Landroid/location/LocationManager;

    invoke-direct {v3, v1}, Landroid/location/LocationManager;-><init>(Landroid/location/ILocationManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sLocationManager:Landroid/location/LocationManager;

    .line 1282
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/location/ILocationManager;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1283
    sget-object v2, Landroid/app/ContextImpl;->sLocationManager:Landroid/location/LocationManager;

    return-object v2

    .line 1282
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method private getNfcManager()Landroid/nfc/NfcManager;
    .registers 3

    .prologue
    .line 1390
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1391
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    if-nez v1, :cond_e

    .line 1392
    new-instance v1, Landroid/nfc/NfcManager;

    invoke-direct {v1, p0}, Landroid/nfc/NfcManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    .line 1394
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 1395
    iget-object v0, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    return-object v0

    .line 1394
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 6

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_20

    .line 1227
    new-instance v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x103000b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1231
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_24

    .line 1232
    iget-object v0, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0

    .line 1231
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .registers 6

    .prologue
    .line 1164
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1165
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl;->sPowerManager:Landroid/os/PowerManager;

    if-nez v3, :cond_1f

    .line 1166
    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1167
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1168
    .local v1, service:Landroid/os/IPowerManager;
    new-instance v3, Landroid/os/PowerManager;

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    sput-object v3, Landroid/app/ContextImpl;->sPowerManager:Landroid/os/PowerManager;

    .line 1170
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/os/IPowerManager;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    .line 1171
    sget-object v2, Landroid/app/ContextImpl;->sPowerManager:Landroid/os/PowerManager;

    return-object v2

    .line 1170
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method private getPreferencesDir()Ljava/io/File;
    .registers 5

    .prologue
    .line 455
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 478
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 482
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 483
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .registers 5

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    if-nez v1, :cond_18

    .line 1289
    new-instance v1, Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    .line 1291
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1292
    iget-object v0, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 1291
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .registers 4

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1297
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_18

    .line 1298
    new-instance v1, Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1300
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1301
    iget-object v0, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0

    .line 1300
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getStorageManager()Landroid/os/storage/StorageManager;
    .registers 5

    .prologue
    .line 1305
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1306
    :try_start_3
    iget-object v2, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-nez v2, :cond_18

    .line 1308
    :try_start_7
    new-instance v2, Landroid/os/storage/StorageManager;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/storage/StorageManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1c

    .line 1314
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_29

    .line 1315
    iget-object v1, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v1

    .line 1309
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 1310
    .local v0, rex:Landroid/os/RemoteException;
    :try_start_1e
    const-string v2, "ApplicationContext"

    const-string v3, "Failed to create StorageManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1311
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    goto :goto_18

    .line 1314
    .end local v0           #rex:Landroid/os/RemoteException;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v2
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 4

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_12

    .line 1248
    new-instance v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1250
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 1251
    iget-object v0, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0

    .line 1250
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getThrottleManager()Landroid/net/ThrottleManager;
    .registers 5

    .prologue
    .line 1188
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1189
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl;->sThrottleManager:Landroid/net/ThrottleManager;

    if-nez v3, :cond_19

    .line 1190
    const-string/jumbo v3, "throttle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1191
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IThrottleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IThrottleManager;

    move-result-object v1

    .line 1192
    .local v1, service:Landroid/net/IThrottleManager;
    new-instance v3, Landroid/net/ThrottleManager;

    invoke-direct {v3, v1}, Landroid/net/ThrottleManager;-><init>(Landroid/net/IThrottleManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sThrottleManager:Landroid/net/ThrottleManager;

    .line 1194
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/IThrottleManager;
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1d

    .line 1195
    sget-object v2, Landroid/app/ContextImpl;->sThrottleManager:Landroid/net/ThrottleManager;

    return-object v2

    .line 1194
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method private getUiModeManager()Landroid/app/UiModeManager;
    .registers 3

    .prologue
    .line 1372
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v1, :cond_e

    .line 1374
    new-instance v1, Landroid/app/UiModeManager;

    invoke-direct {v1}, Landroid/app/UiModeManager;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    .line 1376
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 1377
    iget-object v0, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    return-object v0

    .line 1376
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getUsbManager()Landroid/hardware/usb/UsbManager;
    .registers 5

    .prologue
    .line 1319
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1320
    :try_start_3
    iget-object v3, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v3, :cond_19

    .line 1321
    const-string/jumbo v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1322
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    .line 1323
    .local v1, service:Landroid/hardware/usb/IUsbManager;
    new-instance v3, Landroid/hardware/usb/UsbManager;

    invoke-direct {v3, p0, v1}, Landroid/hardware/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    iput-object v3, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 1325
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/hardware/usb/IUsbManager;
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1d

    .line 1326
    iget-object v2, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v2

    .line 1325
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method private getVibrator()Landroid/os/Vibrator;
    .registers 3

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1331
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_e

    .line 1332
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    .line 1334
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 1335
    iget-object v0, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    return-object v0

    .line 1334
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .registers 5

    .prologue
    .line 1236
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_18

    .line 1238
    new-instance v1, Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1241
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1242
    iget-object v0, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0

    .line 1241
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 6

    .prologue
    .line 1200
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1201
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl;->sWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_1f

    .line 1202
    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1203
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 1204
    .local v1, service:Landroid/net/wifi/IWifiManager;
    new-instance v3, Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/net/wifi/WifiManager;-><init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V

    sput-object v3, Landroid/app/ContextImpl;->sWifiManager:Landroid/net/wifi/WifiManager;

    .line 1206
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/wifi/IWifiManager;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    .line 1207
    sget-object v2, Landroid/app/ContextImpl;->sWifiManager:Landroid/net/wifi/WifiManager;

    return-object v2

    .line 1206
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method private getWimaxManager()Landroid/net/wimax/WimaxManager;
    .registers 6

    .prologue
    .line 1213
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1214
    :try_start_3
    sget-object v3, Landroid/app/ContextImpl;->sWimaxManager:Landroid/net/wimax/WimaxManager;

    if-nez v3, :cond_1e

    .line 1215
    const-string v3, "WiMax"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1216
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wimax/IWimaxManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wimax/IWimaxManager;

    move-result-object v1

    .line 1217
    .local v1, service:Landroid/net/wimax/IWimaxManager;
    new-instance v3, Landroid/net/wimax/WimaxManager;

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/net/wimax/WimaxManager;-><init>(Landroid/net/wimax/IWimaxManager;Landroid/os/Handler;)V

    sput-object v3, Landroid/app/ContextImpl;->sWimaxManager:Landroid/net/wimax/WimaxManager;

    .line 1219
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/wimax/IWimaxManager;
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    .line 1220
    sget-object v2, Landroid/app/ContextImpl;->sWimaxManager:Landroid/net/wimax/WimaxManager;

    return-object v2

    .line 1219
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .parameter "prefsFile"

    .prologue
    .line 355
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "base"
    .parameter "name"

    .prologue
    .line 1836
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 1837
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1839
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .registers 15
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 902
    const/4 v7, 0x0

    .line 903
    .local v7, rd:Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_22

    .line 904
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_31

    if-eqz p5, :cond_31

    .line 905
    if-nez p4, :cond_13

    .line 906
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 908
    :cond_13
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 920
    :cond_22
    :goto_22
    :try_start_22
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, v7, p2, p3}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_47

    move-result-object v0

    .line 924
    :goto_30
    return-object v0

    .line 912
    :cond_31
    if-nez p4, :cond_39

    .line 913
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 915
    :cond_39
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v7

    goto :goto_22

    .line 923
    :catch_47
    move-exception v0

    move-object v6, v0

    .local v6, e:Landroid/os/RemoteException;
    move-object v0, v8

    .line 924
    goto :goto_30
.end method

.method private static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .registers 6
    .parameter "name"
    .parameter "mode"
    .parameter "extraPermissions"

    .prologue
    const/4 v2, -0x1

    .line 1781
    or-int/lit16 v0, p2, 0x1b0

    .line 1784
    .local v0, perms:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_9

    .line 1785
    or-int/lit8 v0, v0, 0x4

    .line 1787
    :cond_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_f

    .line 1788
    or-int/lit8 v0, v0, 0x2

    .line 1794
    :cond_f
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1795
    return-void
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .registers 5
    .parameter "uriModeFlags"

    .prologue
    .line 1561
    packed-switch p1, :pswitch_data_28

    .line 1570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission mode flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1564
    :pswitch_1c
    const-string/jumbo v0, "read and write"

    .line 1568
    :goto_1f
    return-object v0

    .line 1566
    :pswitch_20
    const-string/jumbo v0, "read"

    goto :goto_1f

    .line 1568
    :pswitch_24
    const-string/jumbo v0, "write"

    goto :goto_1f

    .line 1561
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_20
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .registers 10
    .parameter "name"
    .parameter "createDirectory"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1801
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_40

    .line 1802
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1803
    .local v1, dirPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1804
    .local v0, dir:Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1805
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1811
    .end local v1           #dirPath:Ljava/lang/String;
    .local v2, f:Ljava/io/File;
    :goto_28
    if-eqz p2, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1812
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1832
    :cond_3f
    return-object v2

    .line 1807
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    :cond_40
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    .line 1808
    .restart local v0       #dir:Ljava/io/File;
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .restart local v2       #f:Ljava/io/File;
    goto :goto_28
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 14
    .parameter "service"
    .parameter "conn"
    .parameter "flags"

    .prologue
    const/4 v9, 0x0

    .line 979
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_50

    .line 980
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 986
    .local v5, sd:Landroid/app/IServiceConnection;
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v8

    .line 990
    .local v8, res:I
    if-gez v8, :cond_58

    .line 991
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4c} :catch_4c

    .line 995
    .end local v8           #res:I
    :catch_4c
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    move v0, v9

    .line 996
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_4f
    return v0

    .line 983
    .end local v5           #sd:Landroid/app/IServiceConnection;
    :cond_50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    .restart local v5       #sd:Landroid/app/IServiceConnection;
    .restart local v8       #res:I
    :cond_58
    if-eqz v8, :cond_5c

    const/4 v0, 0x1

    goto :goto_4f

    :cond_5c
    move v0, v9

    goto :goto_4f
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 4
    .parameter "permission"

    .prologue
    .line 1434
    if-nez p1, :cond_b

    .line 1435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1530
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 5
    .parameter "permission"

    .prologue
    .line 1417
    if-nez p1, :cond_b

    .line 1418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1421
    :cond_b
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1422
    const/4 v1, 0x0

    .line 1429
    :goto_12
    return v1

    .line 1424
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1425
    .local v0, pid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_26

    .line 1426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    goto :goto_12

    .line 1429
    :cond_26
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1517
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1518
    const/4 v1, 0x0

    .line 1525
    :goto_7
    return v1

    .line 1520
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1521
    .local v0, pid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 1522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    goto :goto_7

    .line 1525
    :cond_1b
    const/4 v1, -0x1

    goto :goto_7
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .registers 7
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 1400
    if-nez p1, :cond_b

    .line 1401
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1404
    :cond_b
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1405
    const/4 v1, 0x0

    .line 1411
    :goto_12
    return v1

    .line 1408
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_12

    .line 1410
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 1411
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .registers 7
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    .line 1504
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1505
    const/4 v1, 0x0

    .line 1511
    :goto_7
    return v1

    .line 1508
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;III)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    goto :goto_7

    .line 1510
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 1511
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_7
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 9
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    const/4 v1, 0x0

    .line 1542
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_f

    .line 1543
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v1

    .line 1556
    :goto_e
    return v0

    .line 1549
    :cond_f
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1d

    .line 1550
    if-eqz p3, :cond_1b

    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    move v0, v1

    .line 1553
    goto :goto_e

    .line 1556
    :cond_1d
    if-eqz p1, :cond_24

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_e

    :cond_24
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public clearWallpaper()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 729
    return-void
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 8
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1628
    const-string/jumbo v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "android"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1629
    :cond_11
    new-instance v2, Landroid/app/ContextImpl;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;)V

    .line 1639
    :goto_1c
    return-object v2

    .line 1632
    :cond_1d
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p1, p2}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;I)Landroid/app/LoadedApk;

    move-result-object v1

    .line 1634
    .local v1, pi:Landroid/app/LoadedApk;
    if-eqz v1, :cond_42

    .line 1635
    new-instance v0, Landroid/app/ContextImpl;

    invoke-direct {v0}, Landroid/app/ContextImpl;-><init>()V

    .line 1636
    .local v0, c:Landroid/app/ContextImpl;
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_40

    const/4 v2, 0x1

    :goto_30
    iput-boolean v2, v0, Landroid/app/ContextImpl;->mRestricted:Z

    .line 1637
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V

    .line 1638
    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_42

    move-object v2, v0

    .line 1639
    goto :goto_1c

    .line 1636
    :cond_40
    const/4 v2, 0x0

    goto :goto_30

    .line 1644
    .end local v0           #c:Landroid/app/ContextImpl;
    :cond_42
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public databaseList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 664
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    :goto_b
    return-object v1

    :cond_c
    sget-object v1, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_b
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 650
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, v1}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 651
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result v1

    .line 654
    .end local v0           #f:Ljava/io/File;
    :goto_a
    return v1

    .line 652
    :catch_b
    move-exception v1

    move v1, v2

    .line 654
    goto :goto_a
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 520
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "permission"
    .parameter "message"

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1480
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1606
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "permission"
    .parameter "message"

    .prologue
    .line 1466
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1471
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1599
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1602
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "message"

    .prologue
    .line 1458
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1463
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 13
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1592
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1615
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1623
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    :goto_b
    return-object v1

    :cond_c
    sget-object v1, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_b
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1776
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_a
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 333
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 335
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 7

    .prologue
    .line 577
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_3
    iget-object v2, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_18

    .line 582
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, pkgname:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v3

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 592
    .end local v0           #pkgname:Ljava/lang/String;
    :cond_18
    iget-object v2, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_40

    .line 593
    iget-object v2, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_33

    .line 594
    const-string v2, "ApplicationContext"

    const-string v3, "Unable to create cache directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 603
    :goto_32
    return-object v1

    .line 597
    :cond_33
    iget-object v2, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 602
    :cond_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_44

    .line 603
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    goto :goto_32

    .line 602
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_a
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "name"

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 7
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 1662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1665
    const/4 v0, 0x0

    .line 1666
    .local v0, file:Ljava/io/File;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1675
    .local v1, pkgname:Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1678
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_32

    .line 1679
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1680
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    invoke-static {v2, p2, v3}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 1683
    :cond_32
    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .registers 5

    .prologue
    .line 608
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    if-nez v1, :cond_11

    .line 610
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    .line 613
    :cond_11
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3f

    move-result v1

    if-nez v1, :cond_3a

    .line 615
    :try_start_19
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_42

    .line 619
    :goto_27
    :try_start_27
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 620
    const-string v1, "ApplicationContext"

    const-string v2, "Unable to create external cache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 624
    :goto_39
    return-object v0

    :cond_3a
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    monitor-exit v0

    move-object v0, v1

    goto :goto_39

    .line 625
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_3f

    throw v1

    .line 617
    :catch_42
    move-exception v1

    goto :goto_27
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const-string v1, "ApplicationContext"

    .line 545
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_6
    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    if-nez v2, :cond_14

    .line 547
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    .line 550
    :cond_14
    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_74

    move-result v2

    if-nez v2, :cond_3c

    .line 552
    :try_start_1c
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_74
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2a} :catch_77

    .line 556
    :goto_2a
    :try_start_2a
    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 557
    const-string v2, "ApplicationContext"

    const-string v3, "Unable to create external files directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit v1

    move-object v1, v5

    .line 571
    :goto_3b
    return-object v1

    .line 561
    :cond_3c
    if-nez p1, :cond_43

    .line 562
    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    monitor-exit v1

    move-object v1, v2

    goto :goto_3b

    .line 564
    :cond_43
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_71

    .line 566
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_71

    .line 567
    const-string v2, "ApplicationContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create external media directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    monitor-exit v1

    move-object v1, v5

    goto :goto_3b

    .line 571
    :cond_71
    monitor-exit v1

    move-object v1, v0

    goto :goto_3b

    .line 572
    .end local v0           #dir:Ljava/io/File;
    :catchall_74
    move-exception v2

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_2a .. :try_end_76} :catchall_74

    throw v2

    .line 554
    :catch_77
    move-exception v2

    goto :goto_2a
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "name"

    .prologue
    .line 630
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 6

    .prologue
    .line 525
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 527
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 529
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 530
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 531
    const-string v1, "ApplicationContext"

    const-string v2, "Unable to create files directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 539
    :goto_2e
    return-object v0

    .line 534
    :cond_2f
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 539
    :cond_3c
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    monitor-exit v0

    move-object v0, v1

    goto :goto_2e

    .line 540
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public getMainLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method final getOuterContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1772
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 349
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 3

    .prologue
    .line 270
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_7

    .line 271
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 280
    :goto_6
    return-object v1

    .line 274
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 275
    .local v0, pm:Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_15

    .line 277
    new-instance v1, Landroid/app/ContextImpl$ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_6

    .line 280
    :cond_15
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 325
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 341
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 1757
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 1758
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 1760
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    goto :goto_6
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 23
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 366
    const/4 v8, 0x0

    .line 367
    .local v8, needInitialLoad:Z
    sget-object v16, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    monitor-enter v16

    .line 368
    :try_start_4
    sget-object v17, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ContextImpl$SharedPreferencesImpl;

    .line 369
    .local v12, sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Landroid/app/ContextImpl$SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v17

    if-nez v17, :cond_1b

    .line 370
    monitor-exit v16

    move-object v13, v12

    .line 451
    .end local v12           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .local v13, sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :goto_1a
    return-object v13

    .line 372
    .end local v13           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v12       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroid/app/ContextImpl;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 373
    .local v11, prefsFile:Ljava/io/File;
    if-nez v12, :cond_39

    .line 374
    new-instance v12, Landroid/app/ContextImpl$SharedPreferencesImpl;

    .end local v12           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    const/16 v17, 0x0

    move-object v0, v12

    move-object v1, v11

    move/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ContextImpl$SharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V

    .line 375
    .restart local v12       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    sget-object v17, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const/4 v8, 0x1

    .line 378
    :cond_39
    monitor-exit v16
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_46

    .line 380
    monitor-enter v12

    .line 381
    if-eqz v8, :cond_49

    :try_start_3d
    invoke-virtual {v12}, Landroid/app/ContextImpl$SharedPreferencesImpl;->isLoaded()Z

    move-result v16

    if-eqz v16, :cond_49

    .line 383
    monitor-exit v12
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_191

    move-object v13, v12

    .end local v12           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v13       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    goto :goto_1a

    .line 378
    .end local v11           #prefsFile:Ljava/io/File;
    .end local v13           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :catchall_46
    move-exception v17

    :try_start_47
    monitor-exit v16
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v17

    .line 385
    .restart local v11       #prefsFile:Ljava/io/File;
    .restart local v12       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :cond_49
    :try_start_49
    invoke-static {v11}, Landroid/app/ContextImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 386
    .local v4, backup:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_59

    .line 387
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 388
    invoke-virtual {v4, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 393
    :cond_59
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_128

    .line 395
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 396
    .local v9, parent:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_128

    .line 398
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, pkgName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/data/data/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/shared_prefs"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v5, dataSPPath:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const-string v17, "dbdata"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_128

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_128

    .line 402
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_e8

    .line 403
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v16

    if-nez v16, :cond_db

    .line 404
    const-string v16, "ApplicationContext"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSharedPreferences> Couldn\'t create directory for SharedPreferences file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_db
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1f9

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-static/range {v16 .. v19}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 413
    :cond_e8
    const-string v16, "ApplicationContext"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSharedPreferences>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'s shared_prefs is already exist in /data/data, so we should restore the original data"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_49 .. :try_end_109} :catchall_191

    .line 417
    :try_start_109
    new-instance v16, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 418
    invoke-static {v5}, Landroid/os/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_11b
    .catchall {:try_start_109 .. :try_end_11b} :catchall_191
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_11b} :catch_1b4

    .line 421
    :goto_11b
    :try_start_11b
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1f9

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-static/range {v16 .. v19}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 430
    .end local v5           #dataSPPath:Ljava/io/File;
    .end local v9           #parent:Ljava/io/File;
    .end local v10           #pkgName:Ljava/lang/String;
    :cond_128
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_155

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v16

    if-nez v16, :cond_155

    .line 431
    const-string v16, "ApplicationContext"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Attempt to read preferences file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " without permission"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_155
    const/4 v7, 0x0

    .line 435
    .local v7, map:Ljava/util/Map;
    new-instance v14, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v14}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 436
    .local v14, stat:Landroid/os/FileUtils$FileStatus;
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v16

    if-eqz v16, :cond_17a

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z
    :try_end_16b
    .catchall {:try_start_11b .. :try_end_16b} :catchall_191

    move-result v16

    if-eqz v16, :cond_17a

    .line 438
    :try_start_16e
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 439
    .local v15, str:Ljava/io/FileInputStream;
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v7

    .line 440
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_17a
    .catchall {:try_start_16e .. :try_end_17a} :catchall_191
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16e .. :try_end_17a} :catch_181
    .catch Ljava/io/FileNotFoundException; {:try_start_16e .. :try_end_17a} :catch_194
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_17a} :catch_1a4

    .line 449
    .end local v15           #str:Ljava/io/FileInputStream;
    :cond_17a
    :goto_17a
    :try_start_17a
    invoke-virtual {v12, v7, v14}, Landroid/app/ContextImpl$SharedPreferencesImpl;->replace(Ljava/util/Map;Landroid/os/FileUtils$FileStatus;)V

    .line 450
    monitor-exit v12

    move-object v13, v12

    .line 451
    .end local v12           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v13       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    goto/16 :goto_1a

    .line 441
    .end local v13           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v12       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :catch_181
    move-exception v16

    move-object/from16 v6, v16

    .line 442
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v16, "ApplicationContext"

    const-string v17, "getSharedPreferences"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17a

    .line 450
    .end local v4           #backup:Ljava/io/File;
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7           #map:Ljava/util/Map;
    .end local v14           #stat:Landroid/os/FileUtils$FileStatus;
    :catchall_191
    move-exception v16

    monitor-exit v12
    :try_end_193
    .catchall {:try_start_17a .. :try_end_193} :catchall_191

    throw v16

    .line 443
    .restart local v4       #backup:Ljava/io/File;
    .restart local v7       #map:Ljava/util/Map;
    .restart local v14       #stat:Landroid/os/FileUtils$FileStatus;
    :catch_194
    move-exception v16

    move-object/from16 v6, v16

    .line 444
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_197
    const-string v16, "ApplicationContext"

    const-string v17, "getSharedPreferences"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17a

    .line 445
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_1a4
    move-exception v16

    move-object/from16 v6, v16

    .line 446
    .local v6, e:Ljava/io/IOException;
    const-string v16, "ApplicationContext"

    const-string v17, "getSharedPreferences"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_197 .. :try_end_1b3} :catchall_191

    goto :goto_17a

    .line 419
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #map:Ljava/util/Map;
    .end local v14           #stat:Landroid/os/FileUtils$FileStatus;
    .restart local v5       #dataSPPath:Ljava/io/File;
    .restart local v9       #parent:Ljava/io/File;
    .restart local v10       #pkgName:Ljava/lang/String;
    :catch_1b4
    move-exception v16

    goto/16 :goto_11b
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "name"

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "name"

    .prologue
    .line 1028
    const-string/jumbo v1, "window"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1029
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 1116
    :goto_d
    return-object v1

    .line 1030
    :cond_e
    const-string v1, "layout_inflater"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1031
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1032
    :try_start_19
    iget-object v0, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1033
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_20

    .line 1034
    monitor-exit v1

    move-object v1, v0

    goto :goto_d

    .line 1036
    :cond_20
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1038
    monitor-exit v1

    move-object v1, v0

    goto :goto_d

    .line 1039
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_2d

    throw v2

    .line 1040
    :cond_30
    const-string v1, "activity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1041
    invoke-direct {p0}, Landroid/app/ContextImpl;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v1

    goto :goto_d

    .line 1042
    :cond_3d
    const-string v1, "input_method"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1043
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    goto :goto_d

    .line 1044
    :cond_4a
    const-string v1, "alarm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1045
    invoke-direct {p0}, Landroid/app/ContextImpl;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    goto :goto_d

    .line 1046
    :cond_57
    const-string v1, "account"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1047
    invoke-direct {p0}, Landroid/app/ContextImpl;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    goto :goto_d

    .line 1048
    :cond_64
    const-string/jumbo v1, "power"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1049
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    goto :goto_d

    .line 1050
    :cond_72
    const-string v1, "connectivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1051
    invoke-direct {p0}, Landroid/app/ContextImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    goto :goto_d

    .line 1052
    :cond_7f
    const-string/jumbo v1, "throttle"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1053
    invoke-direct {p0}, Landroid/app/ContextImpl;->getThrottleManager()Landroid/net/ThrottleManager;

    move-result-object v1

    goto :goto_d

    .line 1054
    :cond_8d
    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1055
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1056
    :cond_9c
    const-string/jumbo v1, "notification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1057
    invoke-direct {p0}, Landroid/app/ContextImpl;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1058
    :cond_ab
    const-string v1, "keyguard"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 1059
    new-instance v1, Landroid/app/KeyguardManager;

    invoke-direct {v1}, Landroid/app/KeyguardManager;-><init>()V

    goto/16 :goto_d

    .line 1060
    :cond_ba
    const-string v1, "accessibility"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 1061
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1062
    :cond_c8
    const-string v1, "location"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1063
    invoke-direct {p0}, Landroid/app/ContextImpl;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1064
    :cond_d6
    const-string/jumbo v1, "search"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1065
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1066
    :cond_e5
    const-string/jumbo v1, "sensor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 1067
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1068
    :cond_f4
    const-string/jumbo v1, "storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 1069
    invoke-direct {p0}, Landroid/app/ContextImpl;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1070
    :cond_103
    const-string/jumbo v1, "usb"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 1071
    invoke-direct {p0}, Landroid/app/ContextImpl;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1072
    :cond_112
    const-string/jumbo v1, "vibrator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 1073
    invoke-direct {p0}, Landroid/app/ContextImpl;->getVibrator()Landroid/os/Vibrator;

    move-result-object v1

    goto/16 :goto_d

    .line 1074
    :cond_121
    const-string/jumbo v1, "statusbar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 1075
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1076
    :try_start_12d
    iget-object v2, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_13c

    .line 1077
    new-instance v2, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/StatusBarManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1079
    :cond_13c
    iget-object v2, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    monitor-exit v1

    move-object v1, v2

    goto/16 :goto_d

    .line 1080
    :catchall_142
    move-exception v2

    monitor-exit v1
    :try_end_144
    .catchall {:try_start_12d .. :try_end_144} :catchall_142

    throw v2

    .line 1081
    :cond_145
    const-string v1, "audio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 1082
    invoke-direct {p0}, Landroid/app/ContextImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1083
    :cond_153
    const-string/jumbo v1, "phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    .line 1084
    invoke-direct {p0}, Landroid/app/ContextImpl;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1085
    :cond_162
    const-string v1, "clipboard"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 1086
    invoke-direct {p0}, Landroid/app/ContextImpl;->getClipboardManager()Landroid/text/ClipboardManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1088
    :cond_170
    const-string v1, "clipboardEx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 1089
    invoke-direct {p0}, Landroid/app/ContextImpl;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1091
    :cond_17e
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 1092
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1093
    :cond_18d
    const-string v1, "dropbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 1094
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDropBoxManager()Landroid/os/DropBoxManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1095
    :cond_19b
    const-string v1, "device_policy"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 1096
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1097
    :cond_1a9
    const-string/jumbo v1, "uimode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b8

    .line 1098
    invoke-direct {p0}, Landroid/app/ContextImpl;->getUiModeManager()Landroid/app/UiModeManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1099
    :cond_1b8
    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 1100
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1101
    :cond_1c6
    const-string/jumbo v1, "nfc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    .line 1102
    invoke-direct {p0}, Landroid/app/ContextImpl;->getNfcManager()Landroid/nfc/NfcManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1105
    :cond_1d5
    const-string v1, "FMPlayer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    .line 1107
    invoke-direct {p0}, Landroid/app/ContextImpl;->getFMPlayer()Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v1

    goto/16 :goto_d

    .line 1111
    :cond_1e3
    const-string v1, "WiMax"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f1

    .line 1112
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWimaxManager()Landroid/net/wimax/WimaxManager;

    move-result-object v1

    goto/16 :goto_d

    .line 1116
    :cond_1f1
    const/4 v1, 0x0

    goto/16 :goto_d
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    .prologue
    .line 306
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1d

    .line 307
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    if-nez v0, :cond_d

    .line 308
    const v0, 0x1030005

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 310
    :cond_d
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 311
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 313
    :cond_1d
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 698
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .registers 2

    .prologue
    .line 713
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .registers 2

    .prologue
    .line 708
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 6
    .parameter "toPackage"
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1485
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1490
    :goto_d
    return-void

    .line 1488
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method final init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V
    .registers 5
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"

    .prologue
    .line 1715
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V

    .line 1716
    return-void
.end method

.method final init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V
    .registers 7
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"
    .parameter "container"

    .prologue
    .line 1721
    iput-object p1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1722
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p3}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1724
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_36

    if-eqz p4, :cond_36

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_36

    .line 1731
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->copy()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1734
    :cond_36
    iput-object p3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1735
    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v0, p0, p3}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 1737
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->setActivityToken(Landroid/os/IBinder;)V

    .line 1738
    return-void
.end method

.method final init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V
    .registers 4
    .parameter "resources"
    .parameter "mainThread"

    .prologue
    .line 1741
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1742
    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 1743
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1744
    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v0, p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 1745
    return-void
.end method

.method public isRestricted()Z
    .registers 2

    .prologue
    .line 1650
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 491
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 11
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 497
    const v4, 0x8000

    and-int/2addr v4, p2

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    move v0, v4

    .line 498
    .local v0, append:Z
    :goto_a
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 500
    .local v1, f:Ljava/io/File;
    :try_start_12
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 501
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1f} :catch_22

    .line 514
    :goto_1f
    return-object v2

    .end local v0           #append:Z
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_20
    move v0, v6

    .line 497
    goto :goto_a

    .line 503
    .restart local v0       #append:Z
    .restart local v1       #f:Ljava/io/File;
    :catch_22
    move-exception v4

    .line 506
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 507
    .local v3, parent:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 508
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    invoke-static {v4, v5, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 512
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 513
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_1f
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 8
    .parameter "name"
    .parameter "mode"
    .parameter "factory"

    .prologue
    .line 641
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 642
    .local v1, f:Ljava/io/File;
    invoke-static {v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 643
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 644
    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 703
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .parameter "receiver"
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 875
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, resolvedType:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 877
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 878
    .end local p1
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 881
    .end local v0           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_25

    .line 885
    :goto_24
    return-void

    .line 883
    :catch_25
    move-exception v2

    goto :goto_24
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .registers 5
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1495
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1500
    :goto_d
    return-void

    .line 1498
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1748
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 773
    :goto_1d
    return-void

    .line 771
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 779
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 784
    :goto_1d
    return-void

    .line 782
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 796
    :goto_1d
    return-void

    .line 794
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .parameter "intent"
    .parameter "receiverPermission"
    .parameter "resultReceiver"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    .line 803
    const/4 v4, 0x0

    .line 804
    .local v4, rd:Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_22

    .line 805
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_42

    .line 806
    if-nez p4, :cond_f

    .line 807
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 809
    :cond_f
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 820
    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_41} :catch_5c

    .line 828
    :goto_41
    return-void

    .line 813
    .end local v3           #resolvedType:Ljava/lang/String;
    :cond_42
    if-nez p4, :cond_4a

    .line 814
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 816
    :cond_4a
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    goto :goto_22

    .line 826
    .restart local v3       #resolvedType:Ljava/lang/String;
    :catch_5c
    move-exception v0

    goto :goto_41
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    .line 832
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 839
    :goto_1d
    return-void

    .line 837
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .parameter "intent"
    .parameter "resultReceiver"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    .line 846
    const/4 v4, 0x0

    .line 847
    .local v4, rd:Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_22

    .line 848
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_41

    .line 849
    if-nez p3, :cond_f

    .line 850
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 852
    :cond_f
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 863
    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 865
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p1

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_40} :catch_5b

    .line 871
    :goto_40
    return-void

    .line 856
    .end local v3           #resolvedType:Ljava/lang/String;
    :cond_41
    if-nez p3, :cond_49

    .line 857
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 859
    :cond_49
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    goto :goto_22

    .line 869
    .restart local v3       #resolvedType:Ljava/lang/String;
    :catch_5b
    move-exception v0

    goto :goto_40
.end method

.method final setActivityToken(Landroid/os/IBinder;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 1764
    iput-object p1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 1765
    return-void
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 1768
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 1769
    return-void
.end method

.method public setTheme(I)V
    .registers 2
    .parameter "resid"

    .prologue
    .line 301
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 302
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 719
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 724
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 733
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 734
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_12
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    const/4 v6, -0x1

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    .line 741
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 11
    .parameter "className"
    .parameter "profileFile"
    .parameter "arguments"

    .prologue
    const/4 v6, 0x0

    .line 1018
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 1023
    :goto_e
    return v0

    .line 1020
    :catch_f
    move-exception v0

    move v0, v6

    .line 1023
    goto :goto_e
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 17
    .parameter "intent"
    .parameter "fillInIntent"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 748
    const/4 v4, 0x0

    .line 749
    .local v4, resolvedType:Ljava/lang/String;
    if-eqz p2, :cond_b

    .line 750
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 752
    :cond_b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v10

    .line 756
    .local v10, result:I
    const/4 v0, -0x6

    if-ne v10, v0, :cond_2b

    .line 757
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v0

    .line 760
    .end local v10           #result:I
    :catch_29
    move-exception v0

    .line 762
    :goto_2a
    return-void

    .line 759
    .restart local v10       #result:I
    :cond_2b
    const/4 v0, 0x0

    invoke-static {v10, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2f} :catch_29

    goto :goto_2a
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 7
    .parameter "service"

    .prologue
    .line 945
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 948
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 949
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4b} :catch_4b

    .line 954
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_4b
    move-exception v2

    move-object v1, v2

    .line 955
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_4e
    return-object v2

    .restart local v0       #cn:Landroid/content/ComponentName;
    :cond_4f
    move-object v2, v0

    .line 953
    goto :goto_4e
.end method

.method public stopService(Landroid/content/Intent;)Z
    .registers 8
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    .line 962
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    .line 965
    .local v1, res:I
    if-gez v1, :cond_36

    .line 966
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_32

    .line 970
    .end local v1           #res:I
    :catch_32
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    move v2, v5

    .line 971
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_35
    return v2

    .line 969
    .restart local v1       #res:I
    :cond_36
    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    goto :goto_35

    :cond_3a
    move v2, v5

    goto :goto_35
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .parameter "conn"

    .prologue
    .line 1002
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_16

    .line 1003
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 1006
    .local v0, sd:Landroid/app/IServiceConnection;
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_1e

    .line 1012
    :goto_15
    return-void

    .line 1010
    .end local v0           #sd:Landroid/app/IServiceConnection;
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    .restart local v0       #sd:Landroid/app/IServiceConnection;
    :catch_1e
    move-exception v1

    goto :goto_15
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 5
    .parameter "receiver"

    .prologue
    .line 930
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_16

    .line 931
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 934
    .local v0, rd:Landroid/content/IIntentReceiver;
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_1e

    .line 940
    :goto_15
    return-void

    .line 938
    .end local v0           #rd:Landroid/content/IIntentReceiver;
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 935
    .restart local v0       #rd:Landroid/content/IIntentReceiver;
    :catch_1e
    move-exception v1

    goto :goto_15
.end method
