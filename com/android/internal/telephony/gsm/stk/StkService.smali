.class public Lcom/android/internal/telephony/gsm/stk/StkService;
.super Landroid/os/Handler;
.source "StkService.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/stk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_USSD_COMPLETE:I = 0x7

.field static final MSG_ID_CALL_CONTROL_RESULT:I = 0xd

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_PHONE_DISCONNECT:I = 0xf

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RELEASE_COMPLETE_MESSAGE:I = 0x8

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SEND_DTMF_PAUSE:I = 0x10

.field static final MSG_ID_SEND_DTMF_RESULT:I = 0xb

.field static final MSG_ID_SEND_SMS_RESULT:I = 0xc

.field static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SIM_LOADED:I = 0x14

.field static final MSG_ID_TIMEOUT:I = 0x9

.field private static final NOT_IN_USE:I = 0x0

.field static final STK_REFRESH:Ljava/lang/String; = "default refresh..."

.field static final STK_RESET:Ljava/lang/String; = "default reset..."

.field static final STK_SENDING:Ljava/lang/String; = "null alphaId, default sending..."

.field private static final WAITING_RELEASE_COMPLETE:I = 0x1

.field private static final WAITING_RELEASE_COMPLETE_TIME:I = 0x7530

.field static final WAITING_SEND_DTMF:I = 0x5

.field static final WAITING_SEND_DTMF_TIME:I = 0xdac

.field private static final WAITING_SETUP_CALL:I = 0x4

.field private static final WAITING_SETUP_CALL_HOLD_RESULT:I = 0x3

.field private static final WAITING_SETUP_CALL_HOLD_RESULT_TIME:I = 0x1388

.field private static final WAITING_SETUP_CALL_TIME:I = 0x2710

.field private static final WAITING_SMS_RESULT:I = 0x2

.field private static final WAITING_SMS_RESULT_TIME:I = 0xea60

.field private static final WAKE_LOCK_TIMEOUT:I = 0xfde8

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;


# instance fields
.field private isTerminalResponseForSEUPMENU:Z

.field private mCallControlResultCode:I

.field private mCallType:I

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

.field private mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSendTerminalResponseExpectedByCallSetup:Z

.field private mSetupCallDisc:Z

