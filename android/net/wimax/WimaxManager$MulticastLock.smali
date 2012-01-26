.class public Landroid/net/wimax/WimaxManager$MulticastLock;
.super Ljava/lang/Object;
.source "WimaxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulticastLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wimax/WimaxManager;


# direct methods
.method private constructor <init>(Landroid/net/wimax/WimaxManager;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1107
    iput-object p1, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-object p2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mTag:Ljava/lang/String;

    .line 1109
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    .line 1110
    iput v1, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCount:I

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCounted:Z

    .line 1112
    iput-boolean v1, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mHeld:Z

    .line 1113
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wimax/WimaxManager;Ljava/lang/String;Landroid/net/wimax/WimaxManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1100
    invoke-direct {p0, p1, p2}, Landroid/net/wimax/WimaxManager$MulticastLock;-><init>(Landroid/net/wimax/WimaxManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 6

    .prologue
    .line 1136
    iget-object v1, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1137
    :try_start_3
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCounted:Z

    if-eqz v2, :cond_47

    iget v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_53

    if-lez v2, :cond_45

    .line 1139
    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    iget-object v2, v2, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    iget-object v3, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/net/wimax/IWimaxManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_39

    .line 1141
    :try_start_1d
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    #getter for: Landroid/net/wimax/WimaxManager;->mActiveLockCount:I
    invoke-static {v3}, Landroid/net/wimax/WimaxManager;->access$000(Landroid/net/wimax/WimaxManager;)I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_4c

    .line 1142
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    iget-object v3, v3, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v3}, Landroid/net/wimax/IWimaxManager;->releaseMulticastLock()V

    .line 1143
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Exceeded maximum number of wimax locks"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1147
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_36

    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_39} :catch_39

    .line 1148
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 1149
    .local v0, ignore:Landroid/os/RemoteException;
    :try_start_3b
    const-string v2, "WimaxManager"

    const-string v3, "------MulticastLock - acquire RemoteException----------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    .end local v0           #ignore:Landroid/os/RemoteException;
    :goto_42
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mHeld:Z

    .line 1153
    :cond_45
    monitor-exit v1

    .line 1154
    return-void

    .line 1137
    :cond_47
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mHeld:Z
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_53

    if-nez v2, :cond_45

    goto :goto_f

    .line 1146
    :cond_4c
    :try_start_4c
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    invoke-static {v3}, Landroid/net/wimax/WimaxManager;->access$008(Landroid/net/wimax/WimaxManager;)I

    .line 1147
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_36

    goto :goto_42

    .line 1153
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wimax/WimaxManager$MulticastLock;->setReferenceCounted(Z)V

    .line 1248
    invoke-virtual {p0}, Landroid/net/wimax/WimaxManager$MulticastLock;->release()V

    .line 1249
    return-void
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 1226
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 1227
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
    .line 1181
    iget-object v1, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1182
    :try_start_3
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCounted:Z

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_41

    if-nez v2, :cond_22

    .line 1184
    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    iget-object v2, v2, Landroid/net/wimax/WimaxManager;->mService:Landroid/net/wimax/IWimaxManager;

    invoke-interface {v2}, Landroid/net/wimax/IWimaxManager;->releaseMulticastLock()V

    .line 1185
    iget-object v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_4c

    .line 1186
    :try_start_19
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->this$0:Landroid/net/wimax/WimaxManager;

    invoke-static {v3}, Landroid/net/wimax/WimaxManager;->access$010(Landroid/net/wimax/WimaxManager;)I

    .line 1187
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_49

    .line 1191
    :goto_1f
    const/4 v2, 0x0

    :try_start_20
    iput-boolean v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mHeld:Z

    .line 1193
    :cond_22
    iget v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCount:I

    if-gez v2, :cond_56

    .line 1194
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MulticastLock under-locked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1197
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_41

    throw v2

    .line 1182
    :cond_44
    :try_start_44
    iget-boolean v2, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mHeld:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_41

    if-eqz v2, :cond_22

    goto :goto_f

    .line 1187
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 1188
    :catch_4c
    move-exception v2

    move-object v0, v2

    .line 1189
    .local v0, ignore:Landroid/os/RemoteException;
    :try_start_4e
    const-string v2, "WimaxManager"

    const-string v3, "------MulticastLock - release RemoteException----------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1197
    .end local v0           #ignore:Landroid/os/RemoteException;
    :cond_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_41

    .line 1198
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 1216
    iput-boolean p1, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCounted:Z

    .line 1217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1232
    iget-object v3, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v3

    .line 1233
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, s1:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mHeld:Z

    if-eqz v4, :cond_55

    const-string v4, "held; "

    move-object v1, v4

    .line 1235
    .local v1, s2:Ljava/lang/String;
    :goto_12
    iget-boolean v4, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCounted:Z

    if-eqz v4, :cond_59

    .line 1236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wimax/WimaxManager$MulticastLock;->mRefCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, s3:Ljava/lang/String;
    :goto_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MulticastLock{ "

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

    .line 1234
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_55
    const-string v4, ""

    move-object v1, v4

    goto :goto_12

    .line 1238
    .restart local v1       #s2:Ljava/lang/String;
    :cond_59
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_2c

    .line 1241
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
