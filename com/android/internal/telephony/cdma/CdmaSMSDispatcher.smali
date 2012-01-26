.class final Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

.field private mSMSSyncSenderThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private checkDuplicatePortOmadmWappush([BI)Z
    .registers 11
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 710
    add-int/lit8 p2, p2, 0x4

    .line 711
    array-length v5, p1

    sub-int/2addr v5, p2

    new-array v2, v5, [B

    .line 712
    .local v2, omaPdu:[B
    array-length v5, v2

    invoke-static {p1, p2, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    new-instance v3, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 715
    .local v3, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v4, 0x2

    .line 718
    .local v4, wspIndex:I
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_19

    move v5, v7

    .line 736
    :goto_18
    return v5

    .line 722
    :cond_19
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v4, v5

    .line 725
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-nez v5, :cond_26

    move v5, v7

    .line 726
    goto :goto_18

    .line 729
    :cond_26
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_37

    .line 731
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v0, v5

    .line 732
    .local v0, binaryContentType:I
    const/16 v5, 0x44

    if-ne v0, v5, :cond_37

    .line 733
    const/4 v5, 0x1

    goto :goto_18

    .end local v0           #binaryContentType:I
    :cond_37
    move v5, v7

    .line 736
    goto :goto_18
.end method

.method private checkOMADMwappush([BI)Z
    .registers 13
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    const-string v9, "CDMA"

    .line 742
    add-int/lit8 p2, p2, 0x4

    .line 743
    array-length v6, p1

    sub-int/2addr v6, p2

    new-array v4, v6, [B

    .line 744
    .local v4, omaPdu:[B
    array-length v6, v4

    invoke-static {p1, p2, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    const-string v6, "CDMA"

    const-string v6, "checkOMADMwappush()"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v5, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 747
    .local v5, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 p2, 0x2

    .line 749
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v6

    if-nez v6, :cond_29

    .line 750
    const-string v6, "CDMA"

    const-string v6, "Received PDU. Header Length error."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 767
    :goto_28
    return v6

    .line 753
    :cond_29
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v1, v6

    .line 754
    .local v1, headerLength:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int/2addr p2, v6

    .line 755
    move v2, p2

    .line 756
    .local v2, headerStartIndex:I
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v6

    if-nez v6, :cond_43

    .line 757
    const-string v6, "CDMA"

    const-string v6, "Received PDU. Header Content-Type error."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 758
    goto :goto_28

    .line 761
    :cond_43
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, mimeType:Ljava/lang/String;
    if-nez v3, :cond_54

    .line 763
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    .line 764
    .local v0, binaryContentType:I
    const/16 v6, 0x44

    if-ne v0, v6, :cond_54

    .line 765
    const/4 v6, 0x1

    goto :goto_28

    .end local v0           #binaryContentType:I
    :cond_54
    move v6, v8

    .line 767
    goto :goto_28
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .registers 9
    .parameter "sms"

    .prologue
    .line 93
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v2, v0, :cond_33

    .line 94
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 95
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    if-ne v5, v6, :cond_34

    .line 97
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 99
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 102
    :try_start_2d
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_33
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2d .. :try_end_33} :catch_37

    .line 107
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_33
    :goto_33
    return-void

    .line 93
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 103
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_37
    move-exception v5

    goto :goto_33
.end method

.method private resultToCause(I)I
    .registers 3
    .parameter "rc"

    .prologue
    .line 683
    packed-switch p1, :pswitch_data_e

    .line 694
    :pswitch_3
    const/16 v0, 0x60

    :goto_5
    return v0

    .line 687
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 689
    :pswitch_8
    const/16 v0, 0x23

    goto :goto_5

    .line 691
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_5

    .line 683
    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 8
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 647
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 661
    :cond_12
    :goto_12
    return-void

    .line 652
    :cond_13
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_12

    .line 653
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 654
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 656
    if-nez v0, :cond_26

    .line 657
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 659
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_12
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 5
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez p1, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V

    .line 670
    return-void

    .line 669
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 20
    .parameter "smsb"

    .prologue
    .line 118
    if-nez p1, :cond_b

    .line 119
    const-string v15, "CDMA"

    const-string v16, "dispatchMessage: message is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v15, 0x2

    .line 246
    .end local p1
    :goto_a
    return v15

    .line 129
    .restart local p1
    :cond_b
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v9, v0

    .line 130
    .local v9, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object v15, v0

    if-eqz v15, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v15

    if-eqz v15, :cond_33

    .line 133
    const/4 v15, 0x1

    goto :goto_a

    .line 136
    :cond_33
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 137
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v12

    .line 138
    .local v12, teleService:I
    const/4 v7, 0x0

    .line 140
    .local v7, handled:Z
    const/16 v15, 0x1003

    if-eq v15, v12, :cond_43

    const/high16 v15, 0x4

    if-ne v15, v12, :cond_93

    .line 143
    :cond_43
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v14

    .line 144
    .local v14, voicemailCount:I
    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Voicemail count="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 148
    .local v11, sp:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 149
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v15, "vm_count_key_cdma"

    invoke-interface {v5, v15, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 152
    const/4 v7, 0x1

    .line 165
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #sp:Landroid/content/SharedPreferences;
    .end local v14           #voicemailCount:I
    :cond_8e
    :goto_8e
    if-eqz v7, :cond_b8

    .line 166
    const/4 v15, 0x1

    goto/16 :goto_a

    .line 153
    .restart local p1
    :cond_93
    const/16 v15, 0x1002

    if-eq v15, v12, :cond_9b

    const/16 v15, 0x1005

    if-ne v15, v12, :cond_a9

    :cond_9b
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v15

    if-eqz v15, :cond_a9

    .line 156
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 157
    const/4 v7, 0x1

    goto :goto_8e

    .line 158
    :cond_a9
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v15

    if-nez v15, :cond_8e

    .line 160
    const-string v15, "CDMA"

    const-string v16, "Received SMS without user data"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v7, 0x1

    goto :goto_8e

    .line 169
    .end local p1
    :cond_b8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v15, v0

    if-nez v15, :cond_cd

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v15

    sget-object v16, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object v0, v15

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_cd

    .line 173
    const/4 v15, 0x3

    goto/16 :goto_a

    .line 176
    :cond_cd
    const/16 v15, 0x1004

    if-ne v15, v12, :cond_eb

    .line 177
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v15

    move-object v0, v9

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    move/from16 v16, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v15

    goto/16 :goto_a

    .line 184
    :cond_eb
    const/16 v15, 0x1002

    if-eq v15, v12, :cond_100

    const/16 v15, 0x1005

    if-eq v15, v12, :cond_100

    const/4 v15, 0x1

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_100

    .line 187
    const/4 v15, 0x4

    goto/16 :goto_a

    .line 201
    :cond_100
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .line 204
    .local v10, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v10, :cond_16e

    iget-object v15, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v15, :cond_16e

    const/16 v15, 0xb84

    move-object v0, v10

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_16e

    .line 205
    const/4 v6, 0x1

    .line 207
    .local v6, enabled:Z
    :try_start_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "roaming_wap_push_enabled"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    .line 208
    .local v13, value:I
    const/4 v15, 0x1

    if-ne v15, v13, :cond_165

    const/4 v15, 0x1

    move v6, v15

    .line 209
    :goto_136
    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isRoamingPushEnabled : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_151} :catch_168

    .line 213
    .end local v13           #value:I
    :goto_151
    if-nez v6, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v15

    if-eqz v15, :cond_16e

    .line 214
    const/4 v15, 0x1

    goto/16 :goto_a

    .line 208
    .restart local v13       #value:I
    :cond_165
    const/4 v15, 0x0

    move v6, v15

    goto :goto_136

    .line 210
    .end local v13           #value:I
    :catch_168
    move-exception v15

    move-object v4, v15

    .line 211
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_151

    .line 226
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #enabled:Z
    :cond_16e
    if-eqz v10, :cond_174

    iget-object v15, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v15, :cond_1b3

    .line 228
    :cond_174
    const/4 v15, 0x1

    new-array v8, v15, [[B

    .line 229
    .local v8, pdus:[[B
    const/4 v15, 0x0

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v16

    aput-object v16, v8, v15

    .line 231
    if-eqz v10, :cond_1ac

    iget-object v15, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v15, :cond_1ac

    .line 232
    iget-object v15, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v15, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v16, 0xb84

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_19e

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v15, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v15

    goto/16 :goto_a

    .line 237
    :cond_19e
    iget-object v15, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v15, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 243
    :goto_1a9
    const/4 v15, -0x1

    goto/16 :goto_a

    .line 241
    :cond_1ac
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_1a9

    .line 246
    .end local v8           #pdus:[[B
    :cond_1b3
    iget-object v15, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object v0, v10

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v15

    goto/16 :goto_a
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaBroadcastConfig(Landroid/os/Message;)V

    .line 675
    return-void
.end method

.method public getStorageState()Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    return v0
.end method

.method protected handleBroadcastSms([B)V
    .registers 4
    .parameter "Cbpdu"

    .prologue
    .line 664
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 89
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .registers 33
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 265
    const/16 v17, 0x0

    .line 268
    .local v17, index:I
    const/16 v25, 0x0

    .line 269
    .local v25, sourcePort:I
    const/4 v14, 0x0

    .line 271
    .local v14, destinationPort:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .local v18, index:I
    aget-byte v19, p1, v17

    .line 272
    .local v19, msgType:I
    if-eqz v19, :cond_16

    .line 273
    const-string v4, "CDMA"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v4, 0x1

    move/from16 v17, v18

    .line 429
    .end local v18           #index:I
    .restart local v17       #index:I
    :goto_15
    return v4

    .line 276
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_16
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v26, p1, v18

    .line 277
    .local v26, totalSegments:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v23, p1, v17

    .line 291
    .local v23, segment:I
    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reference_number ="

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .local v28, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string v4, " AND address = ?"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v8, v4

    .line 296
    .local v8, whereArgs:[Ljava/lang/String;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", src-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dst-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", segment# = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v22, 0x0

    check-cast v22, [[B

    .line 301
    .local v22, pdus:[[B
    const/4 v10, 0x0

    .line 303
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 304
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 305
    .local v11, cursorCount:I
    const/4 v4, 0x1

    sub-int v4, v26, v4

    if-eq v11, v4, :cond_150

    .line 307
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v27, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v27

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    const-string/jumbo v4, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v4, "address"

    move-object/from16 v0, v27

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v4, "count"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string/jumbo v4, "sequence"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v4, "destination_port"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_146
    .catchall {:try_start_a9 .. :try_end_146} :catchall_212
    .catch Landroid/database/SQLException; {:try_start_a9 .. :try_end_146} :catch_1ff

    .line 318
    const/4 v4, 0x1

    .line 348
    if-eqz v10, :cond_14c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_14c
    move/from16 v17, v18

    .line 318
    .end local v18           #index:I
    .restart local v17       #index:I
    goto/16 :goto_15

    .line 322
    .end local v17           #index:I
    .end local v27           #values:Landroid/content/ContentValues;
    .restart local v18       #index:I
    :cond_150
    :try_start_150
    const-string/jumbo v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 323
    .local v21, pduColumn:I
    const-string/jumbo v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 325
    .local v24, sequenceColumn:I
    move/from16 v0, v26

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    .line 326
    const/16 v16, 0x0

    .local v16, i:I
    :goto_166
    move/from16 v0, v16

    move v1, v11

    if-ge v0, v1, :cond_186

    .line 327
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 328
    move-object v0, v10

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .line 337
    .local v12, cursorSequence:I
    move-object v0, v10

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v22, v12

    .line 326
    add-int/lit8 v16, v16, 0x1

    goto :goto_166

    .line 343
    .end local v12           #cursorSequence:I
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_150 .. :try_end_197} :catchall_212
    .catch Landroid/database/SQLException; {:try_start_150 .. :try_end_197} :catch_1ff

    .line 348
    if-eqz v10, :cond_19c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_19c
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 365
    .local v20, output:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_219

    .line 368
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v25, v4, 0x8

    .line 369
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v17

    and-int/lit16 v4, v4, 0xff

    or-int v25, v25, v4

    .line 370
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    .line 371
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v17

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkOMADMwappush([BI)Z

    move-result v4

    if-eqz v4, :cond_2eb

    .line 373
    add-int/lit8 v17, v18, 0x4

    .line 375
    .end local v18           #index:I
    .restart local v17       #index:I
    :goto_1d4
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v17

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 417
    :goto_1e4
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 419
    .local v13, datagram:[B
    packed-switch v14, :pswitch_data_2f0

    .line 425
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    .line 426
    const/4 v4, 0x0

    aput-object v13, v22, v4

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 429
    const/4 v4, -0x1

    goto/16 :goto_15

    .line 344
    .end local v11           #cursorCount:I
    .end local v13           #datagram:[B
    .end local v16           #i:I
    .end local v17           #index:I
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    .end local v21           #pduColumn:I
    .end local v24           #sequenceColumn:I
    .restart local v18       #index:I
    :catch_1ff
    move-exception v4

    move-object v15, v4

    .line 345
    .local v15, e:Landroid/database/SQLException;
    :try_start_201
    const-string v4, "CDMA"

    const-string v5, "Can\'t access multipart SMS database"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_208
    .catchall {:try_start_201 .. :try_end_208} :catchall_212

    .line 346
    const/4 v4, 0x2

    .line 348
    if-eqz v10, :cond_20e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_20e
    move/from16 v17, v18

    .line 346
    .end local v18           #index:I
    .restart local v17       #index:I
    goto/16 :goto_15

    .line 348
    .end local v15           #e:Landroid/database/SQLException;
    .end local v17           #index:I
    .restart local v18       #index:I
    :catchall_212
    move-exception v4

    if-eqz v10, :cond_218

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_218
    throw v4

    .line 379
    .restart local v11       #cursorCount:I
    .restart local v16       #i:I
    .restart local v20       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #pduColumn:I
    .restart local v24       #sequenceColumn:I
    :cond_219
    const/16 v16, 0x0

    :goto_21b
    const/4 v4, 0x1

    sub-int v4, v26, v4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_2a8

    .line 381
    if-nez v16, :cond_295

    .line 383
    if-nez v23, :cond_25f

    .line 385
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v25, v4, 0x8

    .line 386
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v17

    and-int/lit16 v4, v4, 0xff

    or-int v25, v25, v4

    .line 387
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    .line 388
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v17

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    .line 389
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 v17, v18

    .line 379
    .end local v18           #index:I
    .restart local v17       #index:I
    :goto_25a
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17           #index:I
    .restart local v18       #index:I
    goto :goto_21b

    .line 393
    :cond_25f
    aget-object v4, v22, v16

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v25, v4, 0x8

    .line 394
    aget-object v4, v22, v16

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int v25, v25, v4

    .line 395
    aget-object v4, v22, v16

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    .line 396
    aget-object v4, v22, v16

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    .line 397
    aget-object v4, v22, v16

    const/4 v5, 0x4

    aget-object v6, v22, v16

    array-length v6, v6

    const/4 v7, 0x5

    sub-int/2addr v6, v7

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto :goto_25a

    .line 402
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_295
    aget-object v4, v22, v16

    const/4 v5, 0x0

    aget-object v6, v22, v16

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto :goto_25a

    .line 407
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_2a8
    const/4 v4, 0x1

    sub-int v4, v26, v4

    move/from16 v0, v23

    move v1, v4

    if-ne v0, v1, :cond_2c6

    .line 409
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto/16 :goto_1e4

    .line 413
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_2c6
    const/4 v4, 0x1

    sub-int v4, v26, v4

    aget-object v4, v22, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sub-int v6, v26, v6

    aget-object v6, v22, v6

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto/16 :goto_1e4

    .line 422
    .restart local v13       #datagram:[B
    :pswitch_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_15

    .end local v13           #datagram:[B
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_2eb
    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto/16 :goto_1d4

    .line 419
    nop

    :pswitch_data_2f0
    .packed-switch 0xb84
        :pswitch_2e0
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 437
    if-eqz p6, :cond_b

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 439
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p5, p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 440
    return-void

    .line 437
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_b
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 4
    .parameter "tracker"

    .prologue
    .line 640
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 20
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 486
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v13

    and-int/lit16 v8, v13, 0xff

    .line 487
    .local v8, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 488
    .local v7, msgCount:I
    const/4 v5, 0x0

    .line 490
    .local v5, encoding:I
    const/4 v6, 0x0

    .end local p2
    .local v6, i:I
    :goto_c
    if-ge v6, v7, :cond_2d

    .line 491
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 492
    .local v4, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v13, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v13, :cond_2a

    if-eqz v5, :cond_28

    const/4 v13, 0x1

    if-ne v5, v13, :cond_2a

    .line 495
    :cond_28
    iget v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 490
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 499
    .end local v4           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2d
    const/4 v6, 0x0

    :goto_2e
    if-ge v6, v7, :cond_9f

    .line 500
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 501
    .local v2, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v8, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 502
    add-int/lit8 v13, v6, 0x1

    iput v13, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 503
    iput v7, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 504
    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 505
    new-instance v10, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 506
    .local v10, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 508
    const/4 v9, 0x0

    .line 509
    .local v9, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_59

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_59

    .line 510
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 513
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    :cond_59
    const/4 v3, 0x0

    .line 514
    .local v3, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6b

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_6b

    .line 515
    move-object/from16 v0, p5

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v3, Landroid/app/PendingIntent;

    .line 518
    .restart local v3       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6b
    new-instance v12, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 519
    .local v12, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v12

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 521
    const/4 v13, 0x1

    if-ne v5, v13, :cond_99

    .line 523
    const/4 v13, 0x2

    iput v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 527
    :goto_84
    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 533
    if-eqz v3, :cond_9d

    const/4 v13, 0x1

    sub-int v13, v7, v13

    if-ne v6, v13, :cond_9d

    const/4 v13, 0x1

    :goto_8f
    invoke-static {p1, v12, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 536
    .local v11, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v11, v9, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 525
    .end local v11           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_99
    const/4 v13, 0x4

    iput v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_84

    .line 533
    :cond_9d
    const/4 v13, 0x0

    goto :goto_8f

    .line 538
    .end local v2           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    .end local v10           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v12           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_9f
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .registers 20
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 553
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v9

    and-int/lit16 v4, v9, 0xff

    .line 555
    .local v4, refNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .end local p2
    .local v3, msgCount:I
    :goto_b
    if-ge v2, v3, :cond_65

    .line 556
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 557
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 558
    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 559
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 560
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 561
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 562
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 564
    const/4 v5, 0x0

    .line 565
    .local v5, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_33

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_33

    .line 566
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 569
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_33
    const/4 v1, 0x0

    .line 570
    .local v1, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_42

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_42

    .line 571
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v1, Landroid/app/PendingIntent;

    .line 574
    .restart local v1       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_42
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 575
    .local v8, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 576
    iput-object v6, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 582
    if-eqz v1, :cond_63

    const/4 v9, 0x1

    sub-int v9, v3, v9

    if-ne v2, v9, :cond_63

    const/4 v9, 0x1

    :goto_59
    invoke-static {p1, v8, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 585
    .local v7, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v7, v5, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 582
    .end local v7           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_63
    const/4 v9, 0x0

    goto :goto_59

    .line 587
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v1           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v8           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_65
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 5
    .parameter "tracker"

    .prologue
    .line 608
    const-string v1, "CDMA"

    const-string/jumbo v2, "sendSms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_27

    .line 616
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mSMSSyncSenderThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    .line 617
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 619
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 620
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    invoke-direct {v1, p0, v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    .line 622
    .end local v0           #looper:Landroid/os/Looper;
    :cond_27
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->addSendQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 627
    return-void
.end method

.method protected sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 4
    .parameter "tracker"

    .prologue
    .line 633
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendSmsForMobileTracker not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->addSendQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 635
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 592
    const-string/jumbo v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 593
    if-eqz p2, :cond_10

    .line 595
    const/4 v0, 0x4

    :try_start_d
    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_10
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_d .. :try_end_10} :catch_20

    .line 599
    :cond_10
    :goto_10
    const-string v0, "CDMA"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_17
    return-void

    .line 603
    :cond_18
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v1, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_17

    .line 596
    :catch_20
    move-exception v0

    goto :goto_10
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 445
    if-eqz p5, :cond_c

    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 447
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 448
    return-void

    .line 445
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_c
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
    .line 455
    if-eqz p5, :cond_c

    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 457
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 458
    return-void

    .line 455
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_c
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .registers 13
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
    .line 468
    if-eqz p5, :cond_c

    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 470
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 471
    return-void

    .line 468
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_c
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .registers 4
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([ILandroid/os/Message;)V

    .line 680
    return-void
.end method
