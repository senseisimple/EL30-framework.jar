.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3

.field private static final localLOGV:Z

.field private static sNoTranspWhenZOrderOnTop:Z


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDestroyReportNeeded:Z

.field mDrawingStopped:Z

.field mFormat:I

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field mNewSurfaceNeeded:Z

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mType:I

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 938
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/SurfaceView;->sNoTranspWhenZOrderOnTop:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 169
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 111
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 113
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 115
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 140
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 142
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 143
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 147
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 148
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 150
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 151
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 155
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 156
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 157
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 159
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 684
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 170
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 111
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 113
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 115
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 140
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 142
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 143
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 147
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 148
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 150
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 151
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 155
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 156
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 157
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 159
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 684
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 175
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 111
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 113
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 115
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 140
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 142
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 143
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 147
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 148
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 150
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 151
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 155
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 156
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 157
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 159
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 684
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 180
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 185
    return-void
.end method

.method private reportSurfaceDestroyed()V
    .registers 8

    .prologue
    .line 600
    iget-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    if-eqz v5, :cond_2a

    .line 601
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 603
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 604
    :try_start_a
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/view/SurfaceHolder$Callback;

    .line 605
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 606
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_27

    .line 607
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1b
    if-ge v3, v4, :cond_2a

    aget-object v1, v0, v3

    .line 608
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 606
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_27
    move-exception v6

    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v6

    .line 611
    :cond_2a
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 612
    return-void
.end method

.method public static setNoTranspWhenZOrderOnTop(Z)V
    .registers 1
    .parameter "b"

    .prologue
    .line 935
    sput-boolean p0, Landroid/view/SurfaceView;->sNoTranspWhenZOrderOnTop:Z

    .line 936
    return-void
.end method

.method private super_mLeft()I
    .registers 2

    .prologue
    .line 908
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method private super_mTop()I
    .registers 2

    .prologue
    .line 911
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method private updateWindow(ZZ)V
    .registers 9
    .parameter "force"
    .parameter "redrawNeeded"

    .prologue
    const/4 v3, 0x0

    .line 408
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceView;->updateWindow(ZZZII)V

    .line 409
    return-void
.end method


# virtual methods
.method public copySurfaceTo(Landroid/view/ViewRoot;)V
    .registers 6
    .parameter "viewRoot"

    .prologue
    .line 946
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 947
    .local v0, myWindow:Lcom/android/internal/view/BaseIWindow;
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 948
    .local v2, s:Landroid/view/IWindowSession;
    if-eqz v2, :cond_13

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 949
    iget-object v1, p1, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    .line 950
    .local v1, rootWindow:Landroid/view/IWindow;
    if-eqz v1, :cond_13

    .line 951
    iget-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowSession;->copySurface(Landroid/view/IWindow;Landroid/view/IWindow;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 956
    .end local v0           #myWindow:Lcom/android/internal/view/BaseIWindow;
    .end local v1           #rootWindow:Landroid/view/IWindow;
    .end local v2           #s:Landroid/view/IWindowSession;
    :cond_13
    :goto_13
    return-void

    .line 954
    :catch_14
    move-exception v3

    goto :goto_13
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 343
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 345
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_14

    .line 347
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 351
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 352
    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 353
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 354
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 331
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_12

    .line 333
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_12

    .line 335
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 338
    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 339
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11
    .parameter "region"

    .prologue
    .line 304
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_b

    .line 305
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 326
    :goto_a
    return v0

    .line 308
    :cond_b
    const/4 v7, 0x1

    .line 309
    .local v7, opaque:Z
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_21

    .line 311
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 323
    :cond_16
    :goto_16
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 324
    const/4 v7, 0x0

    :cond_1f
    move v0, v7

    .line 326
    goto :goto_a

    .line 312
    :cond_21
    if-eqz p1, :cond_16

    .line 313
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 314
    .local v8, w:I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 315
    .local v6, h:I
    if-lez v8, :cond_16

    if-lez v6, :cond_16

    .line 316
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 318
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 319
    .local v1, l:I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 320
    .local v2, t:I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_16
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 616
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 617
    return-void
.end method

.method protected hideSurface()V
    .registers 14

    .prologue
    .line 253
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_3b

    .line 254
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 256
    :try_start_d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 257
    .local v12, metrics:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 258
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Landroid/view/SurfaceView;->mWidth:I

    iget v4, p0, Landroid/view/SurfaceView;->mHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v11, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v0 .. v11}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_36} :catch_43

    .line 263
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    :goto_38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 266
    :cond_3b
    return-void

    .line 263
    :catchall_3c
    move-exception v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 260
    :catch_43
    move-exception v0

    .line 263
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_38
.end method

