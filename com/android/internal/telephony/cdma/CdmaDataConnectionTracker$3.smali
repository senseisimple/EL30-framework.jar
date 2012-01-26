.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 731
    const-wide/16 v3, -0x1

    .local v3, preTxPkts:J
    const-wide/16 v1, -0x1

    .line 735
    .local v1, preRxPkts:J
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v3

    .line 736
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v1

    .line 738
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 739
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 743
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_71

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_36

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_71

    .line 744
    :cond_36
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v7, v9, v3

    .line 745
    .local v7, sent:J
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v5, v9, v1

    .line 747
    .local v5, received:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_c0

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_c0

    .line 748
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 749
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 767
    .local v0, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_5b
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    if-eq v9, v0, :cond_71

    .line 768
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 769
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 773
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_71
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    const-wide/16 v11, 0xa

    cmp-long v9, v9, v11

    if-ltz v9, :cond_185

    .line 776
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v9

    if-nez v9, :cond_91

    .line 777
    const v9, 0xc3b5

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 782
    :cond_91
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v9

    const/16 v10, 0x18

    if-ge v9, v10, :cond_143

    .line 783
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4808(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    .line 785
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v10, 0x1388

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 800
    :goto_a7
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 801
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 803
    :cond_bf
    return-void

    .line 750
    .restart local v5       #received:J
    .restart local v7       #sent:J
    :cond_c0
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_eb

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_eb

    .line 751
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_e3

    .line 752
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v9, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3314(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 756
    :goto_df
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_5b

    .line 754
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_e3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto :goto_df

    .line 757
    :cond_eb
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_102

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_102

    .line 758
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 759
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_5b

    .line 760
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_102
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_125

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_125

    .line 761
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_121

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    move-object v0, v9

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_11f
    goto/16 :goto_5b

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_121
    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v0, v9

    goto :goto_11f

    .line 763
    :cond_125
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 764
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_13f

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    move-object v0, v9

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_13d
    goto/16 :goto_5b

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_13f
    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v0, v9

    goto :goto_13d

    .line 787
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_143
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkts since last received"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 790
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 791
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 792
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    .line 793
    const v9, 0xc3b6

    const/16 v10, 0x18

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(II)I

    goto/16 :goto_a7

    .line 796
    :cond_185
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 797
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v10, 0x3e8

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$5302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_a7
.end method
