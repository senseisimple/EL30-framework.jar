.class public Landroid/app/admin/DevicePolicyManager$NetworkPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/INetworkPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 3898
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3899
    const-string/jumbo v0, "network_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/INetworkPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/INetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    .line 3900
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3894
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .registers 34
    .parameter "name"
    .parameter "apn"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "user"
    .parameter "server"
    .parameter "password"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "mmsc"
    .parameter "apType"
    .parameter "authType"

    .prologue
    .line 3915
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    if-eqz v3, :cond_3d

    .line 3917
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    invoke-interface/range {v3 .. v17}, Landroid/app/enterprise/INetworkPolicy;->addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2b} :catch_2d

    move-result-wide v3

    .line 3923
    :goto_2c
    return-wide v3

    .line 3919
    :catch_2d
    move-exception v3

    move-object/from16 v18, v3

    .line 3920
    .local v18, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with Network Policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3923
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_3d
    const-wide/16 v3, -0x1

    goto :goto_2c
.end method

.method public deleteAp(J)Z
    .registers 6
    .parameter "apId"

    .prologue
    .line 3974
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    if-eqz v1, :cond_16

    .line 3976
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/INetworkPolicy;->deleteAp(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3981
    :goto_a
    return v1

    .line 3977
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3978
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with Network Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3981
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .registers 38
    .parameter "apId"
    .parameter "name"
    .parameter "apn"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "user"
    .parameter "server"
    .parameter "password"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "mmsc"
    .parameter "apType"
    .parameter "authType"

    .prologue
    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    if-eqz v3, :cond_3f

    .line 3941
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move/from16 v19, p16

    invoke-interface/range {v3 .. v19}, Landroid/app/enterprise/INetworkPolicy;->setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2d} :catch_2f

    move-result-wide v3

    .line 3947
    :goto_2e
    return-wide v3

    .line 3943
    :catch_2f
    move-exception v3

    move-object/from16 v20, v3

    .line 3944
    .local v20, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with Network Policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3947
    .end local v20           #e:Landroid/os/RemoteException;
    :cond_3f
    const-wide/16 v3, -0x1

    goto :goto_2e
.end method

.method public setpreferredAp(J)Z
    .registers 6
    .parameter "apId"

    .prologue
    .line 3957
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    if-eqz v1, :cond_16

    .line 3959
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/INetworkPolicy;->setpreferredAp(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3964
    :goto_a
    return v1

    .line 3960
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3961
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with Network Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3964
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method
