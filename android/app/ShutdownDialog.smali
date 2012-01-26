.class public Landroid/app/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Landroid/os/Handler;

.field private rescount:I

.field private str:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    const/16 v0, 0xc8

    iput v0, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 74
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 77
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/app/ShutdownDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/app/ShutdownDialog;->rescount:I

    return v0
.end method

.method static synthetic access$008(Landroid/app/ShutdownDialog;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/app/ShutdownDialog;->rescount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/ShutdownDialog;->rescount:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ShutdownDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/ShutdownDialog;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v5, 0x0

    iput v5, p0, Landroid/app/ShutdownDialog;->rescount:I

    .line 99
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 100
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 102
    .local v4, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 103
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 105
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 107
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 108
    iget-object v5, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/app/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 113
    new-instance v1, Ljava/io/File;

    const-string v5, "//system/media/video/shutdown/shutdown.cfg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, fileCount:Ljava/io/File;
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 119
    :cond_44
    const/4 v2, 0x1

    .local v2, i:I
    :goto_45
    iget v5, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    if-ge v2, v5, :cond_75

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "//system/media/video/shutdown/shutdown_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ShutdownDialog;->str:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Landroid/app/ShutdownDialog;->str:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 132
    sub-int v5, v2, v7

    iput v5, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 142
    .end local v0           #f:Ljava/io/File;
    :cond_75
    new-instance v5, Landroid/app/ShutdownDialog$1;

    invoke-direct {v5, p0}, Landroid/app/ShutdownDialog$1;-><init>(Landroid/app/ShutdownDialog;)V

    iput-object v5, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 171
    return-void

    .line 136
    .restart local v0       #f:Ljava/io/File;
    :cond_7d
    iget v5, p0, Landroid/app/ShutdownDialog;->cntImages:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_45
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 178
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_11

    .line 179
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    :cond_11
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 186
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_21

    .line 187
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 190
    :cond_21
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V

    .line 202
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 208
    return-void
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 212
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 213
    return-void
.end method
