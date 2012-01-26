.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 522
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const-string v12, "RILJ"

    .line 526
    const/4 v5, 0x0

    .line 529
    .local v5, retryCount:I
    :goto_5
    const/4 v6, 0x0

    .line 533
    .local v6, s:Landroid/net/LocalSocket;
    :try_start_6
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_a9

    .line 534
    .end local v6           #s:Landroid/net/LocalSocket;
    .local v7, s:Landroid/net/LocalSocket;
    :try_start_b
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v9, "rild"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 536
    .local v2, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_101
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_62

    .line 569
    const/4 v5, 0x0

    .line 571
    :try_start_19
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v7, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 572
    const-string v9, "RILJ"

    const-string v10, "Connected to \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_24} :catch_62

    .line 574
    const/4 v3, 0x0

    .line 576
    .local v3, length:I
    :try_start_25
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 581
    .local v1, is:Ljava/io/InputStream;
    :goto_2d
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v1, v9}, Lcom/android/internal/telephony/RIL;->access$200(Ljava/io/InputStream;[B)I

    move-result v3

    .line 583
    if-gez v3, :cond_ac

    .line 585
    const-string/jumbo v9, "ril.rildReset"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3d} :catch_c4
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_3d} :catch_cf

    .line 606
    .end local v1           #is:Ljava/io/InputStream;
    :goto_3d
    :try_start_3d
    const-string v9, "RILJ"

    const-string v10, "Disconnected from \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4b} :catch_62

    .line 612
    :try_start_4b
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_52} :catch_fe
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_52} :catch_62

    .line 616
    :goto_52
    :try_start_52
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 617
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 620
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_61} :catch_62

    goto :goto_5

    .line 621
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :catch_62
    move-exception v9

    move-object v8, v9

    move-object v6, v7

    .line 622
    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    .local v8, tr:Ljava/lang/Throwable;
    :goto_65
    const-string v9, "RILJ"

    const-string v9, "Uncaught exception"

    invoke-static {v12, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    return-void

    .line 537
    .end local v8           #tr:Ljava/lang/Throwable;
    :catch_6d
    move-exception v9

    move-object v0, v9

    .line 539
    .local v0, ex:Ljava/io/IOException;
    :goto_6f
    if-eqz v6, :cond_74

    .line 540
    :try_start_71
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_f9
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_a9

    .line 549
    :cond_74
    :goto_74
    if-ne v5, v13, :cond_9d

    .line 550
    :try_start_76
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, continuing to retry silently"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_94} :catch_a9

    .line 561
    :cond_94
    :goto_94
    const-wide/16 v9, 0xfa0

    :try_start_96
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_99} :catch_fc
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_99} :catch_a9

    .line 565
    :goto_99
    add-int/lit8 v5, v5, 0x1

    .line 566
    goto/16 :goto_5

    .line 554
    :cond_9d
    if-lez v5, :cond_94

    if-ge v5, v13, :cond_94

    .line 555
    :try_start_a1
    const-string v9, "RILJ"

    const-string v10, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a8} :catch_a9

    goto :goto_94

    .line 621
    .end local v0           #ex:Ljava/io/IOException;
    :catch_a9
    move-exception v9

    move-object v8, v9

    goto :goto_65

    .line 589
    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v7       #s:Landroid/net/LocalSocket;
    :cond_ac
    :try_start_ac
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 590
    .local v4, p:Landroid/os/Parcel;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 591
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 595
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v9, v4}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 596
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_c2} :catch_c4
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_c2} :catch_cf

    goto/16 :goto_2d

    .line 598
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #p:Landroid/os/Parcel;
    :catch_c4
    move-exception v9

    move-object v0, v9

    .line 599
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_c6
    const-string v9, "RILJ"

    const-string v10, "\'rild\' socket closed"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 601
    .end local v0           #ex:Ljava/io/IOException;
    :catch_cf
    move-exception v9

    move-object v8, v9

    .line 602
    .restart local v8       #tr:Ljava/lang/Throwable;
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uncaught exception read length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_f7} :catch_62

    goto/16 :goto_3d

    .line 542
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v7           #s:Landroid/net/LocalSocket;
    .end local v8           #tr:Ljava/lang/Throwable;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v6       #s:Landroid/net/LocalSocket;
    :catch_f9
    move-exception v9

    goto/16 :goto_74

    .line 562
    :catch_fc
    move-exception v9

    goto :goto_99

    .line 613
    .end local v0           #ex:Ljava/io/IOException;
    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v7       #s:Landroid/net/LocalSocket;
    :catch_fe
    move-exception v9

    goto/16 :goto_52

    .line 537
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :catch_101
    move-exception v9

    move-object v0, v9

    move-object v6, v7

    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    goto/16 :goto_6f
.end method
