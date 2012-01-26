.class public Landroid/playready/playreadymanager/PlayReadyManager;
.super Ljava/lang/Object;
.source "PlayReadyManager.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "PLAYREADYRIGHTSMANAGER"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 139
    :try_start_0
    const-string/jumbo v1, "playready_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_6} :catch_7

    .line 143
    :goto_6
    return-void

    .line 140
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 141
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libsyncapp_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private native PlayReadyQueryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;
.end method


# virtual methods
.method public native AcquireLicense(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyLicenseErrors;
.end method

.method public native CheckIfPlayReadyFile(Ljava/lang/String;)Z
.end method

.method public native PassInitiator(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native UpdateTimeDiffData(JJ)Z
.end method

.method public native createHDSAndCerts()Z
.end method

.method public isPlayReadyFile(Ljava/lang/String;)Z
    .registers 4
    .parameter "filePath"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, result:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 36
    invoke-virtual {p0, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->CheckIfPlayReadyFile(Ljava/lang/String;)Z

    move-result v0

    .line 42
    :cond_10
    return v0
.end method

.method public queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    .registers 4
    .parameter "filePath"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, rightsInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    invoke-direct {p0, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->PlayReadyQueryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v0

    .line 55
    :cond_10
    return-object v0
.end method

.method public setSecureClockFromNitz(IIIIII)Z
    .registers 8
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, result:Z
    invoke-virtual/range {p0 .. p6}, Landroid/playready/playreadymanager/PlayReadyManager;->setSecureclockfromnitz(IIIIII)Z

    move-result v0

    .line 106
    return v0
.end method

.method public native setSecureclockfromnitz(IIIIII)Z
.end method

.method public updateSecureClock(JJ)Z
    .registers 6
    .parameter "beforeTime"
    .parameter "afterTime"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, result:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/playready/playreadymanager/PlayReadyManager;->UpdateTimeDiffData(JJ)Z

    move-result v0

    .line 69
    return v0
.end method
