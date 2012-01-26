.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x22

    const/4 v11, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "gsm.dun.connected"

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 210
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 211
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 212
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 214
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RetryTimer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " RetryCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 215
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 216
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 217
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetRetryCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, reason:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_b0

    .line 220
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 221
    .local v3, msg:Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->arg1:I

    .line 222
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 225
    .end local v3           #msg:Landroid/os/Message;
    :cond_b0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 315
    .end local v5           #reason:Ljava/lang/String;
    :cond_bb
    :goto_bb
    return-void

    .line 228
    :cond_bc
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 229
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 230
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 231
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto :goto_bb

    .line 232
    :cond_d4
    const-string v6, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    .line 233
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .restart local v5       #reason:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_11a

    .line 237
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 238
    .restart local v3       #msg:Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->arg1:I

    .line 239
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 242
    .end local v3           #msg:Landroid/os/Message;
    :cond_11a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_bb

    .line 243
    .end local v5           #reason:Ljava/lang/String;
    :cond_126
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 244
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 246
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    if-eqz v4, :cond_147

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_147

    move v7, v8

    :goto_142
    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto/16 :goto_bb

    :cond_147
    move v7, v9

    goto :goto_142

    .line 247
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_149
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_168

    .line 248
    const-string/jumbo v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_166

    move v1, v8

    .line 251
    .local v1, enabled:Z
    :goto_15d
    if-nez v1, :cond_bb

    .line 254
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto/16 :goto_bb

    .end local v1           #enabled:Z
    :cond_166
    move v1, v9

    .line 248
    goto :goto_15d

    .line 258
    :cond_168
    const-string v6, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bc

    .line 259
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Call Attempted "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 261
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v6, v7, :cond_195

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v6, v7, :cond_195

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_1b5

    .line 263
    :cond_195
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Dial Up Network] Network Disconnecting  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 266
    :cond_1b5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_bb

    .line 268
    :cond_1bc
    const-string v6, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e0

    .line 269
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Call Disconnected "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    .line 272
    const-string v6, "gsm.dun.connected"

    const-string v6, "false"

    invoke-static {v10, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() gsm.dun.connected=false"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 278
    :cond_1e0
    const-string v6, "android.net.action.DUN_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_200

    .line 279
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Call Connected "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 281
    const-string v6, "gsm.dun.connected"

    const-string/jumbo v6, "true"

    invoke-static {v10, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() gsm.dun.connected=true"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 285
    :cond_200
    const-string v6, "android.net.action.DUN_BLOCKED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_216

    .line 286
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Blocked "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 288
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    goto/16 :goto_bb

    .line 291
    :cond_216
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isInternetSharingBlockedByActiveSync()Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v6

    if-eqz v6, :cond_26e

    .line 296
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 299
    const-string v6, "gsm.dun.connected"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, isDunConnected:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ActiveSync] onReceive() gsm.dun.connected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 303
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() Disconnect DUN"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 304
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 305
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->disconnectDun()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    goto/16 :goto_bb

    .line 310
    .end local v2           #isDunConnected:Ljava/lang/String;
    :cond_26e
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_bb
.end method