.method public isFixedSize()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 627
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveChildWindowOnMyFlip(Landroid/view/SurfaceView;IIFI)V
    .registers 13
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 856
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 857
    .local v1, myWindow:Lcom/android/internal/view/BaseIWindow;
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 858
    .local v0, s:Landroid/view/IWindowSession;
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1d

    .line 859
    iget-object v2, p1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 860
    .local v2, childWindow:Lcom/android/internal/view/BaseIWindow;
    if-eqz v2, :cond_1d

    .line 861
    invoke-direct {p1}, Landroid/view/SurfaceView;->super_mLeft()I

    move-result v3

    add-int/2addr v3, p2

    invoke-direct {p1}, Landroid/view/SurfaceView;->super_mTop()I

    move-result v4

    add-int/2addr v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindowSession;->moveChildWindowOnMyFlip(Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 867
    .end local v0           #s:Landroid/view/IWindowSession;
    .end local v1           #myWindow:Lcom/android/internal/view/BaseIWindow;
    .end local v2           #childWindow:Lcom/android/internal/view/BaseIWindow;
    :cond_1d
    :goto_1d
    return-void

    .line 865
    :catch_1e
    move-exception v3

    goto :goto_1d
.end method

.method public moveChildWindowOnMyFlip(Landroid/view/SurfaceView;IIIIFFFI)V
    .registers 21
    .parameter "childView"
    .parameter "parentViewLeft"
    .parameter "parentViewTop"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 883
    .local v1, myWindow:Lcom/android/internal/view/BaseIWindow;
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 884
    .local v0, s:Landroid/view/IWindowSession;
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eqz p1, :cond_34

    .line 885
    iget-object v2, p1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 886
    .local v2, childWindow:Lcom/android/internal/view/BaseIWindow;
    if-eqz v2, :cond_34

    .line 888
    invoke-direct {p1}, Landroid/view/SurfaceView;->super_mLeft()I

    move-result v3

    sub-int/2addr v3, p4

    int-to-float v3, v3

    sub-float v7, v3, p6

    .line 889
    .local v7, distX:F
    invoke-direct {p1}, Landroid/view/SurfaceView;->super_mTop()I

    move-result v3

    sub-int v3, v3, p5

    int-to-float v3, v3

    sub-float v8, v3, p7

    .line 892
    .local v8, distY:F
    mul-float v7, v7, p8

    .line 893
    mul-float v8, v8, p8

    .line 896
    add-float v3, v7, p6

    float-to-int v9, v3

    .line 897
    .local v9, x:I
    add-float v3, v8, p7

    float-to-int v10, v3

    .line 899
    .local v10, y:I
    add-int v3, v9, p2

    add-int v4, v10, p3

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindowSession;->moveChildWindowOnMyFlip(Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_35

    .line 905
    .end local v0           #s:Landroid/view/IWindowSession;
    .end local v1           #myWindow:Lcom/android/internal/view/BaseIWindow;
    .end local v2           #childWindow:Lcom/android/internal/view/BaseIWindow;
    .end local v7           #distX:F
    .end local v8           #distY:F
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_34
    :goto_34
    return-void

    .line 903
    :catch_35
    move-exception v3

    goto :goto_34
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 199
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 201
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    sget-boolean v0, Landroid/view/SurfaceView;->sNoTranspWhenZOrderOnTop:Z

    if-nez v0, :cond_12

    .line 202
    :cond_d
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 205
    :cond_12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 206
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 207
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SurfaceView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    :goto_2e
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 209
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 210
    return-void

    .line 208
    :cond_3a
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 271
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 272
    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 273
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 274
    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_1f

    .line 276
    :try_start_16
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_29

    .line 279
    :goto_1d
    iput-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 281
    :cond_1f
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 282
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 284
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 285
    return-void

    .line 277
    :catch_29
    move-exception v0

    goto :goto_1d
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 289
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 290
    .local v1, width:I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 291
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 292
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 215
    if-nez p1, :cond_19

    move v0, v2

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 216
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1b

    move v0, v2

    :goto_13
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 217
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 218
    return-void

    :cond_19
    move v0, v1

    .line 215
    goto :goto_8

    :cond_1b
    move v0, v1

    .line 216
    goto :goto_13
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 298
    .local v0, result:Z
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 299
    return v0
.end method

.method public setSurfaceFlags(II)V
    .registers 6
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 834
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 835
    .local v1, w:Lcom/android/internal/view/BaseIWindow;
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 836
    .local v0, s:Landroid/view/IWindowSession;
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 837
    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->setSurfaceFlags(Landroid/view/IWindow;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 841
    .end local v0           #s:Landroid/view/IWindowSession;
    .end local v1           #w:Lcom/android/internal/view/BaseIWindow;
    :cond_b
    :goto_b
    return-void

    .line 839
    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    if-nez p1, :cond_19

    move v0, v2

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 224
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1b

    move v0, v2

    :goto_13
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 225
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 226
    return-void

    :cond_19
    move v0, v1

    .line 223
    goto :goto_8

    :cond_1b
    move v0, v1

    .line 224
    goto :goto_13
.end method

.method public setWindowType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 403
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 404
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .registers 3
    .parameter "isMediaOverlay"

    .prologue
    .line 368
    if-eqz p1, :cond_7

    const/16 v0, 0x3ec

    :goto_4
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 371
    return-void

    .line 368
    :cond_7
    const/16 v0, 0x3e9

    goto :goto_4
.end method

.method public setZOrderOnTop(Z)V
    .registers 5
    .parameter "onTop"

    .prologue
    .line 387
    if-eqz p1, :cond_10

    .line 388
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 390
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 395
    :goto_f
    return-void

    .line 392
    :cond_10
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 393
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_f
.end method

.method protected showSurface()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_9

    .line 239
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 241
    :cond_9
    return-void
.end method

.method public updateWindow(ZZZII)V
    .registers 44
    .parameter "force"
    .parameter "redrawNeeded"
    .parameter "forceParentCoords"
    .parameter "parentX"
    .parameter "parentY"

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    move v5, v0

    if-nez v5, :cond_8

    .line 597
    :cond_7
    :goto_7
    return-void

    .line 421
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    check-cast v35, Landroid/view/ViewRoot;

    .line 422
    .local v35, viewRoot:Landroid/view/ViewRoot;
    if-eqz v35, :cond_1e

    .line 423
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 426
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 427
    .local v30, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-nez v5, :cond_37

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_48

    .line 428
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 431
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v26, v0

    .line 432
    .local v26, myWidth:I
    if-gtz v26, :cond_54

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v26

    .line 433
    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v25, v0

    .line 434
    .local v25, myHeight:I
    if-gtz v25, :cond_60

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v25

    .line 436
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 438
    if-eqz p3, :cond_8b

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v7, v0

    add-int v7, v7, p4

    aput v7, v5, v6

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v7, v0

    add-int v7, v7, p5

    aput v7, v5, v6

    .line 443
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v5, v0

    if-nez v5, :cond_36f

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 444
    .local v21, creating:Z
    :goto_95
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v6, v0

    if-eq v5, v6, :cond_374

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 445
    .local v22, formatChanged:Z
    :goto_a4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v26

    if-ne v0, v1, :cond_b8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v25

    if-eq v0, v1, :cond_379

    :cond_b8
    const/4 v5, 0x1

    move/from16 v31, v5

    .line 446
    .local v31, sizeChanged:Z
    :goto_bb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move v6, v0

    if-ne v5, v6, :cond_ce

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_37e

    :cond_ce
    const/4 v5, 0x1

    move/from16 v37, v5

    .line 448
    .local v37, visibleChanged:Z
    :goto_d1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mType:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v6, v0

    if-eq v5, v6, :cond_383

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 449
    .local v34, typeChanged:Z
    :goto_e0
    if-nez p1, :cond_11a

    if-nez v21, :cond_11a

    if-nez v22, :cond_11a

    if-nez v31, :cond_11a

    if-nez v37, :cond_11a

    if-nez v34, :cond_11a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_11a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v5, v6, :cond_11a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    move v5, v0

    if-nez v5, :cond_11a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move v5, v0

    if-nez v5, :cond_11a

    if-eqz p2, :cond_7

    .line 460
    :cond_11a
    :try_start_11a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 461
    .local v36, visible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLeft:I

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mTop:I

    .line 463
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 464
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mType:I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-eqz v5, :cond_1a2

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 479
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x4218

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_1d7

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 491
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v5, v0

    if-nez v5, :cond_22b

    .line 494
    new-instance v5, Landroid/view/SurfaceView$MyWindow;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWindowType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v8, v0

    if-eqz v8, :cond_388

    const/4 v8, 0x0

    :goto_223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    .line 501
    :cond_22b
    if-eqz v37, :cond_239

    if-eqz v36, :cond_236

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_239

    .line 502
    :cond_236
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->reportSurfaceDestroyed()V

    .line 505
    :cond_239
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_247} :catch_3d7

    .line 512
    const/4 v5, 0x0

    :try_start_248
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 513
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v29, v0

    .line 514
    .local v29, reportDrawNeeded:Z
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 515
    if-nez v36, :cond_38c

    const/4 v5, 0x1

    :goto_25c
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v9, v0

    if-eqz v36, :cond_38f

    const/4 v10, 0x0

    :goto_27d
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-interface/range {v5 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v28

    .line 521
    .local v28, relayoutResult:I
    and-int/lit8 v5, v28, 0x2

    if-eqz v5, :cond_2a6

    .line 522
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 528
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-nez v5, :cond_393

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 539
    :goto_2dd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    .line 540
    .local v33, surfaceWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    .line 541
    .local v32, surfaceHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v33

    if-ne v0, v1, :cond_305

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v32

    if-eq v0, v1, :cond_3da

    :cond_305
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 543
    .local v27, realSizeChanged:Z
    :goto_308
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 544
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_314
    .catchall {:try_start_248 .. :try_end_314} :catchall_3cd

    .line 546
    :try_start_314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_31c
    .catch Landroid/os/RemoteException; {:try_start_314 .. :try_end_31c} :catch_3d7

    .line 550
    or-int v5, v21, v29

    or-int p2, p2, v5

    .line 552
    if-eqz v36, :cond_456

    .line 553
    const/4 v5, 0x1

    :try_start_323
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v5, v0

    monitor-enter v5
    :try_end_32e
    .catchall {:try_start_323 .. :try_end_32e} :catchall_3e2

    .line 557
    :try_start_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v0, v6

    new-array v0, v0, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v20, v0

    .line 558
    .local v20, callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 559
    monitor-exit v5
    :try_end_348
    .catchall {:try_start_32e .. :try_end_348} :catchall_3df

    .line 561
    if-eqz v37, :cond_3f9

    .line 562
    const/4 v5, 0x1

    :try_start_34b
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 563
    move-object/from16 v18, v20

    .local v18, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_359
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3f9

    aget-object v19, v18, v23

    .line 564
    .local v19, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_36c
    .catchall {:try_start_34b .. :try_end_36c} :catchall_3e2

    .line 563
    add-int/lit8 v23, v23, 0x1

    goto :goto_359

    .line 443
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v20           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #creating:Z
    .end local v22           #formatChanged:Z
    .end local v23           #i$:I
    .end local v24           #len$:I
    .end local v27           #realSizeChanged:Z
    .end local v28           #relayoutResult:I
    .end local v29           #reportDrawNeeded:Z
    .end local v31           #sizeChanged:Z
    .end local v32           #surfaceHeight:I
    .end local v33           #surfaceWidth:I
    .end local v34           #typeChanged:Z
    .end local v36           #visible:Z
    .end local v37           #visibleChanged:Z
    :cond_36f
    const/4 v5, 0x0

    move/from16 v21, v5

    goto/16 :goto_95

    .line 444
    .restart local v21       #creating:Z
    :cond_374
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_a4

    .line 445
    .restart local v22       #formatChanged:Z
    :cond_379
    const/4 v5, 0x0

    move/from16 v31, v5

    goto/16 :goto_bb

    .line 446
    .restart local v31       #sizeChanged:Z
    :cond_37e
    const/4 v5, 0x0

    move/from16 v37, v5

    goto/16 :goto_d1

    .line 448
    .restart local v37       #visibleChanged:Z
    :cond_383
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_e0

    .line 497
    .restart local v34       #typeChanged:Z
    .restart local v36       #visible:Z
    :cond_388
    const/16 v8, 0x8

    goto/16 :goto_223

    .line 515
    .restart local v29       #reportDrawNeeded:Z
    :cond_38c
    const/4 v5, 0x0

    goto/16 :goto_25c

    .line 517
    :cond_38f
    const/16 v10, 0x8

    goto/16 :goto_27d

    .line 534
    .restart local v28       #relayoutResult:I
    :cond_393
    :try_start_393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v17, v0

    .line 535
    .local v17, appInvertedScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I
    :try_end_3cb
    .catchall {:try_start_393 .. :try_end_3cb} :catchall_3cd

    goto/16 :goto_2dd

    .line 546
    .end local v17           #appInvertedScale:F
    .end local v28           #relayoutResult:I
    .end local v29           #reportDrawNeeded:Z
    :catchall_3cd
    move-exception v5

    :try_start_3ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
    :try_end_3d7
    .catch Landroid/os/RemoteException; {:try_start_3ce .. :try_end_3d7} :catch_3d7

    .line 590
    .end local v36           #visible:Z
    :catch_3d7
    move-exception v5

    goto/16 :goto_7

    .line 541
    .restart local v28       #relayoutResult:I
    .restart local v29       #reportDrawNeeded:Z
    .restart local v32       #surfaceHeight:I
    .restart local v33       #surfaceWidth:I
    .restart local v36       #visible:Z
    :cond_3da
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_308

    .line 559
    .restart local v27       #realSizeChanged:Z
    :catchall_3df
    move-exception v6

    :try_start_3e0
    monitor-exit v5
    :try_end_3e1
    .catchall {:try_start_3e0 .. :try_end_3e1} :catchall_3df

    :try_start_3e1
    throw v6
    :try_end_3e2
    .catchall {:try_start_3e1 .. :try_end_3e2} :catchall_3e2

    .line 585
    :catchall_3e2
    move-exception v5

    const/4 v6, 0x0

    :try_start_3e4
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 586
    if-eqz p2, :cond_3f8

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 585
    :cond_3f8
    throw v5
    :try_end_3f9
    .catch Landroid/os/RemoteException; {:try_start_3e4 .. :try_end_3f9} :catch_3d7

    .line 567
    .restart local v20       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_3f9
    if-nez v21, :cond_403

    if-nez v22, :cond_403

    if-nez v31, :cond_403

    if-nez v37, :cond_403

    if-eqz v27, :cond_42c

    .line 569
    :cond_403
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    :try_start_405
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v23, 0x0

    .restart local v23       #i$:I
    :goto_40c
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_42c

    aget-object v19, v18, v23

    .line 570
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v6, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v26

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 569
    add-int/lit8 v23, v23, 0x1

    goto :goto_40c

    .line 573
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v23           #i$:I
    .end local v24           #len$:I
    :cond_42c
    if-eqz p2, :cond_45e

    .line 574
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v23, 0x0

    .restart local v23       #i$:I
    :goto_437
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_45e

    aget-object v19, v18, v23

    .line 575
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/SurfaceHolder$Callback2;

    move v5, v0

    if-eqz v5, :cond_453

    .line 576
    check-cast v19, Landroid/view/SurfaceHolder$Callback2;

    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 574
    :cond_453
    add-int/lit8 v23, v23, 0x1

    goto :goto_437

    .line 582
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v23           #i$:I
    .end local v24           #len$:I
    :cond_456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->release()V
    :try_end_45e
    .catchall {:try_start_405 .. :try_end_45e} :catchall_3e2

    .line 585
    :cond_45e
    const/4 v5, 0x0

    :try_start_45f
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 586
    if-eqz p2, :cond_7

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_473
    .catch Landroid/os/RemoteException; {:try_start_45f .. :try_end_473} :catch_3d7

    goto/16 :goto_7
.end method
