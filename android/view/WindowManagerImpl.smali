.class public Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_IN_TOUCH_MODE:I = 0x1

.field private static mWindowManager:Landroid/view/WindowManagerImpl;


# instance fields
.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRoot;

.field private mViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 393
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-direct {v0}, Landroid/view/WindowManagerImpl;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->mWindowManager:Landroid/view/WindowManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .registers 17
    .parameter "view"
    .parameter "params"
    .parameter "nest"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 126
    instance-of v8, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_e

    .line 127
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Params must be WindowManager.LayoutParams"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 131
    :cond_e
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 135
    .local v7, wparams:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    .line 137
    .local v5, panelParentView:Landroid/view/View;
    monitor-enter p0

    .line 145
    const/4 v8, 0x0

    :try_start_15
    invoke-direct {p0, p1, v8}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v3

    .line 146
    .local v3, index:I
    if-ltz v3, :cond_52

    .line 147
    if-nez p3, :cond_3f

    .line 148
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "View "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has already been added to the window manager."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 198
    .end local v3           #index:I
    :catchall_3c
    move-exception v8

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_3c

    throw v8

    .line 151
    .restart local v3       #index:I
    :cond_3f
    :try_start_3f
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v6, v8, v3

    .line 152
    .local v6, root:Landroid/view/ViewRoot;
    iget v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    .line 154
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewRoot;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 156
    monitor-exit p0

    .line 201
    :goto_51
    return-void

    .line 161
    .end local v6           #root:Landroid/view/ViewRoot;
    :cond_52
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_80

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7cf

    if-gt v8, v9, :cond_80

    .line 163
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v8, :cond_7e

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v8, v8

    move v1, v8

    .line 164
    .local v1, count:I
    :goto_66
    const/4 v2, 0x0

    .local v2, i:I
    :goto_67
    if-ge v2, v1, :cond_80

    .line 165
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v8, v8, v2

    iget-object v8, v8, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v8}, Landroid/view/ViewRoot$W;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, v9, :cond_7b

    .line 166
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v5, v8, v2

    .line 164
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_7e
    move v1, v10

    .line 163
    goto :goto_66

    .line 171
    :cond_80
    new-instance v6, Landroid/view/ViewRoot;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/ViewRoot;-><init>(Landroid/content/Context;)V

    .line 172
    .restart local v6       #root:Landroid/view/ViewRoot;
    const/4 v8, 0x1

    iput v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    .line 174
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v8, :cond_b6

    .line 177
    const/4 v3, 0x1

    .line 178
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 179
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/ViewRoot;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 180
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 193
    :goto_a3
    add-int/lit8 v3, v3, -0x1

    .line 195
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aput-object p1, v8, v3

    .line 196
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aput-object v6, v8, v3

    .line 197
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v7, v8, v3

    .line 198
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_3f .. :try_end_b2} :catchall_3c

    .line 200
    invoke-virtual {v6, p1, v7, v5}, Landroid/view/ViewRoot;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    goto :goto_51

    .line 182
    :cond_b6
    :try_start_b6
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v8, v8

    add-int/lit8 v3, v8, 0x1

    .line 183
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 184
    .local v4, old:[Ljava/lang/Object;
    new-array v8, v3, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 185
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    sub-int v11, v3, v12

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 187
    new-array v8, v3, [Landroid/view/ViewRoot;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 188
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    const/4 v10, 0x0

    sub-int v11, v3, v12

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 190
    new-array v8, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 191
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    sub-int v11, v3, v12

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_e8
    .catchall {:try_start_b6 .. :try_end_e8} :catchall_3c

    goto :goto_a3
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .registers 7
    .parameter "view"
    .parameter "required"

    .prologue
    .line 378
    monitor-enter p0

    .line 379
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v2, v2

    move v0, v2

    .line 380
    .local v0, count:I
    :goto_9
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1b

    .line 381
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_18

    .line 382
    monitor-exit p0

    move v2, v1

    .line 389
    :goto_14
    return v2

    .line 379
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_15
    const/4 v2, 0x0

    move v0, v2

    goto :goto_9

    .line 380
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 385
    :cond_1b
    if-eqz p2, :cond_28

    .line 386
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v2

    .line 389
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_28
    const/4 v2, -0x1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_25

    goto :goto_14
.end method

.method public static getDefault()Landroid/view/WindowManagerImpl;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Landroid/view/WindowManagerImpl;->mWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 6
    .parameter "dst"
    .parameter "src"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 366
    array-length v0, p0

    if-lez v0, :cond_15

    .line 367
    if-lez p2, :cond_9

    .line 368
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    :cond_9
    array-length v0, p0

    if-ge p2, v0, :cond_15

    .line 371
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    :cond_15
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "view"
    .parameter "params"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 115
    return-void
.end method

.method public addViewNesting(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "view"
    .parameter "params"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 120
    return-void
.end method

.method public closeAll()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, v0, v0, v0}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "token"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v4, :cond_7

    .line 304
    monitor-exit p0

    .line 330
    :goto_6
    return-void

    .line 306
    :cond_7
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 308
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_6e

    .line 311
    if-eqz p1, :cond_17

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_6b

    .line 312
    :cond_17
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v3, v4, v1

    .line 313
    .local v3, root:Landroid/view/ViewRoot;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/ViewRoot;->mAddNesting:I

    .line 316
    if-eqz p2, :cond_64

    .line 317
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has leaked window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that was originally added here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, leak:Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRoot;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 321
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Landroid/view/WindowLeaked;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v2           #leak:Landroid/view/WindowLeaked;
    :cond_64
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    .line 325
    add-int/lit8 v1, v1, -0x1

    .line 326
    add-int/lit8 v0, v0, -0x1

    .line 308
    .end local v3           #root:Landroid/view/ViewRoot;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 329
    :cond_6e
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_70
    move-exception v4

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw v4
.end method

.method finishRemoveViewLocked(Landroid/view/View;I)V
    .registers 9
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 280
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 283
    .local v0, count:I
    sub-int v4, v0, v5

    new-array v3, v4, [Landroid/view/View;

    .line 284
    .local v3, tmpViews:[Landroid/view/View;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    invoke-static {v3, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 285
    iput-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 287
    sub-int v4, v0, v5

    new-array v2, v4, [Landroid/view/ViewRoot;

    .line 288
    .local v2, tmpRoots:[Landroid/view/ViewRoot;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    invoke-static {v2, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 289
    iput-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 291
    sub-int v4, v0, v5

    new-array v1, v4, [Landroid/view/WindowManager$LayoutParams;

    .line 293
    .local v1, tmpParams:[Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 294
    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 296
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 299
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 3

    .prologue
    .line 357
    new-instance v0, Landroid/view/Display;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/Display;-><init>(I)V

    return-object v0
.end method

.method public getRequestedRotation()I
    .registers 3

    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRequestedRotation()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    return v1

    .line 95
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRootViewLayoutParameter(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .registers 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 334
    .local v3, vp:Landroid/view/ViewParent;
    :goto_5
    if-eqz v3, :cond_10

    instance-of v5, v3, Landroid/view/ViewRoot;

    if-nez v5, :cond_10

    .line 335
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_5

    .line 338
    :cond_10
    if-nez v3, :cond_14

    move-object v5, v6

    .line 349
    :goto_13
    return-object v5

    .line 340
    :cond_14
    move-object v0, v3

    check-cast v0, Landroid/view/ViewRoot;

    move-object v4, v0

    .line 342
    .local v4, vr:Landroid/view/ViewRoot;
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    array-length v1, v5

    .line 343
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    if-ge v2, v1, :cond_2c

    .line 344
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v5, v5, v2

    if-ne v5, v4, :cond_29

    .line 345
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v5, v5, v2

    goto :goto_13

    .line 343
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2c
    move-object v5, v6

    .line 349
    goto :goto_13
.end method

.method public isInputMethodActive()Z
    .registers 3

    .prologue
    .line 86
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->isInputMethodActive()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    return v1

    .line 87
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 222
    monitor-enter p0

    .line 226
    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 227
    .local v2, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v3, v3

    move v0, v3

    .line 228
    .local v0, count:I
    :goto_f
    if-ltz v2, :cond_13

    if-lt v2, v0, :cond_17

    .line 229
    :cond_13
    monitor-exit p0

    .line 234
    :goto_14
    return-void

    .end local v0           #count:I
    :cond_15
    move v0, v4

    .line 227
    goto :goto_f

    .line 232
    .restart local v0       #count:I
    :cond_17
    invoke-virtual {p0, v2}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, curView:Landroid/view/View;
    if-ne v1, p1, :cond_22

    .line 234
    monitor-exit p0

    goto :goto_14

    .line 239
    .end local v0           #count:I
    .end local v1           #curView:Landroid/view/View;
    .end local v2           #index:I
    :catchall_1f
    move-exception v3

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3

    .line 237
    .restart local v0       #count:I
    .restart local v1       #curView:Landroid/view/View;
    .restart local v2       #index:I
    :cond_22
    :try_start_22
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewRoot is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_1f
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 243
    monitor-enter p0

    .line 244
    const/4 v3, 0x1

    :try_start_2
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 245
    .local v1, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v2, v3, v1

    .line 246
    .local v2, root:Landroid/view/ViewRoot;
    invoke-virtual {v2}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, curView:Landroid/view/View;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewRoot;->mAddNesting:I

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewRoot;->die(Z)V

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    .line 251
    if-ne v0, p1, :cond_1c

    .line 252
    monitor-exit p0

    return-void

    .line 255
    :cond_1c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewRoot is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRoot;
    :catchall_3f
    move-exception v3

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method removeViewLocked(I)Landroid/view/View;
    .registers 7
    .parameter "index"

    .prologue
    .line 261
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v1, v3, p1

    .line 262
    .local v1, root:Landroid/view/ViewRoot;
    invoke-virtual {v1}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v2

    .line 265
    .local v2, view:Landroid/view/View;
    iget v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    .line 266
    iget v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    if-lez v3, :cond_13

    .line 276
    :goto_12
    return-object v2

    .line 270
    :cond_13
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 271
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_28

    .line 272
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 274
    :cond_28
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewRoot;->die(Z)V

    .line 275
    invoke-virtual {p0, v2, p1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    goto :goto_12
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 9
    .parameter "view"
    .parameter "params"

    .prologue
    .line 204
    instance-of v4, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_c

    .line 205
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Params must be WindowManager.LayoutParams"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_c
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    .line 211
    .local v3, wparams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    monitor-enter p0

    .line 214
    const/4 v4, 0x1

    :try_start_15
    invoke-direct {p0, p1, v4}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 215
    .local v1, index:I
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v2, v4, v1

    .line 216
    .local v2, root:Landroid/view/ViewRoot;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v3, v4, v1

    .line 217
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRoot;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 218
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRoot;
    :catchall_27
    move-exception v4

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_27

    throw v4
.end method