.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field private mTimeoutDest:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 12
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 324
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 258
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 259
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 261
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 262
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    .line 309
    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 311
    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    .line 312
    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    .line 313
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 321
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    .line 325
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    if-eqz p3, :cond_25

    if-eqz p4, :cond_25

    if-eqz p5, :cond_25

    if-nez p6, :cond_2d

    .line 327
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_2d
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 331
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    .line 332
    iput-object p7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 333
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 335
    invoke-static {p0, p4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSendDTMFResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 351
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 352
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->createWakelock()V

    .line 357
    return-void
.end method

.method private cancelTimeOut()V
    .registers 2

    .prologue
    .line 428
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMessages(I)V

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 430
    return-void
.end method

.method private createWakelock()V
    .registers 4

    .prologue
    .line 1756
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1757
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "STKService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1758
    return-void
.end method

.method private eventDownload(III[BZ)V
    .registers 17
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 1170
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1173
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 1174
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1177
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1180
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1181
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1182
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1183
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1186
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1187
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1188
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1189
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1190
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1193
    if-eqz p4, :cond_44

    .line 1194
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3a
    if-ge v4, v6, :cond_44

    aget-byte v1, v0, v4

    .line 1195
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1194
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 1199
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_44
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1202
    .local v7, rawData:[B
    array-length v9, v7

    const/4 v10, 0x2

    sub-int v5, v9, v10

    .line 1203
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 1205
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, hexString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1208
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;
    .registers 7

    .prologue
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    .line 1241
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;
    .registers 16
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    .line 1223
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    if-nez v0, :cond_2a

    .line 1224
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    if-nez p5, :cond_12

    .line 1226
    :cond_10
    const/4 v0, 0x0

    .line 1232
    :goto_11
    return-object v0

    .line 1228
    :cond_12
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "Stk Telephony service"

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v8, thread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 1230
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    .line 1232
    .end local v8           #thread:Landroid/os/HandlerThread;
    :cond_2a
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    goto :goto_11
.end method

.method private handleCallControlResultNoti(Ljava/lang/String;)V
    .registers 25
    .parameter "callcontrol_result"

    .prologue
    .line 605
    const/4 v15, 0x0

    .line 606
    .local v15, call_type:I
    const/4 v14, 0x0

    .line 607
    .local v14, callControlResultCode:I
    const/4 v12, 0x0

    .line 608
    .local v12, alphaidpresent:Z
    const/4 v11, 0x0

    .line 609
    .local v11, alphaid_len:I
    const/16 v4, 0x40

    new-array v10, v4, [B

    .line 610
    .local v10, alpha_id:[B
    const/16 v17, 0x0

    .line 611
    .local v17, length_of_mod:B
    const-string v22, ""

    .line 612
    .local v22, voicecall_ss_modified_address:Ljava/lang/String;
    const/16 v20, 0x0

    .line 613
    .local v20, modified_ussd_string:Ljava/lang/String;
    const/16 v19, 0x0

    .line 615
    .local v19, modified_sms_dest_address:Ljava/lang/String;
    const/4 v13, 0x0

    .line 617
    .local v13, callControlResult:Ljava/lang/String;
    const/16 v21, 0x0

    .line 619
    .local v21, rawData:[B
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v21

    .line 622
    const/4 v4, 0x0

    aget-byte v4, v21, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    .line 623
    const/4 v4, 0x1

    aget-byte v4, v21, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    .line 626
    const/4 v4, 0x1

    aget-byte v14, v21, v4

    .line 627
    const/4 v4, 0x0

    aget-byte v15, v21, v4

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The call control result by SIM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    const/4 v4, 0x2

    :try_start_4c
    aget-byte v4, v21, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_64

    .line 632
    const/4 v12, 0x1

    .line 635
    :goto_52
    const/16 v16, 0x0

    .local v16, i:I
    :goto_54
    const/16 v4, 0x40

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_67

    .line 637
    add-int/lit8 v4, v16, 0x4

    aget-byte v4, v21, v4

    aput-byte v4, v10, v16
    :try_end_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_61} :catch_66

    .line 635
    add-int/lit8 v16, v16, 0x1

    goto :goto_54

    .line 633
    .end local v16           #i:I
    :cond_64
    const/4 v12, 0x0

    goto :goto_52

    .line 639
    :catch_66
    move-exception v4

    .line 643
    :cond_67
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_254

    .line 646
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$CallType:[I

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2b6

    .line 739
    :goto_7e
    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v4, v5, :cond_8e

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_9b

    .line 740
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 755
    :cond_9b
    :goto_9b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_27b

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_27b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_27b

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 761
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 776
    :cond_d1
    :goto_d1
    return-void

    .line 651
    :pswitch_d2
    const/16 v4, 0x46

    :try_start_d4
    aget-byte v4, v21, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ef

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 654
    :cond_ef
    const/16 v4, 0x48

    aget-byte v17, v21, v4

    .line 655
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_f5
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_15f

    .line 656
    add-int/lit8 v4, v16, 0x49

    aget-byte v4, v21, v4

    packed-switch v4, :pswitch_data_2c0

    .line 655
    :goto_102
    add-int/lit8 v16, v16, 0x1

    goto :goto_f5

    .line 658
    :pswitch_105
    add-int/lit8 v4, v16, 0x49

    aget-byte v5, v21, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v21, v4

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v16, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 660
    goto :goto_102

    .line 662
    :pswitch_130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 663
    goto :goto_102

    .line 665
    :pswitch_147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d4 .. :try_end_15c} :catch_15e

    move-result-object v22

    .line 666
    goto :goto_102

    .line 671
    .end local v16           #i:I
    :catch_15e
    move-exception v4

    .line 675
    :cond_15f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Modified number by SIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10404ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 677
    .local v18, message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 679
    goto/16 :goto_7e

    .line 682
    .end local v18           #message:Ljava/lang/CharSequence;
    :pswitch_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10404ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 683
    .restart local v18       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 685
    goto/16 :goto_7e

    .line 688
    .end local v18           #message:Ljava/lang/CharSequence;
    :pswitch_1b9
    const/16 v4, 0x48

    aget-byte v17, v21, v4

    .line 689
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_1bf
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_228

    .line 690
    add-int/lit8 v4, v16, 0x49

    aget-byte v4, v21, v4

    packed-switch v4, :pswitch_data_2dc

    .line 689
    :goto_1cc
    add-int/lit8 v16, v16, 0x1

    goto :goto_1bf

    .line 692
    :pswitch_1cf
    add-int/lit8 v4, v16, 0x49

    aget-byte v5, v21, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v21, v4

    .line 693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v16, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 694
    goto :goto_1cc

    .line 696
    :pswitch_1fa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 697
    goto :goto_1cc

    .line 699
    :pswitch_211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 700
    goto :goto_1cc

    .line 717
    :cond_228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10404ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 718
    .restart local v18       #message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7e

    .line 744
    .end local v16           #i:I
    .end local v18           #message:Ljava/lang/CharSequence;
    :cond_254
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_9b

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10404ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 747
    .restart local v18       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9b

    .line 764
    .end local v18           #message:Ljava/lang/CharSequence;
    :cond_27b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_d1

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_d1

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    if-eqz v4, :cond_2ad

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 772
    :goto_2a2
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 773
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    goto/16 :goto_d1

    .line 770
    :cond_2ad
    const-string v4, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2a2

    .line 646
    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_1a7
        :pswitch_1b9
    .end packed-switch

    .line 656
    :pswitch_data_2c0
    .packed-switch 0x0
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_130
        :pswitch_147
    .end packed-switch

    .line 690
    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1fa
        :pswitch_211
    .end packed-switch
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .registers 24
    .parameter "resMsg"

    .prologue
    .line 1571
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1753
    :cond_6
    :goto_6
    return-void

    .line 1574
    :cond_7
    const/4 v8, 0x0

    .line 1575
    .local v8, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v15, 0x0

    .line 1576
    .local v15, helpRequired:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v4

    .line 1580
    .local v4, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    const/4 v11, 0x0

    .line 1582
    .local v11, calldisabledNoti:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_30c

    goto :goto_6

    .line 1584
    :pswitch_1f
    const/4 v15, 0x1

    .line 1596
    :pswitch_20
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget v5, v4, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_330

    .line 1749
    :cond_31
    :goto_31
    :pswitch_31
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    if-nez v3, :cond_2f2

    .line 1750
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_6

    .line 1598
    :pswitch_45
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    move v3, v0

    if-eqz v3, :cond_62

    .line 1599
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 1600
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    .line 1601
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_6

    .line 1604
    :cond_62
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-ne v3, v4, :cond_81

    const/4 v3, 0x1

    move v15, v3

    .line 1605
    :goto_6d
    const-string v3, "gsm.STK_USER_SESSION"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMenuSelection(IZ)V

    goto :goto_6

    .line 1604
    :cond_81
    const/4 v3, 0x0

    move v15, v3

    goto :goto_6d

    .line 1609
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_84
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;-><init>(I)V

    .line 1610
    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_31

    .line 1613
    :pswitch_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v16

    .line 1614
    .local v16, input:Lcom/android/internal/telephony/gsm/stk/Input;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    move v3, v0

    if-nez v3, :cond_b7

    .line 1617
    if-nez v15, :cond_31

    .line 1618
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    move v5, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    move v6, v0

    invoke-direct {v8, v3, v5, v6}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto/16 :goto_31

    .line 1622
    :cond_b7
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Z)V

    .line 1625
    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto/16 :goto_31

    .line 1630
    .end local v16           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :pswitch_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v3, :cond_ee

    .line 1631
    const-string/jumbo v3, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1632
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1633
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1636
    :cond_ee
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v5, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1638
    .local v17, intent:Landroid/content/Intent;
    if-nez v17, :cond_12b

    .line 1639
    const-string v3, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1640
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1641
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1644
    :cond_12b
    const/high16 v3, 0x1000

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1646
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    move v3, v0

    if-nez v3, :cond_14f

    .line 1647
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1648
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1651
    :cond_14f
    const-string/jumbo v3, "setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1652
    const/16 v18, 0x0

    .line 1653
    .local v18, isInCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 1654
    .local v14, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 1655
    .local v9, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    .line 1657
    .local v21, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1ed

    :cond_193
    const/4 v3, 0x1

    move/from16 v18, v3

    .line 1661
    :goto_196
    if-eqz v18, :cond_2d2

    .line 1662
    const-string/jumbo v3, "phone is in call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_1f1

    .line 1666
    const-string/jumbo v3, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v5, 0x10400bd

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1669
    .local v19, message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v5, 0x1

    invoke-static {v3, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1673
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1675
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1657
    .end local v19           #message:Ljava/lang/CharSequence;
    :cond_1ed
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_196

    .line 1678
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_235

    .line 1681
    :try_start_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->switchHoldingAndActive()V

    .line 1682
    const/4 v3, 0x3

    const/16 v5, 0x1388

    move-object/from16 v0, p0

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V
    :try_end_214
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_202 .. :try_end_214} :catch_216

    goto/16 :goto_6

    .line 1684
    :catch_216
    move-exception v3

    move-object v12, v3

    .line 1686
    .local v12, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1687
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1688
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1692
    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_2b5

    .line 1695
    :try_start_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v20

    .line 1696
    .local v20, ringing:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v13

    .line 1697
    .local v13, fg:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v10

    .line 1698
    .local v10, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_282

    .line 1699
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V

    .line 1707
    :cond_26a
    :goto_26a
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z
    :try_end_270
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_246 .. :try_end_270} :catch_28c

    .line 1732
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :goto_270
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 1735
    const/4 v3, 0x4

    const/16 v4, 0x2710

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    goto/16 :goto_6

    .line 1700
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_282
    :try_start_282
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2ab

    .line 1701
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_28b
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_282 .. :try_end_28b} :catch_28c

    goto :goto_26a

    .line 1709
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :catch_28c
    move-exception v3

    move-object v12, v3

    .line 1711
    .restart local v12       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1712
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1713
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1702
    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_2ab
    :try_start_2ab
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_26a

    .line 1703
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_2b4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2ab .. :try_end_2b4} :catch_28c

    goto :goto_26a

    .line 1718
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :cond_2b5
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1720
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_270

    .line 1724
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :cond_2d2
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1726
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_270

    .line 1744
    .end local v9           #backgroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v14           #foregroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #isInCall:Z
    .end local v21           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_2ef
    const/4 v8, 0x0

    .line 1745
    goto/16 :goto_31

    .line 1751
    :cond_2f2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 1752
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfoData:I

    move v7, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1582
    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_2ef
        :pswitch_2ef
        :pswitch_2ef
        :pswitch_2ef
        :pswitch_2ef
    .end packed-switch

    .line 1596
    :pswitch_data_330
    .packed-switch 0x1
        :pswitch_45
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_c3
        :pswitch_31
        :pswitch_31
        :pswitch_84
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 14
    .parameter "cmdParams"

    .prologue
    const v3, 0x10404ae

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string/jumbo v11, "null alphaId, default sending..."

    const-string v5, "gsm.STK_SETUP_MENU"

    .line 783
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 787
    .local v10, sessionEnd:Ljava/lang/Boolean;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 788
    .local v7, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a8

    .line 921
    const-string v1, "Unsupported command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    .end local p1
    :cond_32
    :goto_32
    return-void

    .line 790
    .restart local p1
    :pswitch_33
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 791
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 792
    const-string v1, "gsm.STK_SETUP_MENU"

    const-string v1, ""

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .end local p1
    :cond_46
    :goto_46
    :pswitch_46
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 925
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "STK CMD"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 927
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 928
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 929
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    .line 930
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_32

    .line 794
    .end local v8           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_68
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-eqz v1, :cond_ab

    .line 796
    const-string v1, "SETUP_MENU property Setting. -AAA"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_9d

    .line 798
    const-string v1, "gsm.STK_SETUP_MENU"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    const/16 v2, 0x13

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 800
    :cond_9d
    const-string v1, "gsm.STK_SETUP_MENU"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 804
    :cond_ab
    const-string v1, "SETUP_MENU property Setting. -BBB"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    const-string v1, "gsm.STK_SETUP_MENU"

    const-string v1, "SIM Toolkit"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 813
    :pswitch_b8
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_46

    .line 814
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_46

    .line 819
    :pswitch_cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "here : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "default refresh..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 821
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const v2, 0x10404a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 827
    .local v9, message:Ljava/lang/CharSequence;
    :goto_106
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 828
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 829
    goto/16 :goto_46

    .line 822
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_117
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "default reset..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 823
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const v2, 0x10404aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    goto :goto_106

    .line 825
    .end local v9           #message:Ljava/lang/CharSequence;
    :cond_131
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v9       #message:Ljava/lang/CharSequence;
    goto :goto_106

    .line 831
    .end local v9           #message:Ljava/lang/CharSequence;
    :pswitch_137
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_46

    .line 835
    :pswitch_142
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_159

    .line 836
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 839
    :cond_159
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 840
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 841
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_18e

    .line 842
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 843
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 844
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_46

    .line 847
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_18e
    const-string/jumbo v1, "wakelock for SS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 849
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 854
    :pswitch_1a0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_1b7

    .line 855
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 858
    :cond_1b7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 859
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 860
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1ec

    .line 861
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 863
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_46

    .line 866
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_1ec
    const-string/jumbo v1, "wakelock for USSD"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 868
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 873
    :pswitch_1fe
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_215

    .line 874
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 877
    :cond_215
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 878
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 879
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 880
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 881
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_46

    .line 886
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_245
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_25c

    .line 887
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 890
    :cond_25c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 891
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 892
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_291

    .line 893
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 895
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_46

    .line 898
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_291
    const-string/jumbo v1, "wakelock for SMS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 900
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 918
    :pswitch_2a3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto/16 :goto_32

    .line 788
    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_33
        :pswitch_b8
        :pswitch_cb
        :pswitch_137
        :pswitch_142
        :pswitch_1a0
        :pswitch_1fe
        :pswitch_245
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_2a3
    .end packed-switch
.end method

.method private handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 20
    .parameter "cmdParams"

    .prologue
    .line 555
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move/from16 v16, v0

    .line 556
    .local v16, commandQualifier:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provide local info command Qualifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    packed-switch v16, :pswitch_data_16a

    .line 598
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v10, v0

    sget-object v11, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 601
    :goto_38
    return-void

    .line 565
    :pswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_38

    .line 568
    :pswitch_49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 569
    .local v15, calendar:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 570
    .local v2, res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    if-nez v15, :cond_60

    .line 571
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_38

    .line 573
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hh : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ss : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " zone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AM_PM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;

    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v15, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_130

    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_10e
    const/16 v7, 0xc

    invoke-virtual {v15, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    invoke-virtual {v15, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xff

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;-><init>(IIIIIII)V

    .line 584
    .restart local v2       #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_38

    .line 574
    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :cond_130
    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    goto :goto_10e

    .line 588
    .end local v15           #calendar:Ljava/util/Calendar;
    :pswitch_139
    const/4 v8, 0x0

    .line 589
    .local v8, response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .line 590
    .local v17, loc:Ljava/util/Locale;
    if-nez v17, :cond_151

    .line 591
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_38

    .line 593
    :cond_151
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;

    .end local v8           #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;-><init>(Ljava/lang/String;)V

    .line 594
    .restart local v8       #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_38

    .line 558
    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_49
        :pswitch_139
        :pswitch_39
    .end packed-switch
.end method

.method private handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 15
    .parameter "cmdParams"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0xa

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DTMF String is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    const/4 v9, 0x0

    aget-byte v2, v8, v9

    .line 477
    .local v2, rawDataLength:I
    mul-int/lit8 v8, v2, 0x2

    new-array v4, v8, [B

    .line 478
    .local v4, tempDTMFString:[B
    const/4 v5, 0x0

    .line 479
    .local v5, tempDTMFStringLength:I
    const/4 v6, 0x0

    .line 482
    .local v6, workingPtr:I
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v6

    .end local v6           #workingPtr:I
    .local v7, workingPtr:I
    :goto_37
    if-ge v1, v2, :cond_8e

    .line 483
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    .line 484
    .local v3, temp:B
    if-ne v3, v12, :cond_72

    const/16 v3, 0x70

    .line 488
    :goto_4a
    add-int/lit8 v6, v7, 0x1

    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    aput-byte v3, v4, v7

    .line 489
    add-int/lit8 v5, v5, 0x1

    .line 490
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    .line 491
    const/16 v8, 0xf

    if-eq v3, v8, :cond_6e

    .line 492
    if-ne v3, v12, :cond_80

    const/16 v3, 0x70

    .line 496
    :goto_67
    add-int/lit8 v7, v6, 0x1

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    aput-byte v3, v4, v6

    .line 497
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    .line 482
    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    goto :goto_37

    .line 485
    :cond_72
    if-ne v3, v10, :cond_77

    const/16 v3, 0x2a

    goto :goto_4a

    .line 486
    :cond_77
    if-ne v3, v11, :cond_7c

    const/16 v3, 0x23

    goto :goto_4a

    .line 487
    :cond_7c
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_4a

    .line 493
    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_80
    if-ne v3, v10, :cond_85

    const/16 v3, 0x2a

    goto :goto_67

    .line 494
    :cond_85
    if-ne v3, v11, :cond_8a

    const/16 v3, 0x23

    goto :goto_67

    .line 495
    :cond_8a
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_67

    .line 501
    .end local v3           #temp:B
    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    :cond_8e
    const-string/jumbo v8, "wakelock for DTMF"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v9, 0xfde8

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 504
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/DtmfString;

    invoke-direct {v8, v5, v4}, Lcom/android/internal/telephony/gsm/stk/DtmfString;-><init>(I[B)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    .line 506
    return-void
.end method

.method private handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 7
    .parameter "cmdParams"

    .prologue
    const/4 v4, 0x0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Smscaddress is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Sms Pdu is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3, v4, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->sendRawPduSat([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 551
    const/4 v1, 0x2

    const v2, 0xea60

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 552
    return-void
.end method

.method private handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 11
    .parameter "cmdParams"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "ro.csc.sales_code"

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ssString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    :try_start_22
    const-string v1, "ORO"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "XFA"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "XFM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 443
    :cond_4f
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 446
    :goto_54
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_5d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_22 .. :try_end_5d} :catch_69

    .line 452
    :goto_5d
    const/16 v1, 0x7530

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 453
    return-void

    .line 445
    .restart local p1
    :cond_63
    :try_start_63
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z
    :try_end_68
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_54

    .line 447
    .end local p1
    :catch_69
    move-exception v1

    move-object v7, v1

    .line 449
    .local v7, e:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "fail to send SS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_5d
.end method

.method private handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 10
    .parameter "cmdParams"

    .prologue
    const/4 v7, 0x1

    const-string/jumbo v6, "ro.csc.sales_code"

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ussdString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v1, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->dcsCode:I

    .line 459
    .local v1, dcsCode:I
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v2, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdLength:I

    .line 460
    .local v2, ussdLength:I
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    .line 461
    .local v3, ussdString:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcsCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    const-string v4, "ORO"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string v4, "XFA"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string v4, "XFM"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string v4, "XFC"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string v4, "XFE"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string v4, "XFV"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 465
    :cond_af
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 468
    :goto_b4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendEncodedUssd([BII)V

    .line 470
    const/16 v4, 0x7530

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 471
    return-void

    .line 467
    :cond_bf
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-boolean v7, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    goto :goto_b4
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .registers 12
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 374
    if-nez p1, :cond_5

    .line 424
    :cond_4
    :goto_4
    return-void

    .line 379
    :cond_5
    const/4 v7, 0x0

    .line 380
    .local v7, cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_5a

    :pswitch_b
    goto :goto_4

    .line 417
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_4

    .line 382
    :pswitch_10
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_4

    .line 383
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 384
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_4

    .line 385
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_4

    .line 391
    :pswitch_20
    :try_start_20
    iget-object v9, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    move-object v7, v0
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_26} :catch_32

    .line 398
    if-eqz v7, :cond_4

    .line 399
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_45

    .line 400
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_4

    .line 392
    :catch_32
    move-exception v1

    move-object v8, v1

    .line 394
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_4

    .line 405
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_45
    iget-object v2, v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_4

    .line 411
    :pswitch_4f
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 412
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_4

    .line 413
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_4

    .line 380
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_20
        :pswitch_10
        :pswitch_b
        :pswitch_4f
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .registers 3

    .prologue
    .line 939
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 942
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 944
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1550
    :try_start_2
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1e

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_15

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v3

    .line 1557
    :goto_14
    return v1

    .line 1553
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 1554
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 1555
    goto :goto_14

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1e
    move v1, v4

    .line 1557
    goto :goto_14
.end method

.method private sendMenuSelection(IZ)V
    .registers 12
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1130
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1131
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1134
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1137
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1138
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1139
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1140
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1141
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1144
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1145
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1146
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1147
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1150
    if-eqz p2, :cond_45

    .line 1151
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1152
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1153
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1156
    :cond_45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1159
    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v8

    .line 1160
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 1162
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1165
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .registers 13
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "data"
    .parameter "resp"

    .prologue
    .line 1003
    const-string v6, " sendTerminalResponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1004
    if-nez p1, :cond_d

    .line 1005
    const-string v6, "(cmdDet == null) "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    :goto_c
    return-void

    .line 1009
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1012
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1013
    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_1e

    .line 1014
    or-int/lit16 v5, v5, 0x80

    .line 1016
    :cond_1e
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1018
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1019
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1020
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1022
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1023
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1024
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1025
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1026
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1029
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1030
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1034
    const/4 v3, 0x0

    .line 1037
    .local v3, length:I
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_ce

    .line 1039
    const-string v6, " making Send SS Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    if-eqz v6, :cond_6c

    .line 1042
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    add-int/lit8 v3, v6, 0x1

    .line 1044
    :cond_6c
    if-nez v3, :cond_6f

    .line 1045
    const/4 v3, 0x1

    .line 1047
    :cond_6f
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1049
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_be

    .line 1050
    const-string v6, " SS Release complete error info "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    const/16 v6, 0x34

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1058
    :goto_81
    const/4 v4, 0x0

    .line 1060
    .local v4, rawData:[B
    :try_start_82
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_c6

    move-result-object v4

    .line 1065
    :goto_88
    if-eqz v4, :cond_90

    .line 1066
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1111
    .end local v4           #rawData:[B
    :cond_90
    :goto_90
    if-eqz p4, :cond_95

    .line 1112
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1115
    :cond_95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1116
    .restart local v4       #rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1122
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_c

    .line 1054
    .end local v2           #hexString:Ljava/lang/String;
    .end local v4           #rawData:[B
    :cond_be
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_81

    .line 1061
    .restart local v4       #rawData:[B
    :catch_c6
    move-exception v6

    move-object v1, v6

    .line 1063
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_88

    .line 1070
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_ce
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_90

    .line 1072
    const-string v6, " making Send USSD Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_10f

    .line 1074
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1075
    const-string v6, " USSD result error "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    const/16 v6, 0x37

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1077
    const/4 v4, 0x0

    .line 1079
    .restart local v4       #rawData:[B
    :try_start_ed
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f2} :catch_107

    move-result-object v4

    .line 1085
    :goto_f3
    if-eqz v4, :cond_90

    .line 1086
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_100

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    .line 1087
    :cond_100
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_90

    .line 1080
    :catch_107
    move-exception v6

    move-object v1, v6

    .line 1082
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f3

    .line 1091
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_10f
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1092
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1093
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1095
    const/4 v4, 0x0

    .line 1097
    .restart local v4       #rawData:[B
    :try_start_120
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_125} :catch_140

    move-result-object v4

    .line 1102
    :goto_126
    if-eqz v4, :cond_90

    .line 1103
    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1104
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1105
    const/4 v6, 0x2

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_90

    .line 1098
    :catch_140
    move-exception v6

    move-object v1, v6

    .line 1100
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_126
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .registers 14
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 950
    if-nez p1, :cond_5

    .line 998
    :goto_4
    return-void

    .line 953
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 956
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 957
    .local v4, tag:I
    iget-boolean v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_16

    .line 958
    or-int/lit16 v4, v4, 0x80

    .line 960
    :cond_16
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 961
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 962
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 963
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 964
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 967
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 968
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 969
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 970
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 971
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 974
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 975
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 976
    if-eqz p3, :cond_8d

    move v2, v6

    .line 977
    .local v2, length:I
    :goto_52
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 978
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 981
    if-eqz p3, :cond_61

    .line 982
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 986
    :cond_61
    if-eqz p5, :cond_66

    .line 987
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 990
    :cond_66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 991
    .local v3, rawData:[B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 997
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_4

    .line 976
    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #rawData:[B
    :cond_8d
    const/4 v5, 0x1

    move v2, v5

    goto :goto_52
.end method

.method private validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z
    .registers 4
    .parameter "resMsg"

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_f

    .line 1543
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compareTo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)Z

    move-result v0

    .line 1545
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSessionEnd(Landroid/os/Handler;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkProactiveCmd(Landroid/os/Handler;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvent(Landroid/os/Handler;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkCallSetUp(Landroid/os/Handler;)V

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 370
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .parameter "msg"

    .prologue
    .line 1247
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_5e6

    .line 1511
    :pswitch_8
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized STK command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1252
    :pswitch_26
    const-string/jumbo v5, "ril message arrived"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1253
    const/16 v19, 0x0

    .line 1254
    .local v19, data:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_51

    .line 1255
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1256
    .local v16, ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_51

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_51

    .line 1258
    :try_start_49
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19           #data:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_51} :catch_68

    .line 1264
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v19       #data:Ljava/lang/String;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 1513
    .end local v19           #data:Ljava/lang/String;
    .end local p1
    :cond_67
    :goto_67
    :pswitch_67
    return-void

    .line 1259
    .restart local v16       #ar:Landroid/os/AsyncResult;
    .restart local p1
    :catch_68
    move-exception v5

    move-object/from16 v20, v5

    .line 1260
    .local v20, e:Ljava/lang/ClassCastException;
    goto :goto_67

    .line 1267
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_67

    .line 1272
    :pswitch_80
    const-string v5, "MSG_ID_PHONE_DISCONNECT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_67

    .line 1274
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1276
    .local v21, intent:Landroid/content/Intent;
    if-nez v21, :cond_ca

    .line 1277
    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_67

    .line 1281
    :cond_ca
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1283
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_67

    .line 1293
    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_ee
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto/16 :goto_67

    .line 1296
    .restart local p1
    :pswitch_fb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto/16 :goto_67

    .line 1299
    .restart local p1
    :pswitch_108
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v6, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    .line 1300
    .local v6, event:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v7, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    .line 1301
    .local v7, sourceId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v8, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    .line 1302
    .local v8, destinationId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    move-object v9, v0

    .line 1303
    .local v9, additionalInfo:[B
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V

    goto/16 :goto_67

    .line 1306
    .end local v6           #event:I
    .end local v7           #sourceId:I
    .end local v8           #destinationId:I
    .end local v9           #additionalInfo:[B
    .restart local p1
    :pswitch_138
    const-string v5, "handleMsg : MSG_ID_RELEASE_COMPLETE_MESSAGE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_612

    :pswitch_148
    goto/16 :goto_67

    .line 1310
    :pswitch_14a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1311
    const/16 v23, 0x0

    .line 1312
    .local v23, ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_16f

    .line 1313
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1314
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_16f

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_16f

    .line 1316
    :try_start_167
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    check-cast v23, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :try_end_16f
    .catch Ljava/lang/ClassCastException; {:try_start_167 .. :try_end_16f} :catch_1e6

    .line 1323
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_16f
    if-nez v23, :cond_176

    .line 1324
    new-instance v23, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;-><init>()V

    .line 1327
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_176
    const-string v5, "got ReleaseComplete and need it"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_201

    .line 1330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_1eb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v5, v6, :cond_1ca

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v5, v6, :cond_1eb

    .line 1333
    :cond_1ca
    const-string/jumbo v5, "send fail TR "

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1317
    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_1e6
    move-exception v5

    move-object/from16 v20, v5

    .line 1318
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_67

    .line 1337
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v23

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1340
    :cond_201
    const-string v5, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_67

    .line 1346
    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :pswitch_20b
    const-string v5, "mWaitingSetupCallHoldResult = true"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1354
    :pswitch_229
    const-string v5, "MSG_ID_TIMEOUT timeout!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-nez v5, :cond_240

    .line 1356
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_67

    .line 1359
    :cond_240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_61c

    .line 1417
    :cond_248
    :goto_248
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_67

    .line 1363
    :pswitch_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_28e

    .line 1364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_27c

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_248

    .line 1367
    :cond_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_248

    .line 1369
    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_248

    .line 1370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_2ba

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_248

    .line 1373
    :cond_2ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_248

    .line 1378
    :pswitch_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_248

    .line 1382
    :pswitch_2e0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_300

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_248

    .line 1385
    :cond_300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_248

    .line 1391
    :pswitch_313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v5, :cond_33c

    .line 1392
    const-string/jumbo v5, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1396
    :cond_33c
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1398
    .restart local v21       #intent:Landroid/content/Intent;
    if-nez v21, :cond_377

    .line 1399
    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1403
    :cond_377
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1404
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 1405
    const-string v5, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_248

    .line 1413
    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_3a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_248

    .line 1420
    :pswitch_3b6
    const-string v5, "MSG_ID_SEND_DTMF_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1421
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1422
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_67

    .line 1423
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1424
    .restart local v16       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_416

    .line 1425
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    .line 1426
    .local v18, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_3fa

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1429
    :cond_3fa
    const-string/jumbo v5, "send DTMF Error except GENERIC_FAILURE!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1433
    .end local v18           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1438
    .end local v16           #ar:Landroid/os/AsyncResult;
    :pswitch_429
    const-string v5, "handleMsg : MSG_ID_SEND_SMS_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_67

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_67

    .line 1444
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Msg ID data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1446
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 1447
    .local v22, result:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_48d

    .line 1448
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1449
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_48d

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_48d

    .line 1451
    :try_start_47f
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v22, v0
    :try_end_48d
    .catch Ljava/lang/ClassCastException; {:try_start_47f .. :try_end_48d} :catch_4bb

    .line 1457
    .end local v16           #ar:Landroid/os/AsyncResult;
    :cond_48d
    const/4 v5, 0x0

    aget v5, v22, v5

    sparse-switch v5, :sswitch_data_62a

    .line 1481
    const-string v5, "SMS SEND GENERIC FAIL"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_571

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1452
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_4bb
    move-exception v5

    move-object/from16 v20, v5

    .line 1453
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_67

    .line 1460
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :sswitch_4c0
    const-string v5, "SMS SEND OK"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_4e8

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1464
    :cond_4e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1467
    :sswitch_4fb
    const-string v5, "SMS SEND FAIL - MEMORY NOT AVAILABLE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_523

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1471
    :cond_523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1474
    :sswitch_536
    const-string v5, "SMS SEND FAIL RETRY"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_55e

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1478
    :cond_55e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1485
    :cond_571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1491
    .end local v22           #result:[I
    .restart local p1
    :pswitch_584
    const-string v5, "handleMsg : MSG_ID_CALL_CONTROL_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1492
    const/16 v17, 0x0

    .line 1493
    .local v17, callcontrol_result:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_5ae

    .line 1494
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1495
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_5ae

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_5ae

    .line 1497
    :try_start_5a6
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17           #callcontrol_result:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;
    :try_end_5ae
    .catch Ljava/lang/ClassCastException; {:try_start_5a6 .. :try_end_5ae} :catch_5d3

    .line 1503
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v17       #callcontrol_result:Ljava/lang/String;
    :cond_5ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call control result data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1504
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCallControlResultNoti(Ljava/lang/String;)V

    goto/16 :goto_67

    .line 1498
    .end local v17           #callcontrol_result:Ljava/lang/String;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_5d3
    move-exception v5

    move-object/from16 v20, v5

    .line 1499
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_67

    .line 1507
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_5d8
    const-string/jumbo v5, "pause 3 secs"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    goto/16 :goto_67

    .line 1247
    :pswitch_data_5e6
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_6c
        :pswitch_26
        :pswitch_fb
        :pswitch_8
        :pswitch_138
        :pswitch_229
        :pswitch_ee
        :pswitch_3b6
        :pswitch_429
        :pswitch_584
        :pswitch_108
        :pswitch_80
        :pswitch_5d8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_67
    .end packed-switch

    .line 1307
    :pswitch_data_612
    .packed-switch 0x1
        :pswitch_14a
        :pswitch_148
        :pswitch_20b
    .end packed-switch

    .line 1359
    :pswitch_data_61c
    .packed-switch 0x1
        :pswitch_250
        :pswitch_2e0
        :pswitch_313
        :pswitch_3a3
        :pswitch_2cd
    .end packed-switch

    .line 1457
    :sswitch_data_62a
    .sparse-switch
        0x0 -> :sswitch_4c0
        0x8016 -> :sswitch_4fb
        0x802a -> :sswitch_536
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .registers 4
    .parameter "resMsg"

    .prologue
    .line 1517
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "onCmdResponse()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    .line 1518
    if-nez p1, :cond_b

    .line 1524
    :goto_9
    monitor-exit p0

    return-void

    .line 1522
    :cond_b
    const/4 v1, 0x6

    :try_start_c
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1523
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_9

    .line 1517
    .end local v0           #msg:Landroid/os/Message;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;)V
    .registers 4
    .parameter "eventMsg"

    .prologue
    .line 1528
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "onEventDownload()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 1529
    if-nez p1, :cond_b

    .line 1535
    :goto_9
    monitor-exit p0

    return-void

    .line 1533
    :cond_b
    const/16 v1, 0xe

    :try_start_d
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1534
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_9

    .line 1528
    .end local v0           #msg:Landroid/os/Message;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method processDTMFString()V
    .registers 6

    .prologue
    const/16 v4, 0x70

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtmfStringLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    DTMFString : <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, countP:I
    :goto_31
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_56

    .line 513
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_61

    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfLastRequest(C)V

    .line 533
    :cond_56
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    mul-int/lit16 v2, v2, 0xdac

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 534
    :goto_60
    return-void

    .line 518
    :cond_61
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_ba

    .line 519
    add-int/lit8 v0, v0, 0x1

    .line 521
    :goto_71
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_8e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_8e

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 524
    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto :goto_60

    .line 529
    :cond_ba
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfRequest(C)V

    .line 531
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto/16 :goto_31
.end method

.method sendDtmfLastRequest(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmfLastRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 545
    return-void
.end method

.method sendDtmfRequest(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmfRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 540
    return-void
.end method

.method public declared-synchronized sentTerminalResponseForSetupMenu(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1538
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1539
    monitor-exit p0

    return-void

    .line 1538
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startTimeOut(II)V
    .registers 6
    .parameter "timeDest"
    .parameter "duration"

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 434
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 435
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    return-void
.end method
