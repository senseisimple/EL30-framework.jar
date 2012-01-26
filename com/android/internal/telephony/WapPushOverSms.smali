.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 4
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 50
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 51
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 405
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I
    .registers 23
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 434
    const/4 v9, 0x1

    .line 436
    .local v9, ret:I
    move/from16 v0, p5

    new-array v0, v0, [B

    move-object v7, v0

    .line 437
    .local v7, header:[B
    const/4 v10, 0x0

    array-length v11, v7

    move-object v0, p1

    move/from16 v1, p4

    move-object v2, v7

    move v3, v10

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    add-int v6, p4, p5

    .line 439
    .local v6, dataIndex:I
    array-length v10, p1

    sub-int/2addr v10, v6

    new-array v5, v10, [B

    .line 440
    .local v5, data:[B
    const/4 v10, 0x0

    array-length v11, v5

    invoke-static {p1, v6, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v8, intent:Landroid/content/Intent;
    const-string/jumbo v10, "transactionId"

    invoke-virtual {v8, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    const-string/jumbo v10, "pduType"

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    const-string v10, "header"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 446
    const-string v10, "data"

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 447
    const-string v10, "applicationId"

    move-object v0, v8

    move-object v1, v10

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 451
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receive EMN : mimeType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " binaryContentType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " applicationId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sparse-switch p7, :sswitch_data_160

    .line 510
    :goto_7e
    return v9

    .line 455
    :sswitch_7f
    const-string v10, "application/vnd.docomo.pf"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-wide/32 v10, 0x9056

    cmp-long v10, p8, v10

    if-nez v10, :cond_a4

    .line 458
    const-string v10, "com.nttdocomo.email.service"

    const-string v11, "com.nttdocomo.email.service.ImodeMailService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_9c

    .line 460
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 461
    const/4 v9, -0x1

    .line 463
    :cond_9c
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : i-mode.net"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 466
    :cond_a4
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 471
    :sswitch_c0
    const-string v10, "application/vnd.syncml.notification"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-wide/16 v10, 0x7

    cmp-long v10, p8, v10

    if-nez v10, :cond_e4

    .line 474
    const-string v10, "jp.co.nttdocomo.fota"

    const-string v11, "jp.co.nttdocomo.fota.SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_dc

    .line 476
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 477
    const/4 v9, -0x1

    .line 479
    :cond_dc
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : fota"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 482
    :cond_e4
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 487
    :sswitch_101
    const-string v10, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-wide/32 v10, 0x905c

    cmp-long v10, p8, v10

    if-nez v10, :cond_127

    .line 490
    const-string v10, "jp.co.nttdocomo.carriermail"

    const-string v11, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_11e

    .line 492
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 493
    const/4 v9, -0x1

    .line 495
    :cond_11e
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : Carrier Mail"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 497
    :cond_127
    const-wide/16 v10, 0x9

    cmp-long v10, p8, v10

    if-nez v10, :cond_142

    .line 499
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v10, :cond_139

    .line 500
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v11, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v10, v8, v11}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 501
    const/4 v9, -0x1

    .line 503
    :cond_139
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : mopera U"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 506
    :cond_142
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 453
    nop

    :sswitch_data_160
    .sparse-switch
        0x44 -> :sswitch_c0
        0x30a -> :sswitch_101
        0x310 -> :sswitch_7f
    .end sparse-switch
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .registers 12
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 382
    new-array v2, p5, [B

    .line 383
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    add-int v1, p4, p5

    .line 385
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 386
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 393
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 395
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .registers 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 367
    new-array v0, p5, [B

    .line 368
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 375
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .registers 7
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 418
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 424
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private dispatchWapPdu_SLC([BIIIILjava/lang/String;IJ)I
    .registers 23
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 525
    const/4 v9, 0x1

    .line 527
    .local v9, ret:I
    move/from16 v0, p5

    new-array v0, v0, [B

    move-object v7, v0

    .line 528
    .local v7, header:[B
    const/4 v10, 0x0

    array-length v11, v7

    move-object v0, p1

    move/from16 v1, p4

    move-object v2, v7

    move v3, v10

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    add-int v6, p4, p5

    .line 530
    .local v6, dataIndex:I
    array-length v10, p1

    sub-int/2addr v10, v6

    new-array v5, v10, [B

    .line 531
    .local v5, data:[B
    const/4 v10, 0x0

    array-length v11, v5

    invoke-static {p1, v6, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v8, intent:Landroid/content/Intent;
    const-string/jumbo v10, "transactionId"

    invoke-virtual {v8, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    const-string/jumbo v10, "pduType"

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v10, "header"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 537
    const-string v10, "data"

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 538
    const-string v10, "applicationId"

    move-object v0, v8

    move-object v1, v10

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 542
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receive SLC : mimeType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " binaryContentType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " applicationId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v10, "application/vnd.syncml+wbxml"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-wide/32 v10, 0x905f

    cmp-long v10, p8, v10

    if-nez v10, :cond_99

    .line 547
    const-string v10, "com.nttdocomo.android.syncmlapp"

    const-string v11, "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_98

    .line 549
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 550
    const/4 v9, -0x1

    .line 557
    :cond_98
    :goto_98
    return v9

    .line 554
    :cond_99
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .registers 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 347
    new-array v2, p6, [B

    .line 348
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    add-int v1, p5, p6

    .line 352
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 353
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 360
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 362
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 363
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 28
    .parameter "pdu"

    .prologue
    .line 65
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v24, 0x0

    .line 68
    .local v24, index:I
    add-int/lit8 v25, v24, 0x1

    .end local v24           #index:I
    .local v25, index:I
    aget-byte v4, p1, v24

    and-int/lit16 v6, v4, 0xff

    .line 69
    .local v6, transactionId:I
    add-int/lit8 v24, v25, 0x1

    .end local v25           #index:I
    .restart local v24       #index:I
    aget-byte v4, p1, v25

    and-int/lit16 v7, v4, 0xff

    .line 70
    .local v7, pduType:I
    const/4 v9, 0x0

    .line 72
    .local v9, headerLength:I
    const/4 v4, 0x6

    if-eq v7, v4, :cond_4b

    const/4 v4, 0x7

    if-eq v7, v4, :cond_4b

    .line 74
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received non-PUSH WAP PDU. Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v4, 0x1

    .line 342
    :goto_4a
    return v4

    .line 78
    .restart local v6       #transactionId:I
    :cond_4b
    new-instance v4, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 87
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v4, 0x2

    goto :goto_4a

    .line 90
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v9, v4

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v24, v4, 0x2

    .line 93
    move/from16 v8, v24

    .line 107
    .local v8, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_9d

    .line 108
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v4, 0x2

    goto :goto_4a

    .line 112
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, mimeType:Ljava/lang/String;
    if-nez v10, :cond_11f

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v11, v4

    .line 116
    .local v11, binaryContentType:I
    sparse-switch v11, :sswitch_data_214

    .line 189
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received PDU. Unsupported Content-Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v4, 0x1

    goto/16 :goto_4a

    .line 118
    .restart local v6       #transactionId:I
    :sswitch_d0
    const-string v10, "application/vnd.oma.drm.rights+xml"

    .line 256
    :goto_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v24, v24, v4

    .line 258
    const/16 v22, 0x0

    .line 259
    .local v22, dispatchedByApplication:Z
    sparse-switch v11, :sswitch_data_24e

    .line 338
    :goto_e2
    if-nez v22, :cond_f5

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v10

    move/from16 v19, v8

    move/from16 v20, v9

    .line 339
    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 342
    :cond_f5
    const/4 v4, -0x1

    goto/16 :goto_4a

    .line 121
    .end local v22           #dispatchedByApplication:Z
    :sswitch_f8
    const-string v10, "application/vnd.oma.drm.rights+wbxml"

    .line 122
    goto :goto_d2

    .line 124
    :sswitch_fb
    const-string v10, "application/vnd.wap.sic"

    .line 125
    goto :goto_d2

    .line 127
    :sswitch_fe
    const-string v10, "application/vnd.wap.slc"

    .line 128
    goto :goto_d2

    .line 130
    :sswitch_101
    const-string v10, "application/vnd.wap.coc"

    .line 131
    goto :goto_d2

    .line 133
    :sswitch_104
    const-string v10, "application/vnd.wap.mms-message"

    .line 134
    goto :goto_d2

    .line 136
    :sswitch_107
    const-string v10, "application/vnd.omaloc-supl-init"

    .line 137
    goto :goto_d2

    .line 140
    :sswitch_10a
    const-string v10, "application/vnd.syncml.notification"

    .line 141
    goto :goto_d2

    .line 144
    :sswitch_10d
    const-string v10, "application/vnd.docomo.pf"

    .line 145
    goto :goto_d2

    .line 160
    :sswitch_110
    const-string v10, "application/vnd.wap.connectivity-wbxml"

    .line 161
    goto :goto_d2

    .line 163
    :sswitch_113
    const-string v10, "application/vnd.syncml.dm+wbxml"

    .line 164
    goto :goto_d2

    .line 166
    :sswitch_116
    const-string v10, "application/vnd.syncml.dm+xml"

    .line 167
    goto :goto_d2

    .line 171
    :sswitch_119
    const-string v10, "application/vnd.wap.emn+wbxml"

    .line 172
    goto :goto_d2

    .line 184
    :sswitch_11c
    const-string v10, "application/vnd.syncml+wbxml"

    .line 185
    goto :goto_d2

    .line 195
    .end local v11           #binaryContentType:I
    :cond_11f
    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 196
    const/16 v11, 0x4a

    .restart local v11       #binaryContentType:I
    goto :goto_d2

    .line 197
    .end local v11           #binaryContentType:I
    :cond_12a
    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_135

    .line 198
    const/16 v11, 0x4b

    .restart local v11       #binaryContentType:I
    goto :goto_d2

    .line 199
    .end local v11           #binaryContentType:I
    :cond_135
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    .line 200
    const/16 v11, 0x2e

    .restart local v11       #binaryContentType:I
    goto :goto_d2

    .line 201
    .end local v11           #binaryContentType:I
    :cond_140
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14b

    .line 202
    const/16 v11, 0x30

    .restart local v11       #binaryContentType:I
    goto :goto_d2

    .line 203
    .end local v11           #binaryContentType:I
    :cond_14b
    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_157

    .line 204
    const/16 v11, 0x32

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 205
    .end local v11           #binaryContentType:I
    :cond_157
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_163

    .line 206
    const/16 v11, 0x3e

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 207
    .end local v11           #binaryContentType:I
    :cond_163
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 208
    const/16 v11, 0x312

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 209
    .end local v11           #binaryContentType:I
    :cond_16f
    const-string v4, "application/vnd.docomo.pf"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 210
    const/16 v11, 0x310

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 222
    .end local v11           #binaryContentType:I
    :cond_17b
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_187

    .line 223
    const/16 v11, 0x36

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 224
    .end local v11           #binaryContentType:I
    :cond_187
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 225
    const/16 v11, 0x42

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 226
    .end local v11           #binaryContentType:I
    :cond_193
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19f

    .line 227
    const/16 v11, 0x43

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 247
    .end local v11           #binaryContentType:I
    :cond_19f
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ab

    .line 248
    const/16 v11, 0x44

    .restart local v11       #binaryContentType:I
    goto/16 :goto_d2

    .line 252
    .end local v11           #binaryContentType:I
    :cond_1ab
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received PDU. Unknown Content-Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v4, 0x1

    goto/16 :goto_4a

    .restart local v6       #transactionId:I
    .restart local v11       #binaryContentType:I
    .restart local v22       #dispatchedByApplication:Z
    :sswitch_1c6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 261
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 262
    const/16 v22, 0x1

    .line 263
    goto/16 :goto_e2

    :sswitch_1d1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 265
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 266
    const/16 v22, 0x1

    .line 267
    goto/16 :goto_e2

    .line 285
    :sswitch_1dc
    const/16 v22, 0x0

    .line 286
    goto/16 :goto_e2

    .line 293
    :sswitch_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v23

    .line 294
    .local v23, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 296
    .local v21, applicationIdObj:Ljava/lang/Object;
    const-wide/16 v12, 0x0

    .line 297
    .local v12, applicationId:J
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/Long;

    move v4, v0

    if-eqz v4, :cond_20a

    .line 298
    check-cast v21, Ljava/lang/Long;

    .end local v21           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_20a
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 300
    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I

    move-result v4

    goto/16 :goto_4a

    .line 116
    :sswitch_data_214
    .sparse-switch
        0x2e -> :sswitch_fb
        0x30 -> :sswitch_fe
        0x32 -> :sswitch_101
        0x36 -> :sswitch_110
        0x3e -> :sswitch_104
        0x42 -> :sswitch_113
        0x43 -> :sswitch_116
        0x44 -> :sswitch_10a
        0x4a -> :sswitch_d0
        0x4b -> :sswitch_f8
        0xb0 -> :sswitch_11c
        0x30a -> :sswitch_119
        0x310 -> :sswitch_10d
        0x312 -> :sswitch_107
    .end sparse-switch

    .line 259
    :sswitch_data_24e
    .sparse-switch
        0x2e -> :sswitch_1dc
        0x32 -> :sswitch_1c6
        0x36 -> :sswitch_1dc
        0x3e -> :sswitch_1d1
        0x42 -> :sswitch_1dc
        0x43 -> :sswitch_1dc
        0x30a -> :sswitch_1e0
        0x310 -> :sswitch_1e0
    .end sparse-switch
.end method
