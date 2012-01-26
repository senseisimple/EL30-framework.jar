.class public Landroid/app/enterprise/RoamingPolicy;
.super Ljava/lang/Object;
.source "RoamingPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "RoamingPolicy"

    sput-object v0, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    .line 19
    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .registers 4

    .prologue
    .line 109
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_14

    .line 111
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 116
    :goto_a
    return v1

    .line 112
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isRoamingPushEnabled()Z
    .registers 4

    .prologue
    .line 77
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_14

    .line 79
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 84
    :goto_a
    return v1

    .line 80
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isRoamingSyncEnabled()Z
    .registers 4

    .prologue
    .line 43
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_14

    .line 45
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 50
    :goto_a
    return v1

    .line 46
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 47
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public setRoamingData(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 94
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 96
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 101
    :cond_9
    :goto_9
    return-void

    .line 97
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingPush(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 60
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 62
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 67
    :cond_9
    :goto_9
    return-void

    .line 63
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingSync(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 28
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 30
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 35
    :cond_9
    :goto_9
    return-void

    .line 31
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 32
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
