.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final CHARGINGBLOCK_CLEAR_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/chargingblock_clear"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field private static final WATCHING_VIDEO:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateWhenSuspended:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 59
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 82
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 83
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 86
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 87
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 302
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 313
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 375
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 389
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 442
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 484
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 116
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 82
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 83
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 86
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 87
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 302
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 313
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 375
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 389
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 442
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 484
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 126
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1900(Landroid/widget/VideoView;)Landroid/view/SurfaceHolder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/VideoView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/VideoView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Landroid/widget/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Landroid/widget/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .registers 4

    .prologue
    .line 293
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_2a

    .line 294
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 295
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 297
    .local v0, anchorView:Landroid/view/View;
    :goto_1c
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 298
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 300
    .end local v0           #anchorView:Landroid/view/View;
    :cond_2a
    return-void

    :cond_2b
    move-object v0, p0

    .line 295
    goto :goto_1c
.end method

.method private batteryChargingblock_clear(Z)V
    .registers 16
    .parameter "value"

    .prologue
    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    .line 719
    const/4 v3, 0x0

    .line 720
    .local v3, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 721
    .local v1, fr:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 722
    .local v9, out:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 726
    .local v6, in:Ljava/io/BufferedReader;
    iget-object v11, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "batteryChargingblock_clear "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_1e
    new-instance v2, Ljava/io/FileReader;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    invoke-direct {v2, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_6a

    .line 730
    .end local v1           #fr:Ljava/io/FileReader;
    .local v2, fr:Ljava/io/FileReader;
    :try_start_25
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_74

    .line 732
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :try_start_2a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 733
    .local v8, line:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 734
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 735
    .local v5, icb:I
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 737
    if-eqz p1, :cond_60

    .line 738
    iget-object v11, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v12, "Video start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    or-int/lit8 v5, v5, 0x2

    .line 746
    :goto_44
    new-instance v4, Ljava/io/FileWriter;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4c} :catch_78

    .line 747
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v4, fw:Ljava/io/FileWriter;
    :try_start_4c
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_7d

    .line 748
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_51
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_83

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .line 753
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :goto_5f
    return-void

    .line 742
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :cond_60
    :try_start_60
    iget-object v11, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v12, "Video stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_78

    .line 743
    and-int/lit8 v5, v5, -0x3

    goto :goto_44

    .line 750
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #icb:I
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #line:Ljava/lang/String;
    .restart local v1       #fr:Ljava/io/FileReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_6a
    move-exception v11

    move-object v0, v11

    .line 751
    .local v0, e:Ljava/lang/Exception;
    :goto_6c
    iget-object v11, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v12, " Can\'t open /sys/class/power_supply/battery/chargingblock_clear"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 750
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_74
    move-exception v11

    move-object v0, v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_6c

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_78
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_6c

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catch_7d
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_6c

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_83
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_6c
.end method

.method private initVideoView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 182
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 183
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 184
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 185
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 186
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 188
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 189
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 191
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_34

    .line 192
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 196
    :cond_34
    return-void
.end method

.method private isInPlaybackState()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 710
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v0, v2, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private openVideo()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v9, "Unable to open content: "

    .line 232
    iget-object v2, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_e

    .line 282
    :cond_d
    :goto_d
    return-void

    .line 238
    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string/jumbo v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    iget-object v2, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_32

    .line 244
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 250
    :cond_32
    invoke-direct {p0, v7}, Landroid/widget/VideoView;->release(Z)V

    .line 252
    :try_start_35
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 253
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 254
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 255
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/VideoView;->mDuration:I

    .line 256
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 257
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 258
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 259
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 260
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 261
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 262
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 263
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 264
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 267
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 268
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_8e} :catch_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_8e} :catch_b9

    goto/16 :goto_d

    .line 269
    :catch_90
    move-exception v2

    move-object v0, v2

    .line 270
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    iput v6, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 272
    iput v6, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 273
    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_d

    .line 275
    .end local v0           #ex:Ljava/io/IOException;
    :catch_b9
    move-exception v2

    move-object v0, v2

    .line 276
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    iput v6, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 278
    iput v6, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 279
    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_d
.end method

.method private release(Z)V
    .registers 4
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 537
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 538
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 540
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 541
    if-eqz p1, :cond_18

    .line 542
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 545
    :cond_18
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 597
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 601
    :goto_d
    return-void

    .line 599
    :cond_e
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_d
.end method


