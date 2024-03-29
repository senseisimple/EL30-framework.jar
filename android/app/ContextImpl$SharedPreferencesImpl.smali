.class final Landroid/app/ContextImpl$SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedPreferencesImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;,
        Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mDiskWritesInFlight:I

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mStatSize:J

.field private mStatTimestamp:J

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3009
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .registers 7
    .parameter "file"
    .parameter "mode"
    .parameter "initialContents"

    .prologue
    const/4 v2, 0x0

    .line 3013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3003
    iput v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 3004
    iput-boolean v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    .line 3008
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 3014
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 3015
    #calls: Landroid/app/ContextImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Landroid/app/ContextImpl;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 3016
    iput p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    .line 3017
    if-eqz p3, :cond_3e

    const/4 v1, 0x1

    :goto_1c
    iput-boolean v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    .line 3018
    if-eqz p3, :cond_40

    move-object v1, p3

    :goto_21
    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 3019
    new-instance v0, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v0}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 3020
    .local v0, stat:Landroid/os/FileUtils$FileStatus;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3021
    iget-wide v1, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    .line 3023
    :cond_36
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 3024
    return-void

    .end local v0           #stat:Landroid/os/FileUtils$FileStatus;
    :cond_3e
    move v1, v2

    .line 3017
    goto :goto_1c

    .line 3018
    :cond_40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_21
.end method

.method static synthetic access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2992
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ContextImpl$SharedPreferencesImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2992
    iget v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$308(Landroid/app/ContextImpl$SharedPreferencesImpl;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 2992
    iget v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$310(Landroid/app/ContextImpl$SharedPreferencesImpl;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 2992
    iget v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/ContextImpl$SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2992
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2992
    invoke-direct {p0, p1}, Landroid/app/ContextImpl$SharedPreferencesImpl;->writeToFile(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 14
    .parameter "file"

    .prologue
    const/16 v12, 0x1f9

    const/4 v10, -0x1

    const-string v11, "ApplicationContext"

    .line 3372
    const/4 v6, 0x0

    .line 3374
    .local v6, str:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_e

    .end local v6           #str:Ljava/io/FileOutputStream;
    .local v7, str:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #str:Ljava/io/FileOutputStream;
    .restart local v6       #str:Ljava/io/FileOutputStream;
    :goto_c
    move-object v8, v6

    .line 3420
    :goto_d
    return-object v8

    .line 3375
    :catch_e
    move-exception v8

    move-object v2, v8

    .line 3376
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 3377
    .local v4, parent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_c5

    .line 3378
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_47

    .line 3379
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_40

    .line 3380
    const-string v8, "ApplicationContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFileOutputStream> Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    const/4 v8, 0x0

    goto :goto_d

    .line 3384
    :cond_40
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3390
    :cond_47
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3391
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 3393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3394
    .local v0, dataPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/shared_prefs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3396
    .local v1, dataSPPath:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "dbdata"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_c5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 3398
    const-string v8, "ApplicationContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFileOutputStream> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'s shared_prefs is already exist in /data/data, so we should restore the original data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :try_start_b6
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v8}, Landroid/os/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 3403
    invoke-static {v1}, Landroid/os/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c5} :catch_f0

    .line 3409
    .end local v0           #dataPath:Ljava/lang/String;
    .end local v1           #dataSPPath:Ljava/io/File;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_c5
    :goto_c5
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3415
    :try_start_cc
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_cc .. :try_end_d1} :catch_d4

    .end local v6           #str:Ljava/io/FileOutputStream;
    .restart local v7       #str:Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 3418
    .end local v7           #str:Ljava/io/FileOutputStream;
    .restart local v6       #str:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 3416
    :catch_d4
    move-exception v8

    move-object v3, v8

    .line 3417
    .local v3, e2:Ljava/io/FileNotFoundException;
    const-string v8, "ApplicationContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 3404
    .end local v3           #e2:Ljava/io/FileNotFoundException;
    .restart local v0       #dataPath:Ljava/lang/String;
    .restart local v1       #dataSPPath:Ljava/io/File;
    .restart local v5       #pkgName:Ljava/lang/String;
    :catch_f0
    move-exception v8

    goto :goto_c5
