.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 304
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 308
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 305
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .parameter "msg"

    .prologue
    .line 321
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v0

    .line 322
    .local v8, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v7, 0x0

    .line 324
    .local v7, req:Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v10, v0

    packed-switch v10, :pswitch_data_1ea

    .line 455
    :cond_14
    :goto_14
    return-void

    .line 331
    :pswitch_15
    const/4 v1, 0x0

    .line 335
    .local v1, alreadySubtracted:Z
    :try_start_16
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 337
    .local v9, s:Landroid/net/LocalSocket;
    if-nez v9, :cond_34

    .line 338
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 339
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 340
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v10, :cond_32

    .line 341
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 342
    :cond_32
    const/4 v1, 0x1

    goto :goto_14

    .line 346
    :cond_34
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_39} :catch_85
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_39} :catch_b7

    .line 347
    :try_start_39
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 349
    monitor-exit v10
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_b4

    .line 351
    :try_start_49
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v10, :cond_57

    .line 352
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 353
    :cond_57
    const/4 v1, 0x1

    .line 357
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 358
    .local v3, data:[B
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 359
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 361
    array-length v10, v3

    const/16 v11, 0x2000

    if-le v10, v11, :cond_d5

    .line 362
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parcel larger than max bytes allowed! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_85} :catch_85
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_85} :catch_b7

    .line 376
    .end local v3           #data:[B
    .end local v9           #s:Landroid/net/LocalSocket;
    :catch_85
    move-exception v10

    move-object v4, v10

    .line 377
    .local v4, ex:Ljava/io/IOException;
    const-string v10, "RILJ"

    const-string v11, "IOException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 381
    if-nez v7, :cond_9a

    if-nez v1, :cond_a2

    .line 382
    :cond_9a
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 383
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 396
    .end local v4           #ex:Ljava/io/IOException;
    :cond_a2
    :goto_a2
    if-nez v1, :cond_14

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v10, :cond_14

    .line 397
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    goto/16 :goto_14

    .line 349
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catchall_b4
    move-exception v11

    :try_start_b5
    monitor-exit v10
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    :try_start_b6
    throw v11
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b7} :catch_85
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_b7} :catch_b7

    .line 385
    .end local v9           #s:Landroid/net/LocalSocket;
    :catch_b7
    move-exception v10

    move-object v5, v10

    .line 386
    .local v5, exc:Ljava/lang/RuntimeException;
    const-string v10, "RILJ"

    const-string v11, "Uncaught exception "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 390
    if-nez v7, :cond_cc

    if-nez v1, :cond_a2

    .line 391
    :cond_cc
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 392
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_a2

    .line 368
    .end local v5           #exc:Ljava/lang/RuntimeException;
    .restart local v3       #data:[B
    .restart local v9       #s:Landroid/net/LocalSocket;
    :cond_d5
    :try_start_d5
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    aput-byte v14, v10, v11

    .line 369
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x2

    array-length v12, v3

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 370
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x3

    array-length v12, v3

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 374
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 375
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_104} :catch_85
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_104} :catch_b7

    goto :goto_a2

    .line 405
    .end local v1           #alreadySubtracted:Z
    .end local v3           #data:[B
    .end local v9           #s:Landroid/net/LocalSocket;
    :pswitch_105
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 406
    :try_start_10a
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_1e1

    .line 416
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    if-eqz v11, :cond_1ad

    .line 417
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTE: mReqWaiting is NOT 0 but"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v13, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at TIMEOUT, reset!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " There still msg waitng for response"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 424
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_14c
    .catchall {:try_start_10a .. :try_end_14c} :catchall_1e4

    .line 425
    :try_start_14c
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 426
    .local v2, count:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v6, 0x0

    .local v6, i:I
    :goto_16d
    if-ge v6, v2, :cond_1ac

    .line 430
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v0

    .line 431
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    add-int/lit8 v6, v6, 0x1

    goto :goto_16d

    .line 434
    :cond_1ac
    monitor-exit v11
    :try_end_1ad
    .catchall {:try_start_14c .. :try_end_1ad} :catchall_1e7

    .line 444
    .end local v2           #count:I
    .end local v6           #i:I
    :cond_1ad
    :try_start_1ad
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-eqz v11, :cond_1da

    .line 445
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v13, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at TIMEOUT, reset!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 450
    :cond_1da
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 452
    :cond_1e1
    monitor-exit v10

    goto/16 :goto_14

    :catchall_1e4
    move-exception v11

    monitor-exit v10
    :try_end_1e6
    .catchall {:try_start_1ad .. :try_end_1e6} :catchall_1e4

    throw v11

    .line 434
    :catchall_1e7
    move-exception v12

    :try_start_1e8
    monitor-exit v11
    :try_end_1e9
    .catchall {:try_start_1e8 .. :try_end_1e9} :catchall_1e7

    :try_start_1e9
    throw v12
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_1e4

    .line 324
    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_15
        :pswitch_105
    .end packed-switch
.end method

.method public run()V
    .registers 1

    .prologue
    .line 314
    return-void
.end method
