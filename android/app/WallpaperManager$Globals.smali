.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .parameter "looper"

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 181
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 182
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 183
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 231
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v4, params:Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v4}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 233
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_55

    .line 234
    const-string/jumbo v6, "width"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 235
    .local v5, width:I
    const-string v6, "height"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 237
    .local v2, height:I
    if-lez v5, :cond_21

    if-gtz v2, :cond_37

    .line 240
    :cond_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_54

    move-result-object v0

    .line 243
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_54

    .line 246
    :goto_2e
    if-eqz v0, :cond_35

    .line 247
    :try_start_30
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_35
    move-object v6, v0

    .line 268
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :goto_36
    return-object v6

    .line 254
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :cond_37
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 256
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 257
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_4b} :catch_54

    move-result-object v0

    .line 260
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_54

    .line 264
    :goto_4f
    :try_start_4f
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_54

    move-result-object v6

    goto :goto_36

    .line 266
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :catch_54
    move-exception v6

    :cond_55
    move-object v6, v9

    .line 268
    goto :goto_36

    .line 244
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :catch_57
    move-exception v6

    goto :goto_2e

    .line 261
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_59
    move-exception v6

    goto :goto_4f
.end method

.method private getCustomerWallpaperLocked(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 7
    .parameter "context"

    .prologue
    const v4, 0x1080169

    .line 271
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 273
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 275
    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #is:Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    .line 282
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_16
    return-object v2

    .line 276
    .end local v2           #is:Ljava/io/InputStream;
    :catch_17
    move-exception v3

    move-object v0, v3

    .line 277
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 278
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_16

    .line 280
    .end local v0           #e:Ljava/io/IOException;
    :cond_22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_16
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 289
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCustomerWallpaperLocked(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    .line 290
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_4f

    .line 291
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 292
    .local v5, width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v2

    .line 294
    .local v2, height:I
    if-lez v5, :cond_17

    if-gtz v2, :cond_29

    .line 297
    :cond_17
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_4e

    move-result-object v0

    .line 299
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_4e

    .line 302
    :goto_20
    if-eqz v0, :cond_27

    .line 303
    :try_start_22
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_27
    move-object v6, v0

    .line 328
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :goto_28
    return-object v6

    .line 310
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :cond_29
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 311
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 312
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 313
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_39} :catch_4e

    move-result-object v0

    .line 315
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_4e

    .line 320
    :goto_3d
    :try_start_3d
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_40
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3d .. :try_end_40} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_4e

    move-result-object v6

    goto :goto_28

    .line 321
    :catch_42
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_43
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t generate default bitmap"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4e

    move-object v6, v0

    .line 323
    goto :goto_28

    .line 326
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :catch_4e
    move-exception v6

    :cond_4f
    move-object v6, v8

    .line 328
    goto :goto_28

    .line 300
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catch_51
    move-exception v6

    goto :goto_20

    .line 316
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_53
    move-exception v6

    goto :goto_3d
.end method


# virtual methods
.method public onWallpaperChanged()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 210
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 225
    :goto_8
    return-object v1

    .line 212
    :cond_9
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    .line 213
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_8

    .line 226
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1

    .line 215
    :cond_14
    const/4 v1, 0x0

    :try_start_15
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_11

    .line 217
    :try_start_17
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1d} :catch_2d

    .line 221
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_39

    if-eqz p2, :cond_39

    .line 222
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 223
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_8

    .line 218
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 219
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 225
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_39
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_11

    goto :goto_8
.end method
