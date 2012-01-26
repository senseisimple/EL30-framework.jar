.class Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;
.super Landroid/os/Handler;
.source "PhoneInfoInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/PhoneInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneInfoManager"
.end annotation


# instance fields
.field private mDataconnection:[I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private property:Ljava/lang/String;

.field private test:I

.field final synthetic this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

.field private waiting:I


# direct methods
.method public constructor <init>(Lcom/samsungframeworks/internal/PhoneInfoInterface;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    .line 1160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1133
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    .line 1135
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->test:I

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1161
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1163
    return-void
.end method


# virtual methods
.method getDataProfileReturnValue()I
    .registers 3

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method getPropertyValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->property:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-string v3, "PhoneInfoInterface"

    .line 1172
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_e8

    .line 1229
    :cond_7
    :goto_7
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->notifyTo()V

    .line 1230
    return-void

    .line 1174
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1176
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2e

    .line 1177
    const-string v1, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ril get fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1180
    :cond_2e
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    #getter for: Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I
    invoke-static {v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->access$000(Lcom/samsungframeworks/internal/PhoneInfoInterface;)I

    move-result v2

    if-eq v1, v2, :cond_5f

    .line 1181
    const-string v1, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd sync fail in handle Message, you miss a commands."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    #getter for: Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I
    invoke-static {v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->access$000(Lcom/samsungframeworks/internal/PhoneInfoInterface;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->property:Ljava/lang/String;

    .line 1186
    :cond_5f
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->property:Ljava/lang/String;

    goto :goto_7

    .line 1190
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1192
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 1193
    const-string v1, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ril set fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1199
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1201
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_b9

    .line 1202
    const-string v1, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data connection get fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    .line 1204
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_7

    .line 1208
    :cond_b9
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    goto/16 :goto_7

    .line 1212
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_c3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1214
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 1215
    const-string v1, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data connection set fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1172
    nop

    :pswitch_data_e8
    .packed-switch -0x1
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_66
        :pswitch_8a
        :pswitch_c3
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized notifyTo()V
    .registers 3

    .prologue
    .line 1153
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    .line 1155
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1157
    :cond_c
    monitor-exit p0

    return-void

    .line 1153
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 1167
    return-void
.end method

.method declared-synchronized waitResponse(I)V
    .registers 4
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1148
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    .line 1149
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 1150
    monitor-exit p0

    return-void

    .line 1148
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
