.class Landroid/net/wimax/WimaxStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mCancelCallback:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wimax/WimaxStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 1843
    iput-object p1, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    .line 1844
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1845
    iput-object p3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    .line 1846
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v8, 0x1e

    const/4 v7, 0x2

    const-string/jumbo v9, "ms"

    const-string v6, "WimaxStateTracker"

    .line 1851
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_29c

    .line 1934
    :goto_d
    return-void

    .line 1853
    :sswitch_e
    monitor-enter p0

    .line 1855
    const/4 v3, 0x0

    :try_start_10
    iput-boolean v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 1856
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_a7

    .line 1857
    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_DHCP_START]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$000(Landroid/net/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$200(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$100(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1859
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$000(Landroid/net/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 1860
    const/4 v0, 0x2

    .line 1867
    .local v0, event:I
    :goto_53
    monitor-enter p0

    .line 1868
    :try_start_54
    iget-boolean v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v3, :cond_a1

    .line 1869
    if-ne v0, v7, :cond_9c

    .line 1871
    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DhcpHandler:EVENT_DHCP_START] mDhcpInfo.leaseDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v5}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v5

    iget v5, v5, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v5}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v5

    iget v5, v5, Landroid/net/DhcpInfo;->leaseDuration:I

    sub-int/2addr v5, v8

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 1873
    .local v1, triggerTime:J
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$200(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Landroid/net/wimax/WimaxStateTracker;->access$100(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1875
    .end local v1           #triggerTime:J
    :cond_9c
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1877
    :cond_a1
    monitor-exit p0

    goto/16 :goto_d

    :catchall_a4
    move-exception v3

    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_54 .. :try_end_a6} :catchall_a4

    throw v3

    .line 1856
    .end local v0           #event:I
    :catchall_a7
    move-exception v3

    :try_start_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v3

    .line 1863
    :cond_aa
    const/4 v0, 0x3

    .line 1864
    .restart local v0       #event:I
    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_DHCP_START] DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1880
    .end local v0           #event:I
    :sswitch_c8
    const-string v3, "WimaxStateTracker"

    const-string v3, "[DhcpHandler:EVENT_IP_RENEW]"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$400(Landroid/net/wimax/WimaxStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "old IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_fa
    monitor-enter p0

    .line 1884
    :try_start_fb
    iget-boolean v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-eqz v3, :cond_10c

    .line 1886
    const-string v3, "WimaxStateTracker"

    const-string v4, "[DhcpHandler:EVENT_IP_RENEW] mCancelCallback is true... ignore this"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    monitor-exit p0

    goto/16 :goto_d

    .line 1889
    :catchall_109
    move-exception v3

    monitor-exit p0
    :try_end_10b
    .catchall {:try_start_fb .. :try_end_10b} :catchall_109

    throw v3

    :cond_10c
    :try_start_10c
    monitor-exit p0
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_109

    .line 1894
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    #setter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v3, v4, v5}, Landroid/net/wimax/WimaxStateTracker;->access$502(Landroid/net/wimax/WimaxStateTracker;J)J

    .line 1895
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$400(Landroid/net/wimax/WimaxStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_148

    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage : DhcpStart is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$500(Landroid/net/wimax/WimaxStateTracker;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_148
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1898
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$200(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$100(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1899
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$000(Landroid/net/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 1901
    const/4 v0, 0x2

    .line 1902
    .restart local v0       #event:I
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$400(Landroid/net/wimax/WimaxStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_199

    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_199
    :goto_199
    monitor-enter p0

    .line 1922
    :try_start_19a
    iget-boolean v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v3, :cond_1e7

    .line 1923
    if-ne v0, v7, :cond_1e2

    .line 1925
    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DhcpHandler:EVENT_IP_RENEW] mDhcpInfo.leaseDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v5}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v5

    iget v5, v5, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v5}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v5

    iget v5, v5, Landroid/net/DhcpInfo;->leaseDuration:I

    sub-int/2addr v5, v8

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 1927
    .restart local v1       #triggerTime:J
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$200(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Landroid/net/wimax/WimaxStateTracker;->access$100(Landroid/net/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1929
    .end local v1           #triggerTime:J
    :cond_1e2
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1931
    :cond_1e7
    monitor-exit p0

    goto/16 :goto_d

    :catchall_1ea
    move-exception v3

    monitor-exit p0
    :try_end_1ec
    .catchall {:try_start_19a .. :try_end_1ec} :catchall_1ea

    throw v3

    .line 1904
    .end local v0           #event:I
    :cond_1ed
    const/4 v0, 0x3

    .line 1905
    .restart local v0       #event:I
    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_IP_RENEW] DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    #setter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v3, v4, v5}, Landroid/net/wimax/WimaxStateTracker;->access$502(Landroid/net/wimax/WimaxStateTracker;J)J

    .line 1908
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$400(Landroid/net/wimax/WimaxStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_245

    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage : 2nd DhcpStart is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$500(Landroid/net/wimax/WimaxStateTracker;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_245
    iget-object v3, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wimax/WimaxStateTracker;->access$000(Landroid/net/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v3

    if-eqz v3, :cond_27c

    .line 1913
    const/4 v0, 0x2

    .line 1914
    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2nd New IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/wimax/WimaxStateTracker;

    #getter for: Landroid/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v4}, Landroid/net/wimax/WimaxStateTracker;->access$300(Landroid/net/wimax/WimaxStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_199

    .line 1916
    :cond_27c
    const/4 v0, 0x3

    .line 1917
    const-string v3, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpHandler:EVENT_IP_RENEW] 2nd DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_199

    .line 1851
    nop

    :sswitch_data_29c
    .sparse-switch
        0x5 -> :sswitch_e
        0xa -> :sswitch_c8
    .end sparse-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .registers 3
    .parameter "cancelCallback"

    .prologue
    .line 1937
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1938
    monitor-exit p0

    return-void

    .line 1937
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
