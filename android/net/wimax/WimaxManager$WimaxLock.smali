.class public Landroid/net/wimax/WimaxManager$WimaxLock;
.super Ljava/lang/Object;
.source "WimaxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WimaxLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field mLockType:I

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wimax/WimaxManager;


# direct methods
.method private constructor <init>(Landroid/net/wimax/WimaxManager;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "lockType"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 910
    iput-object p1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput-object p3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mTag:Ljava/lang/String;

    .line 912
    iput p2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mLockType:I

    .line 913
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    .line 914
    iput v1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCount:I

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCounted:Z

    .line 916
    iput-boolean v1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z

    .line 917
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wimax/WimaxManager;ILjava/lang/String;Landroid/net/wimax/WimaxManager$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 902
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wimax/WimaxManager$WimaxLock;-><init>(Landroid/net/wimax/WimaxManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 7

    .prologue
    .line 931
    iget-object v1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 932
    :try_start_3
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCounted:Z

    if-eqz v2, :cond_4b

    iget v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_57

    if-lez v2, :cond_49

    .line 934
    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    iget-object v2, v2, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    iget v4, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mLockType:I

    iget-object v5, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Landroid/net/wimax/IWimaxManager;->acquireWimaxLock(Landroid/os/IBinder;ILjava/lang/String;)Z

    .line 935
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_3d

    .line 936
    :try_start_1f
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    #getter for: Landroid/net/wimax/WimaxManager;->mActiveLockCount:I
    invoke-static {v3}, Landroid/net/wimax/WimaxManager;->access$000(Landroid/net/wimax/WimaxManager;)I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_50

    .line 937
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    iget-object v3, v3, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    iget-object v4, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/net/wimax/IWimaxManager;->releaseWimaxLock(Landroid/os/IBinder;)Z

    .line 938
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Exceeded maximum number of Wimax locks"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 942
    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 943
    :catch_3d
    move-exception v2

    move-object v0, v2

    .line 944
    .local v0, ignore:Landroid/os/RemoteException;
    :try_start_3f
    const-string v2, "WimaxManager"

    const-string v3, "------WimaxLock - acquire RemoteException----------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .end local v0           #ignore:Landroid/os/RemoteException;
    :goto_46
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z

    .line 948
    :cond_49
    monitor-exit v1

    .line 949
    return-void

    .line 932
    :cond_4b
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_57

    if-nez v2, :cond_49

    goto :goto_f

    .line 941
    :cond_50
    :try_start_50
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    invoke-static {v3}, Landroid/net/wimax/WimaxManager;->access$008(Landroid/net/wimax/WimaxManager;)I

    .line 942
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_3a

    goto :goto_46

    .line 948
    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v2
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1025
    iget-object v1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1026
    :try_start_6
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2b

    if-eqz v2, :cond_1c

    .line 1028
    :try_start_a
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    iget-object v2, v2, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/net/wimax/IWimaxManager;->releaseWimaxLock(Landroid/os/IBinder;)Z

    .line 1029
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_21

    .line 1030
    :try_start_16
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    invoke-static {v3}, Landroid/net/wimax/WimaxManager;->access$010(Landroid/net/wimax/WimaxManager;)I

    .line 1031
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1e

    .line 1036
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_2b

    .line 1037
    return-void

    .line 1031
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    .line 1032
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 1033
    .local v0, ignore:Landroid/os/RemoteException;
    :try_start_23
    const-string v2, "WimaxManager"

    const-string v3, "------WimaxLock - finalize RemoteException----------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1036
    .end local v0           #ignore:Landroid/os/RemoteException;
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 1005
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public release()V
    .registers 6

    .prologue
    .line 964
    iget-object v1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 965
    :try_start_3
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCounted:Z

    if-eqz v2, :cond_46

    iget v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_43

    if-nez v2, :cond_24

    .line 967
    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    iget-object v2, v2, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/net/wimax/IWimaxManager;->releaseWimaxLock(Landroid/os/IBinder;)Z

    .line 968
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_4e

    .line 969
    :try_start_1b
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->this$0:Landroid/net/wimax/WimaxManager;

    invoke-static {v3}, Landroid/net/wimax/WimaxManager;->access$010(Landroid/net/wimax/WimaxManager;)I

    .line 970
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_4b

    .line 974
    :goto_21
    const/4 v2, 0x0

    :try_start_22
    iput-boolean v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z

    .line 976
    :cond_24
    iget v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCount:I

    if-gez v2, :cond_58

    .line 977
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WimaxLock under-locked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_43

    throw v2

    .line 965
    :cond_46
    :try_start_46
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_43

    if-eqz v2, :cond_24

    goto :goto_f

    .line 970
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 971
    :catch_4e
    move-exception v2

    move-object v0, v2

    .line 972
    .local v0, ignore:Landroid/os/RemoteException;
    :try_start_50
    const-string v2, "WimaxManager"

    const-string v3, "------WimaxLock - release RemoteException----------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 979
    .end local v0           #ignore:Landroid/os/RemoteException;
    :cond_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_43

    .line 980
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 994
    iput-boolean p1, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCounted:Z

    .line 995
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1010
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v3

    .line 1011
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, s1:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mHeld:Z

    if-eqz v4, :cond_55

    const-string v4, "held; "

    move-object v1, v4

    .line 1013
    .local v1, s2:Ljava/lang/String;
    :goto_12
    iget-boolean v4, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCounted:Z

    if-eqz v4, :cond_59

    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wimax/WimaxManager$WimaxLock;->mRefCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, s3:Ljava/lang/String;
    :goto_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WimaxLock{ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 1012
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_55
    const-string v4, ""

    move-object v1, v4

    goto :goto_12

    .line 1016
    .restart local v1       #s2:Ljava/lang/String;
    :cond_59
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_2c

    .line 1019
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_5d
    move-exception v4

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v4
.end method