# virtual methods
.method public adjustVolumeGain(Ljava/lang/String;)V
    .registers 5
    .parameter "device"

    .prologue
    .line 604
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "situation=7;device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mVolume:F

    .line 605
    iget v0, p0, Landroid/widget/VideoView;->mVolume:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/VideoView;->mVolume:F

    .line 606
    :cond_2b
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/widget/VideoView;->mVolume:F

    iget v2, p0, Landroid/widget/VideoView;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 607
    return-void
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 758
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 762
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 766
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 704
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 706
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 683
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 684
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 686
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 671
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 672
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    if-lez v0, :cond_d

    .line 673
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 679
    :goto_c
    return v0

    .line 675
    :cond_d
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 676
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_c

    .line 678
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 679
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_c
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 699
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 566
    const/4 v1, 0x4

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x18

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x19

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x52

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3d

    move v0, v2

    .line 572
    .local v0, isKeyCodeSupported:Z
    :goto_17
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_5d

    if-eqz v0, :cond_5d

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_5d

    .line 573
    const/16 v1, 0x4f

    if-eq p1, v1, :cond_2b

    const/16 v1, 0x55

    if-ne p1, v1, :cond_49

    .line 575
    :cond_2b
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 576
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 577
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    :goto_3b
    move v1, v2

    .line 592
    :goto_3c
    return v1

    .line 566
    .end local v0           #isKeyCodeSupported:Z
    :cond_3d
    const/4 v1, 0x0

    move v0, v1

    goto :goto_17

    .line 579
    .restart local v0       #isKeyCodeSupported:Z
    :cond_40
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 580
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_3b

    .line 583
    :cond_49
    const/16 v1, 0x56

    if-ne p1, v1, :cond_62

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 585
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 586
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 592
    :cond_5d
    :goto_5d
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3c

    .line 588
    :cond_62
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_5d
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 132
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 133
    .local v1, width:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 134
    .local v0, height:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v2, :cond_23

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v2, :cond_23

    .line 135
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_27

    .line 137
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 148
    :cond_23
    :goto_23
    invoke-virtual {p0, v1, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 149
    return-void

    .line 138
    :cond_27
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_23

    .line 140
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_23
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_d

    .line 550
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 552
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_d

    .line 558
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 560
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 624
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 625
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->batteryChargingblock_clear(Z)V

    .line 629
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 630
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 633
    :cond_1a
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 634
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 6
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 152
    move v0, p1

    .line 153
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 154
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 156
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_16

    .line 177
    :goto_c
    return v0

    .line 161
    :sswitch_d
    move v0, p1

    .line 162
    goto :goto_c

    .line 169
    :sswitch_f
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    goto :goto_c

    .line 174
    :sswitch_14
    move v0, v2

    goto :goto_c

    .line 156
    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_14
    .end sparse-switch
.end method

.method public resume()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 651
    iget-object v0, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_d

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_d

    .line 652
    const/4 v0, 0x7

    iput v0, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 667
    :cond_c
    :goto_c
    return-void

    .line 655
    :cond_d
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2e

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_2e

    .line 656
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->resume()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 657
    iget v0, p0, Landroid/widget/VideoView;->mStateWhenSuspended:I

    iput v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 658
    iget v0, p0, Landroid/widget/VideoView;->mStateWhenSuspended:I

    iput v0, p0, Landroid/widget/VideoView;->mTargetState:I

    goto :goto_c

    .line 660
    :cond_26
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v1, "Unable to resume video"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 664
    :cond_2e
    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    .line 665
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    goto :goto_c
.end method

.method public seekTo(I)V
    .registers 3
    .parameter "msec"

    .prologue
    .line 690
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 691
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 696
    :goto_e
    return-void

    .line 694
    :cond_f
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_e
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .registers 3
    .parameter "controller"

    .prologue
    .line 285
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 288
    :cond_9
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 289
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 290
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 468
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 469
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 481
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 482
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 457
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 458
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 199
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 200
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 204
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 211
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 213
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 214
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 215
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 216
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 611
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 613
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->batteryChargingblock_clear(Z)V

    .line 616
    const-string v0, ";device=0"

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->adjustVolumeGain(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 618
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 620
    :cond_17
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 621
    return-void
.end method

.method public stopPlayback()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    .line 221
    invoke-direct {p0, v1}, Landroid/widget/VideoView;->batteryChargingblock_clear(Z)V

    .line 223
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 224
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 226
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 227
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 229
    :cond_19
    return-void
.end method

.method public suspend()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 637
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 638
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->suspend()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 639
    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    iput v0, p0, Landroid/widget/VideoView;->mStateWhenSuspended:I

    .line 640
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 641
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 648
    :cond_17
    :goto_17
    return-void

    .line 643
    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 644
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 645
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v1, "Unable to suspend video. Release MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
