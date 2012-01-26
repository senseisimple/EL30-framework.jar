.class Lcom/samsung/media/fmradio/FMEventListener$2;
.super Landroid/os/Handler;
.source "FMEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/FMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/media/fmradio/FMEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 162
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_b2

    .line 231
    .end local p0
    :goto_5
    return-void

    .line 165
    .restart local p0
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 166
    .local v1, freq:Ljava/lang/Long;
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onChannelFound(J)V

    goto :goto_5

    .line 170
    .end local v1           #freq:Ljava/lang/Long;
    :pswitch_14
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStarted()V

    goto :goto_5

    .line 174
    :pswitch_1a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [J

    move-object v0, v5

    check-cast v0, [J

    move-object v2, v0

    .line 175
    .local v2, freqArry:[J
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStopped([J)V

    goto :goto_5

    .line 179
    .end local v2           #freqArry:[J
    :pswitch_28
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [J

    move-object v0, v5

    check-cast v0, [J

    move-object v2, v0

    .line 180
    .restart local v2       #freqArry:[J
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onScanFinished([J)V

    goto :goto_5

    .line 184
    .end local v2           #freqArry:[J
    :pswitch_36
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onOn()V

    goto :goto_5

    .line 188
    :pswitch_3c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 189
    .local v4, reasonCode:I
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5, v4}, Lcom/samsung/media/fmradio/FMEventListener;->onOff(I)V

    goto :goto_5

    .line 193
    .end local v4           #reasonCode:I
    :pswitch_4a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 194
    .restart local v1       #freq:Ljava/lang/Long;
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto :goto_5

    .line 198
    .end local v1           #freq:Ljava/lang/Long;
    :pswitch_58
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    goto :goto_5

    .line 202
    :pswitch_5e
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneDisconnected()V

    goto :goto_5

    .line 207
    :pswitch_64
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 208
    .local v3, obArry:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    const/4 v5, 0x0

    aget-object p0, v3, v5

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v5, 0x1

    aget-object p0, v3, v5

    check-cast p0, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v8, p0, v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 213
    .end local v3           #obArry:[Ljava/lang/Object;
    .restart local p0
    :pswitch_85
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSEnabled()V

    goto/16 :goto_5

    .line 217
    :pswitch_8c
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSDisabled()V

    goto/16 :goto_5

    .line 221
    :pswitch_93
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onAFStarted()V

    goto/16 :goto_5

    .line 225
    :pswitch_9a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 226
    .restart local v1       #freq:Ljava/lang/Long;
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onAFReceived(J)V

    .line 227
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto/16 :goto_5

    .line 162
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_14
        :pswitch_28
        :pswitch_1a
        :pswitch_36
        :pswitch_3c
        :pswitch_4a
        :pswitch_58
        :pswitch_5e
        :pswitch_64
        :pswitch_85
        :pswitch_8c
        :pswitch_93
        :pswitch_9a
    .end packed-switch
.end method
