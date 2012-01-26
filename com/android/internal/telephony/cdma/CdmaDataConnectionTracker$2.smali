.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "CdmaDataConnectionTracker.java"


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
    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, action:Ljava/lang/String;
    const-string v22, "android.intent.action.SCREEN_ON"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 306
    :cond_2c
    :goto_2c
    return-void

    .line 198
    :cond_2d
    const-string v22, "android.intent.action.SCREEN_OFF"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7c

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_pattern_autolock"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 206
    .local v3, LockPatternEnabled:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v3

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendPatternLockState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    goto :goto_2c

    .line 207
    .end local v3           #LockPatternEnabled:I
    :cond_7c
    const-string v22, "com.android.internal.telephony.cdma-reconnect"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e6

    .line 208
    const-string v22, "CDMA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Data reconnect alarm. Previous state was "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string/jumbo v22, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 211
    .local v17, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d7

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 214
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Ljava/lang/String;)Z

    goto/16 :goto_2c

    .line 215
    .end local v17           #reason:Ljava/lang/String;
    :cond_e6
    const-string v22, "android.net.wifi.STATE_CHANGE"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16c

    .line 216
    const-string/jumbo v22, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkInfo;

    .line 218
    .local v15, networkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    if-eqz v15, :cond_161

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    if-eqz v23, :cond_161

    const/16 v23, 0x1

    :goto_10e
    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v22

    if-eqz v22, :cond_164

    .line 220
    const-string v22, "gsm.wifiConnected.active"

    const-string/jumbo v23, "true"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.PROXY_CHANGE"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    :goto_13d
    const-string v22, "CDMA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Manual Attach] mIsWifiConnected : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 218
    :cond_161
    const/16 v23, 0x0

    goto :goto_10e

    .line 225
    :cond_164
    const-string v22, "gsm.wifiConnected.active"

    const-string v23, "false"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13d

    .line 228
    .end local v15           #networkInfo:Landroid/net/NetworkInfo;
    :cond_16c
    const-string v22, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1cf

    .line 229
    const-string/jumbo v22, "wifi_state"

    const/16 v23, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1ca

    const/16 v22, 0x1

    move/from16 v8, v22

    .line 232
    .local v8, enabled:Z
    :goto_192
    if-nez v8, :cond_2c

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 236
    const-string v22, "gsm.wifiConnected.active"

    const-string v23, "false"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v22, "CDMA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Manual Attach] mIsWifiConnected : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 229
    .end local v8           #enabled:Z
    :cond_1ca
    const/16 v22, 0x0

    move/from16 v8, v22

    goto :goto_192

    .line 240
    :cond_1cf
    const-string v22, "android.intent.action.DUN_PATTERN_LOCK"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1fd

    .line 241
    const-string v22, "lockstate"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 243
    .local v13, lockState:Ljava/lang/String;
    const-string/jumbo v22, "unlocked"

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendPatternLockState(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    goto/16 :goto_2c

    .line 246
    .end local v13           #lockState:Ljava/lang/String;
    :cond_1fd
    const-string v22, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_317

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const-string v23, "WIFI_AP_STATE_CHANGED_ACTION"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v22, "wifi_state"

    const/16 v23, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 249
    .local v20, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mobileAP_State = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "MiFi state = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "usbTethered_State = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-eq v0, v0, :cond_2c

    .line 252
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c3

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const-string v23, "mIntentReceiver state == WifiManager.WIFI_AP_STATE_ENABLED"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string/jumbo v24, "naiChanged"

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMobileAPState(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_2c

    .line 259
    :cond_2c3
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const-string v23, "mIntentReceiver state == WifiManager.WIFI_AP_STATE_DISABLED"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v22

    if-nez v22, :cond_308

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string/jumbo v24, "naiChanged"

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMobileAPState(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 266
    :cond_308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_2c

    .line 269
    .end local v20           #state:I
    :cond_317
    const-string v22, "android.net.conn.TETHER_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_460

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const-string v23, "ACTION_TETHER_STATE_CHANGED"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 271
    const-string v22, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 272
    .local v5, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v22, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    .line 273
    .local v14, mCm:Landroid/net/ConnectivityManager;
    const/16 v21, 0x0

    .line 274
    .local v21, usbTethered:Z
    if-eqz v14, :cond_388

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUsbRegexs:[Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;[Ljava/lang/String;)[Ljava/lang/String;

    .line 276
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/Object;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v6           #arr$:[Ljava/lang/Object;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .local v10, i$:I
    :goto_35b
    if-ge v10, v11, :cond_388

    aget-object v16, v6, v10

    .line 277
    .local v16, o:Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    .line 278
    .local v19, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUsbRegexs:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)[Ljava/lang/String;

    move-result-object v7

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_371
    if-ge v9, v12, :cond_384

    aget-object v18, v7, v9

    .line 279
    .local v18, regex:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_381

    const/16 v21, 0x1

    .line 278
    :cond_381
    add-int/lit8 v9, v9, 0x1

    goto :goto_371

    .line 276
    .end local v18           #regex:Ljava/lang/String;
    :cond_384
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_35b

    .line 283
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v16           #o:Ljava/lang/Object;
    .end local v19           #s:Ljava/lang/String;
    :cond_388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "usbTethered_State = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "usbTethered = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "mobileAP_State = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c

    .line 286
    if-eqz v21, :cond_419

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string/jumbo v24, "naiChanged"

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMobileAPState(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    goto/16 :goto_2c

    .line 292
    :cond_419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_451

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string/jumbo v24, "naiChanged"

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMobileAPState(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 297
    :cond_451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    goto/16 :goto_2c

    .line 302
    .end local v5           #activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #mCm:Landroid/net/ConnectivityManager;
    .end local v21           #usbTethered:Z
    :cond_460
    const-string v22, "android.intent.action.ACTION_SHUTDOWN"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "radioTurnedOff"

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    goto/16 :goto_2c
.end method
