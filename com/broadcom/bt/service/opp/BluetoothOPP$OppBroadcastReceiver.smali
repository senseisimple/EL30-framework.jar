.class Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/BluetoothOPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V
    .registers 2
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v1, "STATUS"

    const-string v1, "FILEPATH"

    .line 783
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    .line 784
    .local v0, handler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    if-nez v0, :cond_d

    .line 858
    :cond_c
    :goto_c
    return-void

    .line 790
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;->abortBroadcast()V

    .line 791
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, action:Ljava/lang/String;
    const-string v1, "actionType"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v8

    .line 795
    .local v8, actionType:B
    const/4 v1, 0x1

    if-ne v8, v1, :cond_ad

    .line 797
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_OPEN"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 799
    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcOpen()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2b} :catch_2c

    goto :goto_c

    .line 855
    .end local v7           #action:Ljava/lang/String;
    .end local v8           #actionType:B
    :catch_2c
    move-exception v1

    move-object v9, v1

    .line 856
    .local v9, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP event "

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 800
    .end local v9           #t:Ljava/lang/Throwable;
    .restart local v7       #action:Ljava/lang/String;
    .restart local v8       #actionType:B
    :cond_36
    :try_start_36
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_ENABLE"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 802
    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcEnable()V

    goto :goto_c

    .line 803
    :cond_44
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_PROGRESS"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 805
    const-string v1, "BYTES_TRANSFERRED"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "TOTAL_BYTES"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcProgress(II)V

    goto :goto_c

    .line 808
    :cond_60
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_OBJECT_PUSHED"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 810
    const-string v1, "STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "FILEPATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectPushed(ILjava/lang/String;)V

    goto :goto_c

    .line 812
    :cond_7b
    const-string v1, "com.broadcom.bt.app.opp.action.ACTION_ON_OPC_OBJECT_PUSHED"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 814
    const-string v1, "STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "FILEPATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectReceived(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 816
    :cond_97
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_CLOSE"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 818
    const-string v1, "STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcClose(I)V

    goto/16 :goto_c

    .line 822
    :cond_ad
    const/4 v1, 0x2

    if-ne v8, v1, :cond_12e

    .line 824
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    sget v2, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 826
    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RMT_DEV_ADDR"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPERATION"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    const-string v4, "broadcom.android.bluetooth.intent.FILE_FORMAT"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    const-string v5, "FILEPATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TOTAL_BYTES"

    const/4 v10, 0x0

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_c

    .line 834
    :cond_e6
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_PROGRESS"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 836
    const-string v1, "BYTES_TRANSFERRED"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "TOTAL_BYTES"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsProgress(II)V

    goto/16 :goto_c

    .line 839
    :cond_103
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_OBJECT_RECEIVED"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$1000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 841
    const-string v1, "broadcom.android.bluetooth.intent.FILE_FORMAT"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "FILEPATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsObjectReceived(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 843
    :cond_11f
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_CLOSE"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$1100(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 845
    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsClose()V

    goto/16 :goto_c

    .line 847
    :cond_12e
    const/4 v1, 0x3

    if-ne v8, v1, :cond_c

    .line 849
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OP_OWNER_VCARD_NOT_SET"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$1200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 851
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_144} :catch_2c

    goto/16 :goto_c
.end method
