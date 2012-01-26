.class Lcom/android/internal/telephony/SMSDispatcher$3;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "SMSDispatcher"

    .line 2612
    const-string v4, "SMSDispatcher"

    const-string v4, "BroadcastReceiver - mResultReceiver "

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const-string/jumbo v4, "ril.sms.gcf-mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2616
    .local v0, GcfMode:Ljava/lang/String;
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GcfMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent.getAction() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2623
    :cond_60
    const-string v4, "SMSDispatcher"

    const-string v4, "ACTION_DEVICE_STORAGE_LOW "

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v9, v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2627
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2631
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v6, v4, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2784
    :cond_76
    :goto_76
    return-void

    .line 2635
    :cond_77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DB_DEVICE_STORAGE_OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 2638
    :cond_8f
    const-string v4, "SMSDispatcher"

    const-string v4, "ACTION_DEVICE_STORAGE_OK "

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v6, v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2641
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2645
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v6, v4, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    goto :goto_76

    .line 2654
    :cond_a6
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v9, v4, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2658
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$200()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 2660
    const-string v4, "SMSDispatcher"

    const-string v4, "boot_time : reportSmsMemoryStatus"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2662
    .local v2, reply:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2663
    invoke-static {v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$202(Z)Z

    .line 2666
    .end local v2           #reply:Landroid/os/Message;
    :cond_cd
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$300()Z

    move-result v4

    if-eqz v4, :cond_128

    .line 2668
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-eqz v4, :cond_fa

    .line 2670
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClass0MsgFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v6, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2674
    :cond_fa
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-nez v4, :cond_76

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    if-nez v4, :cond_76

    .line 2676
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-eqz v4, :cond_113

    .line 2678
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v6, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_76

    .line 2682
    :cond_113
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    if-eqz v4, :cond_120

    .line 2684
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v9, v10, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_76

    .line 2688
    :cond_120
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v5, 0x6

    invoke-virtual {v4, v9, v5, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_76

    .line 2695
    :cond_128
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$3;->getResultCode()I

    move-result v1

    .line 2696
    .local v1, rc:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_131

    if-ne v1, v6, :cond_186

    :cond_131
    move v3, v6

    .line 2747
    .local v3, success:Z
    :goto_132
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-eqz v4, :cond_159

    .line 2749
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClass0MsgFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v6, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2753
    :cond_159
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-nez v4, :cond_76

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    if-nez v4, :cond_76

    .line 2755
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResultReceiver : success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    if-eqz v3, :cond_188

    .line 2759
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_76

    .end local v3           #success:Z
    :cond_186
    move v3, v9

    .line 2696
    goto :goto_132

    .line 2763
    .restart local v3       #success:Z
    :cond_188
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    if-eqz v4, :cond_195

    .line 2765
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v3, v10, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_76

    .line 2769
    :cond_195
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v5, 0x6

    invoke-virtual {v4, v3, v5, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_76
.end method
