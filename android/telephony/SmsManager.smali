.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field private static final CopyToSim_Fail:I = 0x1

.field private static final CopyToSim_NotAvailable:I = 0x2

.field private static final CopyToSim_Success:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SmsManager"

.field public static final RESULT_ERROR_DSAC_FAILURE:I = 0x7

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field public static final VALUE_INPUT_MODE_AUTO:I = 0x2

.field public static final VALUE_INPUT_MODE_GSM7BIT:I = 0x0

.field public static final VALUE_INPUT_MODE_UCS2:I = 0x1

.field static mMsgEncodingType:I

.field private static sInstance:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    sput v0, Landroid/telephony/SmsManager;->mMsgEncodingType:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    return-void
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_28

    .line 924
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 925
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v0, :cond_28

    .line 926
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 928
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_25

    .line 929
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 930
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_25

    .line 931
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 936
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_28
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .registers 1

    .prologue
    .line 528
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    if-nez v0, :cond_b

    .line 529
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 531
    :cond_b
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method private setByte(SLjava/io/ByteArrayOutputStream;)V
    .registers 5
    .parameter "a"
    .parameter "out"

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, c:I
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 467
    shr-int/lit8 v0, p1, 0x8

    .line 468
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    return-void
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 14
    .parameter "body"
    .parameter "scAddress"
    .parameter "Address"
    .parameter "SmsType"
    .parameter "date"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "SmsManager"

    .line 581
    const/4 v2, 0x0

    .line 583
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSMSAvailable()Z

    move-result v3

    if-nez v3, :cond_15

    .line 585
    const-string v3, "SmsManager"

    const-string v3, "getSimDeliverPdu : CopyToSim_NotAvailable"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 623
    :goto_14
    return v3

    .line 589
    :cond_15
    if-ne p4, v6, :cond_49

    .line 593
    const/4 v3, 0x0

    :try_start_18
    invoke-static {p2, p3, p1, p5, v3}, Landroid/telephony/SmsMessage;->getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v1

    .line 594
    .local v1, pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    if-nez v1, :cond_20

    move v3, v6

    .line 595
    goto :goto_14

    .line 597
    :cond_20
    iget-object v3, v1, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    iget-object v4, v1, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_2d

    move-result v2

    .line 617
    .end local v1           #pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    :goto_29
    if-eqz v2, :cond_67

    .line 619
    const/4 v3, 0x0

    goto :goto_14

    .line 599
    :catch_2d
    move-exception v3

    move-object v0, v3

    .line 601
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimDeliverPdu Encoding ERR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 602
    goto :goto_14

    .line 607
    .end local v0           #e:Ljava/lang/Exception;
    :cond_49
    invoke-static {p2, p3, p1, v5}, Landroid/telephony/SmsMessage;->getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 608
    .local v1, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    if-nez v1, :cond_51

    move v3, v6

    .line 609
    goto :goto_14

    .line 611
    :cond_51
    if-ne p4, v4, :cond_5d

    .line 612
    iget-object v3, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v4, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v5, 0x5

    invoke-virtual {p0, v3, v4, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    goto :goto_29

    .line 614
    :cond_5d
    iget-object v3, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v4, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v5, 0x7

    invoke-virtual {p0, v3, v4, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    goto :goto_29

    .end local v1           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_67
    move v3, v6

    .line 623
    goto :goto_14
.end method

.method public copyMessageToIcc([B[BI)Z
    .registers 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 555
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 556
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 557
    invoke-interface {v0, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 563
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 559
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public deleteMessageFromIcc(I)Z
    .registers 6
    .parameter "messageIndex"

    .prologue
    .line 677
    const/4 v2, 0x0

    .line 678
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 679
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 682
    :try_start_9
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 683
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1a

    .line 684
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1b

    move-result v2

    .line 690
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1a
    :goto_1a
    return v2

    .line 686
    :catch_1b
    move-exception v3

    goto :goto_1a
.end method

.method public disableCellBroadcast(I)Z
    .registers 5
    .parameter "messageIdentifier"

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 795
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 796
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 797
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 803
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 799
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public disableCellBroadcastRange(II)Z
    .registers 6
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 854
    const/4 v1, 0x0

    .line 857
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 858
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 859
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 865
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 861
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 4
    .parameter "text"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .registers 5
    .parameter "messageIdentifier"

    .prologue
    .line 762
    const/4 v1, 0x0

    .line 765
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 766
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 767
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 773
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 769
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public enableCellBroadcastRange(II)Z
    .registers 6
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 823
    const/4 v1, 0x0

    .line 826
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 827
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 828
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 834
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 830
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    const/4 v1, 0x0

    .line 735
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 736
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 737
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_16

    move-result-object v1

    .line 743
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 739
    :catch_16
    move-exception v2

    goto :goto_11
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v9, "SmsManager"

    .line 333
    const-string v7, "SmsManager"

    const-string v7, "[CB] In getCbConfig of SmsManager.java  "

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v6, 0x0

    .line 337
    .local v6, out:[B
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 340
    .local v0, cbConfig:Landroid/telephony/gsm/CbConfig;
    :try_start_12
    const-string v7, "isms"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 342
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_2d

    .line 343
    invoke-interface {v3}, Lcom/android/internal/telephony/ISms;->getCbSettings()[B
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_36

    move-result-object v6

    .line 354
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_22
    if-nez v6, :cond_40

    .line 355
    const-string v7, "SmsManager"

    const-string v7, "[CB] out is null. Return null."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v12

    .line 389
    :goto_2c
    return-object v7

    .line 347
    .restart local v3       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2d
    :try_start_2d
    const-string v7, "SmsManager"

    const-string v8, "[CB] iccISms == null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_36

    move-object v7, v12

    .line 348
    goto :goto_2c

    .line 350
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_36
    move-exception v7

    move-object v1, v7

    .line 352
    .local v1, ex:Landroid/os/RemoteException;
    const-string v7, "SmsManager"

    const-string v7, "[CB ] Exception In getCbConfig of SmsManager.java  "

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 359
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_40
    aget-byte v7, v6, v11

    if-ne v7, v10, :cond_74

    .line 360
    iput-boolean v10, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 364
    :goto_46
    aget-byte v7, v6, v10

    int-to-char v7, v7

    iput-char v7, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 365
    const/4 v7, 0x2

    aget-byte v7, v6, v7

    int-to-char v7, v7

    iput-char v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 366
    const/4 v7, 0x3

    aget-byte v7, v6, v7

    iput v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 368
    iget v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    new-array v5, v7, [S

    .line 370
    .local v5, msgIDs:[S
    const/4 v2, 0x4

    .local v2, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5c
    array-length v7, v5

    if-ge v4, v7, :cond_77

    .line 373
    aget-byte v7, v6, v2

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v5, v4

    .line 370
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 362
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v5           #msgIDs:[S
    :cond_74
    iput-boolean v11, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    goto :goto_46

    .line 376
    .restart local v2       #i:I
    .restart local v4       #j:I
    .restart local v5       #msgIDs:[S
    :cond_77
    iput-object v5, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 378
    const-string v7, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SmsManger- CB] bCBEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " selectedId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-char v8, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msgIdMaxCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-char v8, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msgIdCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v2, 0x0

    :goto_b8
    iget-object v7, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v7, v7

    if-ge v2, v7, :cond_dc

    .line 385
    const-string v7, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CB] msgIDs =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_b8

    :cond_dc
    move-object v7, v0

    .line 389
    goto/16 :goto_2c
.end method

.method public getMessagesFromIcc(I)[B
    .registers 5
    .parameter "index"

    .prologue
    .line 950
    const/4 v1, 0x0

    .line 953
    .local v1, record:[B
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 954
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 955
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getMessagesFromIccEf(I)[B
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v1

    .line 961
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return-object v1

    .line 957
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public getSMSAvailable()Z
    .registers 6

    .prologue
    const-string v4, "SmsManager"

    .line 629
    const-string v3, "SmsManager"

    const-string v3, "getSMSAvailable in SmsManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v2, 0x0

    .line 632
    .local v2, ret:Z
    :try_start_a
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 634
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1a

    .line 635
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSAvailable()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    move-result v2

    .line 641
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1a
    :goto_1a
    return v2

    .line 637
    :catch_1b
    move-exception v3

    move-object v0, v3

    .line 639
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v3, "[CB ] Exception In getSMSAvailable() of SmsManager.java  "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getSMSPAvailable()Z
    .registers 6

    .prologue
    const-string v4, "SmsManager"

    .line 649
    const-string v3, "SmsManager"

    const-string v3, "getSMSPAvailable in SmsManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v2, 0x0

    .line 653
    .local v2, ret:Z
    :try_start_a
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 655
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1a

    .line 656
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSPAvailable()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    move-result v2

    .line 662
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1a
    :goto_1a
    return v2

    .line 658
    :catch_1b
    move-exception v3

    move-object v0, v3

    .line 660
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v3, "[CB ] Exception In getSMSPAvailable() of SmsManager.java  "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 14
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_e
    if-eqz p4, :cond_13

    array-length v1, p4

    if-nez v1, :cond_1b

    .line 508
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_1b
    :try_start_1b
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 513
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_34

    .line 514
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_34} :catch_35

    .line 520
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_34
    :goto_34
    return-void

    .line 517
    :catch_35
    move-exception v1

    goto :goto_34
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13
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
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_10
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_20

    .line 241
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_20
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_3b

    .line 246
    :try_start_26
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 247
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3a

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 248
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3a} :catch_66

    .line 266
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3a
    :goto_3a
    return-void

    .line 255
    :cond_3b
    const/4 v5, 0x0

    .line 256
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 257
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4b

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4b

    .line 258
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 260
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_4b
    if-eqz p5, :cond_59

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_59

    .line 261
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 263
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_59
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_3a

    .line 251
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_66
    move-exception v1

    goto :goto_3a
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .registers 23
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
    .line 281
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 282
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :cond_e
    if-eqz p3, :cond_17

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1f

    .line 285
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_46

    .line 290
    :try_start_26
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 291
    .local v2, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_45

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 293
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_45} :catch_85

    .line 313
    .end local v2           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_45
    :goto_45
    return-void

    .line 301
    :cond_46
    const/4 v7, 0x0

    .line 302
    .local v7, sentIntent:Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 303
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5a

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5a

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 306
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_5a
    if-eqz p5, :cond_6c

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6c

    .line 307
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 310
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    goto :goto_45

    .line 297
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_85
    move-exception v3

    goto :goto_45
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 12
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1c
    :try_start_1c
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 108
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_30

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 109
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_30} :catch_31

    .line 114
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_30
    :goto_30
    return-void

    .line 111
    :catch_31
    move-exception v1

    goto :goto_30
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .registers 20
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1c
    :try_start_1c
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 168
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_38

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 169
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_38} :catch_39

    .line 175
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_38
    :goto_38
    return-void

    .line 172
    :catch_39
    move-exception v1

    goto :goto_38
.end method

.method public sendTextMessageForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 12
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_1c
    :try_start_1c
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 134
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_30

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 135
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_30} :catch_31

    .line 140
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_30
    :goto_30
    return-void

    .line 137
    :catch_31
    move-exception v1

    goto :goto_30
.end method

.method public setCbSettings(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .registers 16
    .parameter "bcbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "languageId"

    .prologue
    const/4 v4, 0x0

    const-string v9, "SmsManager"

    .line 411
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 413
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    const-string v2, "SmsManager"

    const-string v2, "[SMSManager] In setCbConfig of SmsManager.java  "

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v2, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMSManager] cbEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " idCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-nez p4, :cond_41

    .line 421
    const/16 v2, 0xff

    aput-short v2, p4, v4

    .line 424
    :cond_41
    const/4 v7, 0x0

    .local v7, i:I
    :goto_42
    array-length v2, p4

    if-ge v7, v2, :cond_62

    .line 425
    const-string v2, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMSManager] msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p4, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 428
    :cond_62
    if-nez p5, :cond_68

    .line 429
    sget-object v2, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUMMY:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v2, p5, v4

    .line 432
    :cond_68
    const/4 v2, 0x1

    if-ne p1, v2, :cond_78

    .line 433
    const/4 v1, 0x1

    .line 437
    .local v1, cbEnable:B
    :goto_6c
    const/4 v7, 0x0

    :goto_6d
    array-length v2, p4

    if-ge v7, v2, :cond_7a

    .line 438
    aget-short v2, p4, v7

    invoke-direct {p0, v2, v8}, Landroid/telephony/SmsManager;->setByte(SLjava/io/ByteArrayOutputStream;)V

    .line 437
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 435
    .end local v1           #cbEnable:B
    :cond_78
    const/4 v1, 0x0

    .restart local v1       #cbEnable:B
    goto :goto_6c

    .line 441
    :cond_7a
    array-length v2, p5

    new-array v5, v2, [I

    .line 443
    .local v5, langInt:[I
    const/4 v7, 0x0

    :goto_7e
    array-length v2, p5

    if-ge v7, v2, :cond_b6

    .line 445
    aget-object v2, p5, v7

    invoke-virtual {v2}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v2

    aput v2, v5, v7

    .line 447
    const-string v2, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMSManager] langInt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v5, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p5, v7

    invoke-virtual {v3}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e

    .line 453
    :cond_b6
    :try_start_b6
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 454
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_cb

    .line 455
    int-to-byte v2, p2

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->setCbConfig(BBI[B[I)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_cb} :catch_cc

    .line 461
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_cb
    :goto_cb
    return-void

    .line 457
    :catch_cc
    move-exception v2

    move-object v6, v2

    .line 459
    .local v6, ex:Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v2, "[SMSManager ] Exception In setCbConfig of SmsManager.java  "

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb
.end method

.method public updateMessageOnIcc(II[B)Z
    .registers 7
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 708
    const/4 v1, 0x0

    .line 711
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 712
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 713
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 719
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 715
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public updateSmsServiceCenterOnSim(Ljava/lang/String;)Z
    .registers 11
    .parameter "scAddress"

    .prologue
    .line 882
    const/4 v5, 0x0

    .line 887
    .local v5, success:Z
    if-nez p1, :cond_16

    .line 888
    const/4 v0, 0x0

    .line 901
    .local v0, encodedScAddress:[B
    :goto_4
    :try_start_4
    const-string v7, "isms"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 903
    .local v4, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v4, :cond_14

    .line 904
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/ISms;->updateSmsServiceCenterOnSimEf([B)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_38

    move-result v5

    .end local v4           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_14
    :goto_14
    move v6, v5

    .line 910
    .end local v0           #encodedScAddress:[B
    .end local v5           #success:Z
    .local v6, success:I
    :goto_15
    return v6

    .line 890
    .end local v6           #success:I
    .restart local v5       #success:Z
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 891
    .local v3, numberLenReal:I
    move v2, v3

    .line 892
    .local v2, numberLenEffective:I
    const/16 v7, 0x2b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_30

    const/4 v7, 0x1

    move v1, v7

    .line 893
    .local v1, hasPlus:Z
    :goto_26
    if-eqz v1, :cond_2a

    add-int/lit8 v2, v2, -0x1

    .line 894
    :cond_2a
    const/16 v7, 0x14

    if-le v2, v7, :cond_33

    move v6, v5

    .line 895
    .restart local v6       #success:I
    goto :goto_15

    .line 892
    .end local v1           #hasPlus:Z
    .end local v6           #success:I
    :cond_30
    const/4 v7, 0x0

    move v1, v7

    goto :goto_26

    .line 897
    .restart local v1       #hasPlus:Z
    :cond_33
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0       #encodedScAddress:[B
    goto :goto_4

    .line 906
    .end local v1           #hasPlus:Z
    .end local v2           #numberLenEffective:I
    .end local v3           #numberLenReal:I
    :catch_38
    move-exception v7

    goto :goto_14
.end method