.end method

.method private enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 9
    .parameter "mcr"
    .parameter "postWriteRunnable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3339
    new-instance v2, Landroid/app/ContextImpl$SharedPreferencesImpl$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/app/ContextImpl$SharedPreferencesImpl$1;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 3353
    .local v2, writeToDiskRunnable:Ljava/lang/Runnable;
    if-nez p2, :cond_1a

    move v0, v4

    .line 3357
    .local v0, isFromSyncCommit:Z
    :goto_a
    if-eqz v0, :cond_21

    .line 3358
    const/4 v1, 0x0

    .line 3359
    .local v1, wasEmpty:Z
    monitor-enter p0

    .line 3360
    :try_start_e
    iget v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v3, v4, :cond_1c

    move v1, v4

    .line 3361
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1e

    .line 3362
    if-eqz v1, :cond_21

    .line 3363
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3369
    .end local v1           #wasEmpty:Z
    :goto_19
    return-void

    .end local v0           #isFromSyncCommit:Z
    :cond_1a
    move v0, v5

    .line 3353
    goto :goto_a

    .restart local v0       #isFromSyncCommit:Z
    .restart local v1       #wasEmpty:Z
    :cond_1c
    move v1, v5

    .line 3360
    goto :goto_13

    .line 3361
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v3

    .line 3368
    .end local v1           #wasEmpty:Z
    :cond_21
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method private writeToFile(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 11
    .parameter "mcr"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "writeToFile: Got exception:"

    const-string v7, "ApplicationContext"

    .line 3426
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 3427
    iget-boolean v3, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    if-nez v3, :cond_17

    .line 3432
    invoke-virtual {p1, v4}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    .line 3483
    :goto_16
    return-void

    .line 3435
    :cond_17
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_53

    .line 3436
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 3437
    const-string v3, "ApplicationContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to backup file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    invoke-virtual {p1, v6}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto :goto_16

    .line 3443
    :cond_53
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3451
    :cond_58
    :try_start_58
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v3}, Landroid/app/ContextImpl$SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 3452
    .local v2, str:Ljava/io/FileOutputStream;
    if-nez v2, :cond_9e

    .line 3453
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_64} :catch_db

    goto :goto_16

    .line 3471
    .end local v2           #str:Ljava/io/FileOutputStream;
    :catch_65
    move-exception v3

    move-object v0, v3

    .line 3472
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "ApplicationContext"

    const-string/jumbo v3, "writeToFile: Got exception:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3477
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6f
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 3478
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_99

    .line 3479
    const-string v3, "ApplicationContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_99
    invoke-virtual {p1, v6}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto/16 :goto_16

    .line 3456
    .restart local v2       #str:Ljava/io/FileOutputStream;
    :cond_9e
    :try_start_9e
    iget-object v3, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v3, v2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 3457
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3458
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3459
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    const/4 v5, 0x0

    #calls: Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->access$900(Ljava/lang/String;II)V

    .line 3460
    new-instance v1, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v1}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 3461
    .local v1, stat:Landroid/os/FileUtils$FileStatus;
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 3462
    monitor-enter p0
    :try_end_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_c7} :catch_65
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_c7} :catch_db

    .line 3463
    :try_start_c7
    iget-wide v3, v1, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    .line 3464
    iget-wide v3, v1, Landroid/os/FileUtils$FileStatus;->size:J

    iput-wide v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatSize:J

    .line 3465
    monitor-exit p0
    :try_end_d0
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_e6

    .line 3468
    :cond_d0
    :try_start_d0
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3469
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_d9} :catch_65
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d9} :catch_db

    goto/16 :goto_16

    .line 3473
    .end local v1           #stat:Landroid/os/FileUtils$FileStatus;
    .end local v2           #str:Ljava/io/FileOutputStream;
    :catch_db
    move-exception v3

    move-object v0, v3

    .line 3474
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ApplicationContext"

    const-string/jumbo v3, "writeToFile: Got exception:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    .line 3465
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #stat:Landroid/os/FileUtils$FileStatus;
    .restart local v2       #str:Ljava/io/FileOutputStream;
    :catchall_e6
    move-exception v3

    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw v3
    :try_end_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e8 .. :try_end_e9} :catch_65
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_e9} :catch_db
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 3117
    monitor-enter p0

    .line 3118
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 3119
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 3123
    new-instance v0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 3078
    monitor-enter p0

    .line 3080
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 3081
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3110
    monitor-enter p0

    .line 3111
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3112
    .local v0, v:Ljava/lang/Boolean;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    move v1, p2

    goto :goto_f

    .line 3113
    .end local v0           #v:Ljava/lang/Boolean;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3104
    monitor-enter p0

    .line 3105
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3106
    .local v0, v:Ljava/lang/Float;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    move v1, p2

    goto :goto_f

    .line 3107
    .end local v0           #v:Ljava/lang/Float;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3092
    monitor-enter p0

    .line 3093
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3094
    .local v0, v:Ljava/lang/Integer;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    move v1, p2

    goto :goto_f

    .line 3095
    .end local v0           #v:Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 7
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3098
    monitor-enter p0

    .line 3099
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3100
    .local v0, v:Ljava/lang/Long;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_f
    monitor-exit p0

    return-wide v1

    :cond_11
    move-wide v1, p2

    goto :goto_f

    .line 3101
    .end local v0           #v:Ljava/lang/Long;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3085
    monitor-enter p0

    .line 3086
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3087
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_e

    move-object v1, v0

    :goto_c
    monitor-exit p0

    return-object v1

    :cond_e
    move-object v1, p2

    goto :goto_c

    .line 3088
    .end local v0           #v:Ljava/lang/String;
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public hasFileChangedUnexpectedly()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3036
    monitor-enter p0

    .line 3037
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-lez v1, :cond_a

    .line 3040
    monitor-exit p0

    move v1, v5

    .line 3048
    :goto_9
    return v1

    .line 3042
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    .line 3043
    new-instance v0, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v0}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 3044
    .local v0, stat:Landroid/os/FileUtils$FileStatus;
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v6

    .line 3045
    goto :goto_9

    .line 3042
    .end local v0           #stat:Landroid/os/FileUtils$FileStatus;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    .line 3047
    .restart local v0       #stat:Landroid/os/FileUtils$FileStatus;
    :cond_21
    monitor-enter p0

    .line 3048
    :try_start_22
    iget-wide v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    iget-wide v3, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_32

    iget-wide v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatSize:J

    iget-wide v3, v0, Landroid/os/FileUtils$FileStatus;->size:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_38

    :cond_32
    move v1, v6

    :goto_33
    monitor-exit p0

    goto :goto_9

    .line 3049
    :catchall_35
    move-exception v1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_35

    throw v1

    :cond_38
    move v1, v5

    .line 3048
    goto :goto_33
.end method

.method isLoaded()Z
    .registers 2

    .prologue
    .line 3028
    monitor-enter p0

    .line 3029
    :try_start_1
    iget-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    monitor-exit p0

    return v0

    .line 3030
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 3066
    monitor-enter p0

    .line 3067
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    monitor-exit p0

    .line 3069
    return-void

    .line 3068
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method replace(Ljava/util/Map;Landroid/os/FileUtils$FileStatus;)V
    .registers 5
    .parameter "newContents"
    .parameter "stat"

    .prologue
    .line 3053
    monitor-enter p0

    .line 3054
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    .line 3055
    if-eqz p1, :cond_8

    .line 3056
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 3058
    :cond_8
    if-eqz p2, :cond_12

    .line 3059
    iget-wide v0, p2, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    .line 3060
    iget-wide v0, p2, Landroid/os/FileUtils$FileStatus;->size:J

    iput-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatSize:J

    .line 3062
    :cond_12
    monitor-exit p0

    .line 3063
    return-void

    .line 3062
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 3072
    monitor-enter p0

    .line 3073
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    monitor-exit p0

    .line 3075
    return-void

    .line 3074
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
