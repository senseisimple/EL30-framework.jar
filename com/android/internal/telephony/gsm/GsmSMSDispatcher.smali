.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static SMSC_ADDRESS_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final hexDigitChars:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method private getSmscNumber([BZ)Ljava/lang/String;
    .registers 17
    .parameter "a"
    .parameter "garbage_value"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 75
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 79
    .local v2, extra:I
    const/4 v8, 0x0

    .line 81
    .local v8, smsc_length:I
    const/4 v4, 0x0

    .line 83
    .local v4, international:Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_13

    .line 85
    const-string v6, "NotSet"

    .local v6, smsc:Ljava/lang/String;
    move-object v7, v6

    .line 133
    .end local v6           #smsc:Ljava/lang/String;
    .local v7, smsc:Ljava/lang/String;
    :goto_12
    return-object v7

    .line 88
    .end local v7           #smsc:Ljava/lang/String;
    :cond_13
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_20

    .line 89
    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const/4 v4, 0x1

    .line 92
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 94
    const/16 v11, 0xa

    new-array v9, v11, [B

    .line 95
    .local v9, temp2:[B
    const/4 v11, 0x0

    array-length v12, p1

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    const/4 v1, 0x0

    .local v1, cx:I
    :goto_2e
    array-length v11, v9

    if-ge v1, v11, :cond_5e

    .line 98
    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_39

    .line 97
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 101
    :cond_39
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .line 102
    .local v3, hn:I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .line 103
    .local v5, ln:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_50

    .line 104
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    :cond_50
    const/16 v11, 0xa

    if-ge v3, v11, :cond_36

    .line 107
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 112
    .end local v3           #hn:I
    .end local v5           #ln:I
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, temp_smsc:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    mul-int/lit8 v8, v11, 0x2

    .line 116
    if-eqz v4, :cond_b3

    .line 118
    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 119
    .restart local v6       #smsc:Ljava/lang/String;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "international even smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_8a
    if-eqz p2, :cond_97

    .line 128
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 131
    :cond_97
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 133
    .end local v6           #smsc:Ljava/lang/String;
    .restart local v7       #smsc:Ljava/lang/String;
    goto/16 :goto_12

    .line 123
    .end local v7           #smsc:Ljava/lang/String;
    :cond_b3
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #smsc:Ljava/lang/String;
    goto :goto_8a
.end method

.method private resultToCause(I)I
    .registers 3
    .parameter "rc"

    .prologue
    .line 656
    packed-switch p1, :pswitch_data_14

    .line 673
    :pswitch_3
    const/16 v0, 0xff

    :goto_5
    return v0

    .line 660
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 662
    :pswitch_8
    const/16 v0, 0xd3

    goto :goto_5

    .line 664
    :pswitch_b
    const/16 v0, 0xd4

    goto :goto_5

    .line 666
    :pswitch_e
    const/16 v0, 0xd5

    goto :goto_5

    .line 669
    :pswitch_11
    const/16 v0, 0xd6

    goto :goto_5

    .line 656
    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 32
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    .line 507
    .local v24, ss:I
    if-eqz v24, :cond_49

    .line 508
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, count:I
    :goto_15
    move/from16 v0, v17

    move v1, v13

    if-ge v0, v1, :cond_11c

    .line 509
    const/16 v22, 0x0

    .line 510
    .local v22, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_31

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_31

    .line 511
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 513
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_31
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 514
    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 508
    add-int/lit8 v17, v17, 0x1

    goto :goto_15

    .line 519
    .end local v13           #count:I
    .end local v17           #i:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_49
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    move v0, v4

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 520
    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 521
    .local v19, msgCount:I
    const/4 v9, 0x0

    .line 523
    .local v9, encoding:I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 524
    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5f
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_84

    .line 525
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 526
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_7f

    if-eqz v9, :cond_7d

    const/4 v4, 0x1

    if-ne v9, v4, :cond_7f

    .line 529
    :cond_7d
    iget v9, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 531
    :cond_7f
    aput-object v15, v16, v17

    .line 524
    add-int/lit8 v17, v17, 0x1

    goto :goto_5f

    .line 534
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_84
    const/16 v17, 0x0

    :goto_86
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_11c

    .line 535
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 536
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    move-object v1, v12

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 537
    add-int/lit8 v4, v17, 0x1

    iput v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 538
    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 539
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 540
    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 541
    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v12

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 542
    const/4 v4, 0x1

    if-ne v9, v4, :cond_c1

    .line 543
    aget-object v4, v16, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 544
    aget-object v4, v16, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 547
    :cond_c1
    const/16 v22, 0x0

    .line 548
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_d8

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_d8

    .line 549
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 552
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_d8
    const/4 v14, 0x0

    .line 553
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_ee

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_ee

    .line 554
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 557
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_ee
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v14, :cond_11d

    const/4 v4, 0x1

    move v7, v4

    :goto_fc
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v10, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v11, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 561
    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v20, :cond_120

    .line 562
    const-string v4, "GSM"

    const-string/jumbo v5, "sms-submit pdu is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v9           #encoding:I
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v19           #msgCount:I
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v21           #refNumber:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_11c
    return-void

    .line 557
    .restart local v9       #encoding:I
    .restart local v12       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v16       #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v19       #msgCount:I
    .restart local v21       #refNumber:I
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    .restart local v23       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_11d
    const/4 v4, 0x0

    move v7, v4

    goto :goto_fc

    .line 565
    .restart local v20       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_120
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 566
    .local v18, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string/jumbo v4, "pdu"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 570
    .restart local v25       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 534
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_86
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 6
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_d

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 630
    :cond_d
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 5
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 635
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 637
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 16
    .parameter "smsb"

    .prologue
    const/16 v13, 0xb84

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v10, "GSM"

    .line 211
    if-nez p1, :cond_a

    .line 212
    const/4 v8, 0x2

    .line 305
    :goto_9
    return v8

    .line 214
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v5, v0

    .line 215
    .local v5, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v3, 0x0

    .line 217
    .local v3, handled:Z
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 220
    const-string v8, "GSM"

    const-string v8, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v11

    .line 221
    goto :goto_9

    .line 225
    :cond_1e
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 244
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    .line 246
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    .line 248
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_4c

    move v9, v11

    :goto_3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_48
    :goto_48
    if-eqz v3, :cond_7b

    move v8, v11

    .line 259
    goto :goto_9

    :cond_4c
    move v9, v12

    .line 248
    goto :goto_3d

    .line 250
    :cond_4e
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v8

    if-eqz v8, :cond_48

    .line 251
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    .line 252
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    .line 254
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_79

    move v9, v11

    :goto_6d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_79
    move v9, v12

    goto :goto_6d

    .line 262
    :cond_7b
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-nez v8, :cond_89

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v8

    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v8, v9, :cond_89

    .line 265
    const/4 v8, 0x3

    goto :goto_9

    .line 268
    :cond_89
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    .line 270
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v6, :cond_df

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v8, :cond_df

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v13, v8, :cond_df

    .line 271
    const/4 v2, 0x1

    .line 273
    .local v2, enabled:Z
    :try_start_9a
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "roaming_wap_push_enabled"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    .line 274
    .local v7, value:I
    if-ne v11, v7, :cond_d7

    move v2, v11

    .line 275
    :goto_ae
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRoamingPushEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c6} :catch_d9

    .line 279
    .end local v7           #value:I
    :goto_c6
    if-nez v2, :cond_df

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-eqz v8, :cond_df

    move v8, v11

    .line 280
    goto/16 :goto_9

    .restart local v7       #value:I
    :cond_d7
    move v2, v12

    .line 274
    goto :goto_ae

    .line 276
    .end local v7           #value:I
    :catch_d9
    move-exception v8

    move-object v1, v8

    .line 277
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c6

    .line 286
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #enabled:Z
    :cond_df
    if-eqz v6, :cond_e5

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v8, :cond_113

    .line 288
    :cond_e5
    new-array v4, v11, [[B

    .line 289
    .local v4, pdus:[[B
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v8

    aput-object v8, v4, v12

    .line 291
    if-eqz v6, :cond_10f

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v8, :cond_10f

    .line 292
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v8, v13, :cond_105

    .line 293
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v8

    goto/16 :goto_9

    .line 296
    :cond_105
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v4, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 302
    :goto_10c
    const/4 v8, -0x1

    goto/16 :goto_9

    .line 300
    :cond_10f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_10c

    .line 305
    .end local v4           #pdus:[[B
    :cond_113
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v9, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v8

    goto/16 :goto_9
.end method

.method public dispatchSmsServiceCenter(Ljava/lang/String;)V
    .registers 10
    .parameter "smsc_hexstring"

    .prologue
    const/4 v7, -0x1

    const-string v6, "GSM"

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 144
    .local v0, garbage_value:Z
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smsc_hexstring = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_57

    const-string v4, "F"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_57

    .line 149
    const/4 v0, 0x0

    .line 150
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring doesn\'t have garbage value"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_3d
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 160
    .local v2, scAddress:[B
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 162
    .local v3, smsc:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmscNumber([BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 164
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 167
    return-void

    .line 154
    .end local v2           #scAddress:[B
    .end local v3           #smsc:[Ljava/lang/String;
    :cond_57
    const/4 v0, 0x1

    .line 155
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring has garbage value"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 642
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 644
    return-void
.end method

.method protected handleBroadcastSms([B)V
    .registers 25
    .parameter "Cbpdu"

    .prologue
    .line 775
    const/16 v17, 0x0

    :try_start_2
    check-cast v17, [[B

    .line 776
    .local v17, pdus:[[B
    move-object/from16 v19, p1

    .line 779
    .local v19, receivedPdu:[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_7
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_59

    .line 780
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SMS CB pdu data: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .local v20, sb:Ljava/lang/StringBuilder;
    move v15, v11

    .local v15, j:I
    :goto_19
    add-int/lit8 v21, v11, 0x8

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_4d

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_4d

    .line 782
    aget-byte v21, v19, v15

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    .line 783
    .local v5, b:I
    const/16 v21, 0x10

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_3d

    .line 784
    const/16 v21, 0x30

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 786
    :cond_3d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 781
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    .line 788
    .end local v5           #b:I
    :cond_4d
    const-string v21, "GSM"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    add-int/lit8 v11, v11, 0x8

    goto :goto_7

    .line 792
    .end local v15           #j:I
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :cond_59
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 793
    .local v10, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v21, "gsm.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 794
    .local v18, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 795
    .local v6, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    .line 796
    .local v16, lac:I
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    .line 798
    .local v7, cid:I
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_13a

    .line 800
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v18

    move/from16 v3, v16

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 803
    .local v8, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pdus:[[B
    check-cast v17, [[B

    .line 805
    .restart local v17       #pdus:[[B
    if-nez v17, :cond_be

    .line 808
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_be
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    aput-object v19, v17, v21

    .line 816
    const/4 v11, 0x0

    :goto_ca
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_dc

    .line 817
    aget-object v21, v17, v11

    if-nez v21, :cond_d9

    .line 851
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v8           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :cond_d8
    :goto_d8
    return-void

    .line 816
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v8       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_d9
    add-int/lit8 v11, v11, 0x1

    goto :goto_ca

    .line 824
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .end local v8           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_e8
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v13

    .line 832
    .local v13, isEmergencyMessage:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 834
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchCbPdus([[B)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 841
    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_10e
    :goto_10e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d8

    .line 842
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 844
    .local v12, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v16

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v21

    if-nez v21, :cond_10e

    .line 845
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_129
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_129} :catch_12a

    goto :goto_10e

    .line 848
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v12           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v13           #isEmergencyMessage:Z
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :catch_12a
    move-exception v21

    move-object/from16 v9, v21

    .line 849
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v21, "GSM"

    const-string v22, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d8

    .line 827
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_13a
    const/16 v21, 0x1

    :try_start_13c
    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 828
    const/16 v21, 0x0

    aput-object v19, v17, v21
    :try_end_146
    .catch Ljava/lang/RuntimeException; {:try_start_13c .. :try_end_146} :catch_12a

    goto :goto_e8
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 177
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 178
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 180
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 182
    .local v7, tpStatus:I
    if-eqz v6, :cond_4a

    .line 183
    iget v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 184
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_18
    if-ge v2, v0, :cond_4a

    .line 185
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 186
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_4f

    .line 188
    const/16 v9, 0x40

    if-ge v7, v9, :cond_2e

    const/16 v9, 0x20

    if-ge v7, v9, :cond_33

    .line 189
    :cond_2e
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    :cond_33
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 192
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 195
    :try_start_44
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_44 .. :try_end_4a} :catch_52

    .line 203
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4a
    :goto_4a
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 204
    return-void

    .line 184
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 196
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_52
    move-exception v9

    goto :goto_4a
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 10
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 312
    if-eqz p6, :cond_f

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 314
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5, p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 315
    return-void

    .line 312
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_f
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9
    .parameter "tracker"

    .prologue
    .line 610
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 612
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 613
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 615
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 616
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 617
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 619
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 622
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 29
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 361
    .local v20, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 362
    .local v18, msgCount:I
    const/4 v10, 0x0

    .line 364
    .local v10, encoding:I
    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 365
    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_16
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3b

    .line 366
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 367
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_36

    if-eqz v10, :cond_34

    const/4 v5, 0x1

    if-ne v10, v5, :cond_36

    .line 370
    :cond_34
    iget v10, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 372
    :cond_36
    aput-object v15, v16, v17

    .line 365
    add-int/lit8 v17, v17, 0x1

    goto :goto_16

    .line 375
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3b
    const/16 v17, 0x0

    :goto_3d
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_ef

    .line 376
    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 377
    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 378
    add-int/lit8 v5, v17, 0x1

    iput v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 379
    move/from16 v0, v18

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 386
    const/4 v5, 0x1

    iput-boolean v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 387
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 388
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v13

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 389
    const/4 v5, 0x1

    if-ne v10, v5, :cond_78

    .line 390
    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 391
    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 394
    :cond_78
    const/16 v21, 0x0

    .line 395
    .local v21, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_8f

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_8f

    .line 396
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    check-cast v21, Landroid/app/PendingIntent;

    .line 399
    .restart local v21       #sentIntent:Landroid/app/PendingIntent;
    :cond_8f
    const/4 v14, 0x0

    .line 400
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_a5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_a5

    .line 401
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 404
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_a5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v14, :cond_e3

    const/4 v5, 0x1

    move v8, v5

    :goto_b3
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 408
    .local v19, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v19, :cond_e6

    .line 409
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v21

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 375
    :goto_df
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3d

    .line 404
    .end local v19           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_e3
    const/4 v5, 0x0

    move v8, v5

    goto :goto_b3

    .line 411
    .restart local v19       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_e6
    const-string v5, "GSM"

    const-string/jumbo v6, "sms-submit pdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 413
    .end local v13           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v19           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    .end local v22           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_ef
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .registers 32
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 423
    .local v19, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sput v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 424
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sput v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->LastMsg_MR:I

    .line 426
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 427
    .local v17, msgCount:I
    const/4 v10, 0x0

    .line 429
    .local v10, encoding:I
    const/16 v16, 0x0

    .end local p6
    .local v16, i:I
    :goto_1c
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_42

    .line 430
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p6

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 431
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_3f

    if-eqz v10, :cond_3d

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3f

    .line 434
    :cond_3d
    iget v10, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 429
    :cond_3f
    add-int/lit8 v16, v16, 0x1

    goto :goto_1c

    .line 438
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_42
    const/16 v16, 0x0

    :goto_44
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_e1

    .line 439
    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 440
    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v19

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 441
    add-int/lit8 v5, v16, 0x1

    iput v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 442
    move/from16 v0, v17

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 450
    const/4 v5, 0x1

    iput-boolean v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 451
    new-instance v21, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 452
    .local v21, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v13

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 454
    const/16 v20, 0x0

    .line 455
    .local v20, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_81

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_81

    .line 456
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    check-cast v20, Landroid/app/PendingIntent;

    .line 459
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_81
    const/4 v14, 0x0

    .line 460
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_97

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_97

    .line 461
    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 464
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_97
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v14, :cond_d5

    const/4 v5, 0x1

    move v8, v5

    :goto_a5
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 467
    .local v18, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v18, :cond_d8

    .line 468
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v20

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 438
    :goto_d1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_44

    .line 464
    .end local v18           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_d5
    const/4 v5, 0x0

    move v8, v5

    goto :goto_a5

    .line 470
    .restart local v18       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_d8
    const-string v5, "GSM"

    const-string/jumbo v6, "sms-submit pdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 472
    .end local v13           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v18           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    .end local v21           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_e1
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10
    .parameter "tracker"

    .prologue
    .line 576
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 578
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 579
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 581
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 582
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 584
    return-void
.end method

.method protected sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10
    .parameter "tracker"

    .prologue
    .line 589
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 591
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 592
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 594
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 595
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 597
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 320
    if-eqz p5, :cond_f

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 322
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 323
    return-void

    .line 320
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_f
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 329
    if-eqz p5, :cond_11

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 331
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_13

    .line 332
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduForMobileTracker([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 335
    :goto_10
    return-void

    .line 329
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 334
    .restart local v0       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_13
    const-string v1, "GSM"

    const-string/jumbo v2, "sms-submit pdu is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .registers 27
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 344
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 345
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz p5, :cond_3a

    const/4 v5, 0x1

    move v8, v5

    :goto_c
    iget v13, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v14, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v5 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 348
    .local v16, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v16, :cond_3d

    .line 349
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 352
    :goto_39
    return-void

    .line 345
    .end local v16           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_3a
    const/4 v5, 0x0

    move v8, v5

    goto :goto_c

    .line 351
    .restart local v16       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_3d
    const-string v5, "GSM"

    const-string/jumbo v6, "sms-submit pdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .registers 5
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 649
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 651
    return-void
.end method
