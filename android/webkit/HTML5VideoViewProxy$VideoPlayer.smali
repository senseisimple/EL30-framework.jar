.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoPlayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;
    }
.end annotation


# static fields
.field private static final TIMEUPDATE_PERIOD:I = 0xfa

.field static isVideoSelfEnded:Z

.field private static final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private static mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;

.field private static mTimer:Ljava/util/Timer;

.field private static mVideoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 127
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;

    invoke-direct {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000()Ljava/util/Timer;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/VideoView;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$200()Landroid/webkit/HTML5VideoViewProxy;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/HTML5VideoViewProxy;
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object p0
.end method

.method static synthetic access$300()Landroid/widget/FrameLayout;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400()Landroid/view/View;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Landroid/view/View;)Landroid/view/View;
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method public static getCurrentPosition()I
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, currentPosMs:I
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_b

    .line 233
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 235
    :cond_b
    return v0
.end method

.method public static isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z
    .registers 2
    .parameter "proxy"

    .prologue
    .line 227
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_12

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_12

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static onPrepared()V
    .registers 6

    .prologue
    const-wide/16 v2, 0xfa

    .line 276
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_a

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_b

    .line 283
    :cond_a
    :goto_a
    return-void

    .line 279
    :cond_b
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 280
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 282
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    goto :goto_a
.end method

.method public static pause(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 2
    .parameter "proxy"

    .prologue
    .line 245
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_12

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_12

    .line 246
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 247
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 249
    :cond_12
    return-void
.end method

.method public static play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;)V
    .registers 11
    .parameter "url"
    .parameter "time"
    .parameter "proxy"
    .parameter "client"

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 174
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v3, p2, :cond_14

    .line 175
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_13

    .line 176
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 224
    :cond_13
    :goto_13
    return-void

    .line 181
    :cond_14
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v3, :cond_1c

    .line 183
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    goto :goto_13

    .line 187
    :cond_1c
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 190
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    .line 191
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 195
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/widget/VideoView;

    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    .line 196
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v6}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    .line 197
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v4, Landroid/widget/MediaController;

    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 199
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, cookieValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 201
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_63

    .line 202
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    .restart local v1       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_63
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 207
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 208
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 209
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 210
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 211
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v3

    sput-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    .line 213
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    if-eqz v3, :cond_9d

    .line 214
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_9d
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    sput-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    .line 219
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 220
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {p3, v3, v4}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 223
    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->hideAll()V

    goto/16 :goto_13
.end method

.method public static resume(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 7
    .parameter "proxy"

    .prologue
    const-wide/16 v2, 0xfa

    .line 264
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_2d

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2d

    .line 265
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 266
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    .line 267
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_27

    .line 269
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 271
    :cond_27
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    :cond_2d
    return-void
.end method

.method public static seek(ILandroid/webkit/HTML5VideoViewProxy;)V
    .registers 3
    .parameter "time"
    .parameter "proxy"

    .prologue
    .line 239
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_f

    if-ltz p0, :cond_f

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_f

    .line 240
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 242
    :cond_f
    return-void
.end method

.method public static suspend(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 4
    .parameter "proxy"

    .prologue
    const/4 v2, 0x0

    .line 252
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_22

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_22

    .line 253
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 254
    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mTimer:Ljava/util/Timer;

    .line 255
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 256
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 257
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mLayout:Landroid/widget/FrameLayout;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 258
    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProgressView:Landroid/view/View;

    .line 261
    :cond_22
    return-void
.end method
