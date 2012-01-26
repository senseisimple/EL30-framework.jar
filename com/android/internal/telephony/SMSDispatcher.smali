.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0x36ee80

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x3e8

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field protected static final EVENT_ALERT_TIMEOUT:I = 0x9

.field static final EVENT_DEVICE_READY:I = 0x13a

.field static final EVENT_GET_CB_RSP:I = 0x139

.field protected static final EVENT_GET_STORED_MSG_COUNT_RSP:I = 0x12

.field protected static final EVENT_ICC_AVAILABLE:I = 0x14

.field protected static final EVENT_ICC_FULL:I = 0x6

.field protected static final EVENT_NEW_BROADCAST_SMS:I = 0xd

.field static final EVENT_NEW_CB:I = 0x137

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_ON_SIM:I = 0xf

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x5

.field protected static final EVENT_POST_ALERT:I = 0x7

.field protected static final EVENT_RADIO_ON:I = 0xc

.field protected static final EVENT_READ_SMS_DONE:I = 0x10

.field protected static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0xb

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x8

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_SET_CB_RSP:I = 0x138

.field protected static final EVENT_SET_MEMORY_RSP:I = 0x11

.field protected static final EVENT_SMS_NO_NETWORK_RESPONSE:I = 0x13

.field protected static final EVENT_STOP_SENDING:I = 0xa

.field protected static final EVENT_WRITE_SMS_DONE:I = 0x15

.field protected static LastMsg_MR:I = 0x0

.field static final MAIL_SEND_SMS:I = 0x1

.field private static final MAX_SEND_RETRIES:I = 0x1

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static ProductName:Ljava/lang/String; = null

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static boot_time:Z

.field private static cbConfig:Landroid/telephony/gsm/CbConfig;

.field private static current_sim_status:I

.field private static gcf_flag:Z

.field private static langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

.field private static languageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private static mFreeSlot:I

.field protected static mRemainingMessages:I

.field protected static mRemainingSlot:Z

.field private static mSmsMessage:Landroid/telephony/SmsMessage;

.field private static mSmsMessageBase:Lcom/android/internal/telephony/SmsMessageBase;

.field private static mTotalSlotcount:I

.field private static receive_storage_low_event:Z

.field private static receive_storage_ok_event:Z

.field private static replace_address:Ljava/lang/String;

.field private static replace_pid:I

.field private static sConcatenatedRef:I

.field private static sim_used_cnt:I


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private class2Sms:Landroid/telephony/SmsMessage;

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mClass0MsgFlag:Z

.field protected mClass2MsgFlag:Z

.field private mClass2_replaceType:Z

.field protected mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

.field private mGcfResultReceiver:Landroid/content/BroadcastReceiver;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected final mRawUri:Landroid/net/Uri;

.field private mReplaceMessageMatched:Z

.field protected mReportMemoryStatusPending:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimStatusChanged:Z

.field protected mSimStorageAvailable:Z

.field protected mStorageAvailable:Z

.field private mSubmitPduBase:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field private mfoundMatch:Z

.field protected read_pdu:Ljava/lang/String;

.field protected receive_intent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    .line 98
    new-array v0, v4, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 100
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    .line 103
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 104
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 106
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    .line 237
    sput v5, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 253
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 257
    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    .line 262
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    .line 263
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    .line 269
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    .line 270
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    .line 271
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    .line 276
    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    .line 278
    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    .line 280
    sput v5, Lcom/android/internal/telephony/SMSDispatcher;->LastMsg_MR:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 12
    .parameter "phone"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 343
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 198
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "raw"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 228
    const/16 v4, 0x1388

    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->WAKE_LOCK_TIMEOUT:I

    .line 234
    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 235
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 240
    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 242
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    .line 244
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    .line 246
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    .line 248
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 250
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    .line 251
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    .line 429
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2550
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2565
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2608
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 345
    new-instance v4, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v4, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 347
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 348
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 352
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "sms_outgoing_check_interval_ms"

    const v6, 0x36ee80

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 355
    .local v0, check_period:I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "sms_outgoing_check_max_count"

    const/16 v6, 0x3e8

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 358
    .local v3, max_count:I
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;-><init>(Lcom/android/internal/telephony/SMSDispatcher;II)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xf

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x13

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setSmsNetworkNoResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x14

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 371
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 375
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x137

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x13a

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 386
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v4, "android.intent.action.DB_DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v2, gcf_filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v4, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    return p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    return v0
.end method

.method private broadcastCbSettingsAvailable()V
    .registers 4

    .prologue
    .line 2187
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]Entered broadcastCbSettingsAvailable method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2189
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2190
    return-void
.end method

.method private comparePageNumber(BI)Z
    .registers 14
    .parameter "sequence"
    .parameter "referenceNumber"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v10, "SMSDispatcher"

    .line 2319
    const-string v0, "SMSDispatcher"

    const-string v0, " [CB] In comparePageNumber in SMSDispathcher"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2322
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2323
    const-string v0, " AND"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    const-string v0, " sequence ="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2326
    const/4 v6, 0x0

    .line 2328
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2329
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2331
    .local v7, cursorCount:I
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [CB] Number duplicates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    if-lt v7, v9, :cond_53

    .line 2334
    const/4 v0, 0x0

    .line 2336
    :goto_52
    return v0

    :cond_53
    move v0, v9

    goto :goto_52
.end method

.method private concatenateCb(Landroid/telephony/gsm/CbMessage;B)V
    .registers 27
    .parameter "cbMsg"
    .parameter "totalPages"

    .prologue
    .line 2205
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB]Entered concatenateCb method"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getSn()S

    move-result v21

    .line 2211
    .local v21, sn:S
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getRefNum()I

    move-result v19

    .line 2213
    .local v19, referenceNumber:I
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] Reference number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v9

    .line 2217
    .local v9, currentPage:B
    const/16 v18, 0x0

    check-cast v18, [[B

    .line 2218
    .local v18, pdus:[[B
    const/4 v10, 0x0

    .line 2220
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reference_number ="

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2221
    .local v23, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2224
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2225
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 2227
    .local v11, cursorCount:I
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] number of matches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->comparePageNumber(BI)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 2234
    const/4 v3, 0x1

    sub-int v3, p2, v3

    if-ge v11, v3, :cond_f6

    .line 2237
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2239
    .local v22, values:Landroid/content/ContentValues;
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] Inserting into database. current page number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const-string/jumbo v3, "reference_number"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2242
    const-string v3, "count"

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2243
    const-string/jumbo v3, "sequence"

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2244
    const-string/jumbo v3, "pdu"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_f0
    .catchall {:try_start_45 .. :try_end_f0} :catchall_195
    .catch Landroid/database/SQLException; {:try_start_45 .. :try_end_f0} :catch_185

    .line 2302
    if-eqz v10, :cond_f5

    .line 2303
    .end local v11           #cursorCount:I
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_f2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2305
    :cond_f5
    return-void

    .line 2251
    .restart local v11       #cursorCount:I
    :cond_f6
    const/4 v3, 0x1

    sub-int v3, p2, v3

    if-ne v11, v3, :cond_19c

    .line 2255
    :try_start_fb
    const-string/jumbo v3, "pdu"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2256
    .local v17, pduColumn:I
    const-string/jumbo v3, "sequence"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 2258
    .local v20, sequenceColumn:I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPageLength()I

    move-result v16

    .line 2259
    .local v16, length:I
    mul-int v13, v16, p2

    .line 2262
    .local v13, datalength:I
    move/from16 v0, p2

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    .line 2263
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2265
    const/4 v15, 0x1

    .local v15, i:I
    :goto_119
    if-gt v15, v11, :cond_151

    .line 2267
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] In for loop of concatenate method: cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v12, v3

    .line 2271
    .local v12, cursorSequence:I
    const/4 v3, 0x1

    sub-int v3, v12, v3

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v18, v3

    .line 2273
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2265
    add-int/lit8 v15, v15, 0x1

    goto :goto_119

    .line 2276
    .end local v12           #cursorSequence:I
    :cond_151
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v4

    aput-object v4, v18, v3

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2281
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCbPdus([[B)V

    .line 2302
    if-eqz v10, :cond_f5

    goto/16 :goto_f2

    .line 2289
    .end local v13           #datalength:I
    .end local v15           #i:I
    .end local v16           #length:I
    .end local v17           #pduColumn:I
    .end local v20           #sequenceColumn:I
    :cond_17a
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB] got duplicate message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catchall {:try_start_fb .. :try_end_181} :catchall_195
    .catch Landroid/database/SQLException; {:try_start_fb .. :try_end_181} :catch_185

    .line 2302
    if-eqz v10, :cond_f5

    goto/16 :goto_f2

    .line 2293
    .end local v11           #cursorCount:I
    :catch_185
    move-exception v3

    move-object v14, v3

    .line 2295
    .local v14, e:Landroid/database/SQLException;
    :try_start_187
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB] exception : Can\'t access multipart SMS database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-virtual {v14}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_191
    .catchall {:try_start_187 .. :try_end_191} :catchall_195

    .line 2302
    if-eqz v10, :cond_f5

    goto/16 :goto_f2

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_195
    move-exception v3

    if-eqz v10, :cond_19b

    .line 2303
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2302
    :cond_19b
    throw v3

    .restart local v11       #cursorCount:I
    :cond_19c
    if-eqz v10, :cond_f5

    goto/16 :goto_f2
.end method

.method private createWakelock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1153
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1154
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1155
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1156
    return-void
.end method

.method private dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V
    .registers 5
    .parameter "getRsp"

    .prologue
    .line 2494
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]In dispatchErrorCodeForGetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.GET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2497
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2498
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2499
    return-void
.end method

.method private dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V
    .registers 5
    .parameter "setRsp"

    .prologue
    .line 2513
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]In dispatchErrorCodeForSetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2516
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "setRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2517
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2518
    return-void
.end method

.method private duplicatedMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;)Z
    .registers 15
    .parameter "sms"
    .parameter "concatRef"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "SMSDispatcher"

    .line 1542
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1543
    .local v8, where:Ljava/lang/StringBuilder;
    iget v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1544
    const-string v0, " AND sequence = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    iget v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1546
    const-string v0, " AND address = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1549
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1551
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1553
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1555
    .local v7, cursorCount:I
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seqNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicatedMessage!! cursorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    if-eqz v6, :cond_8e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1563
    :cond_8e
    if-nez v7, :cond_92

    move v0, v9

    .line 1566
    :goto_91
    return v0

    :cond_92
    move v0, v10

    goto :goto_91
.end method

.method private filterCbMsg(Landroid/telephony/gsm/CbMessage;)V
    .registers 11
    .parameter "cbMessage"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "[CB] No match found for language and MsgId\'s"

    const-string v5, "SMSDispatcher"

    .line 2030
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] filterCbMsg"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const/4 v2, 0x0

    .line 2032
    .local v2, matched:Z
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 2034
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 2036
    .local v1, lang:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    if-eqz v3, :cond_71

    .line 2038
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] The settings are: cbEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v4, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selectedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgIdCount =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgIdMaxCount =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-nez v3, :cond_72

    .line 2045
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] CB is now disabled.It\'ll discard"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 2109
    :cond_71
    :goto_71
    return-void

    .line 2050
    :cond_72
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    if-ne v3, v7, :cond_8a

    .line 2052
    const/4 v2, 0x1

    .line 2053
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] all channels selected.So no filtering required"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_80
    if-nez v2, :cond_fc

    .line 2077
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for msgId"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 2055
    :cond_8a
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    const/4 v4, 0x2

    if-ne v3, v4, :cond_80

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-eqz v3, :cond_80

    .line 2057
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] my channels selected. So  filtering is required"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9f
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v0, v3, :cond_c7

    .line 2061
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB ] msgID =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 2064
    :cond_c7
    const/4 v0, 0x0

    :goto_c8
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v0, v3, :cond_80

    .line 2066
    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getMsgId()S

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    if-ne v3, v4, :cond_f9

    .line 2068
    const/4 v2, 0x1

    .line 2069
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] found match for msgId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_f9
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    .line 2082
    .end local v0           #i:I
    :cond_fc
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    if-nez v3, :cond_109

    .line 2084
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] no languages selected"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71

    .line 2088
    :cond_109
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_10a
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16a

    .line 2090
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v3, v1, v0

    .line 2092
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] user selected language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getLanguage()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    if-ne v3, v4, :cond_148

    if-nez v2, :cond_156

    :cond_148
    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getLanguage()I

    move-result v3

    sget-object v4, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_UNSPECIFIED:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    if-ne v3, v4, :cond_162

    if-eqz v2, :cond_162

    .line 2095
    :cond_156
    iput-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 2096
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] found match for language and MsgId\'s"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :goto_15f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10a

    .line 2098
    :cond_162
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for language and MsgId\'s"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15f

    .line 2103
    :cond_16a
    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    if-nez v3, :cond_177

    .line 2104
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for language and MsgId\'s"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71

    .line 2106
    :cond_177
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] found match : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71
.end method

.method protected static getNextConcatenatedRef()I
    .registers 1

    .prologue
    .line 282
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 283
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleIccFull()V
    .registers 5

    .prologue
    .line 1196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1198
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method private isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .registers 4
    .parameter "tracker"

    .prologue
    .line 1984
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1985
    .local v0, map:Ljava/util/HashMap;
    const-string/jumbo v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isNttDcmCarrierMailer([B)Z
    .registers 21
    .parameter "pdu"

    .prologue
    .line 2800
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Rx: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const/4 v10, 0x0

    .line 2803
    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v16, p1, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .line 2804
    .local v15, transactionId:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #index:I
    .restart local v10       #index:I
    aget-byte v16, p1, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .line 2805
    .local v14, pduType:I
    const/4 v7, 0x0

    .line 2807
    .local v7, headerLength:I
    const/16 v16, 0x6

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_5c

    const/16 v16, 0x7

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_5c

    .line 2809
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/16 v16, 0x0

    .line 2876
    :goto_5b
    return v16

    .line 2813
    :cond_5c
    new-instance v13, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 2815
    .local v13, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v16

    if-nez v16, :cond_74

    .line 2816
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Length error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const/16 v16, 0x0

    goto :goto_5b

    .line 2820
    :cond_74
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v7, v0

    .line 2821
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int/lit8 v10, v16, 0x2

    .line 2823
    move v9, v10

    .line 2825
    .local v9, headerStartIndex:I
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v16

    if-nez v16, :cond_93

    .line 2826
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Content-Type error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const/16 v16, 0x0

    goto :goto_5b

    .line 2831
    :cond_93
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 2832
    .local v12, mimeType:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 2834
    .local v3, applicationId:J
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .line 2836
    .local v6, binaryContentType:I
    const/16 v16, 0x30a

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_b6

    const/16 v16, 0x44

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_b6

    const/16 v16, 0x310

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_10a

    .line 2838
    :cond_b6
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CONTENT_TYPE_B_EMN? = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-virtual {v13, v10, v9, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v8

    .line 2841
    .local v8, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v16, 0x2f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2844
    .local v5, applicationIdObj:Ljava/lang/Object;
    move-object v0, v5

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_ef

    .line 2845
    check-cast v5, Ljava/lang/Long;

    .end local v5           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2847
    :cond_ef
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "applicationId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    .end local v8           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_10a
    sparse-switch v6, :sswitch_data_164

    .line 2876
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2852
    :sswitch_111
    const-wide/32 v16, 0x9056

    cmp-long v16, v3, v16

    if-nez v16, :cond_123

    .line 2853
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : i-mode.net"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2856
    :cond_123
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2860
    :sswitch_127
    const-wide/16 v16, 0x7

    cmp-long v16, v3, v16

    if-nez v16, :cond_138

    .line 2861
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : fota"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2863
    :cond_138
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2867
    :sswitch_13c
    const-wide/32 v16, 0x905c

    cmp-long v16, v3, v16

    if-nez v16, :cond_14e

    .line 2868
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : Carrier Mail"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    const/16 v16, 0x1

    goto/16 :goto_5b

    .line 2871
    :cond_14e
    const-wide/16 v16, 0x9

    cmp-long v16, v3, v16

    if-nez v16, :cond_15f

    .line 2872
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : mopera U"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2874
    :cond_15f
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2849
    nop

    :sswitch_data_164
    .sparse-switch
        0x44 -> :sswitch_127
        0x30a -> :sswitch_13c
        0x310 -> :sswitch_111
    .end sparse-switch
.end method

.method private isNttDcmSLC([B)Z
    .registers 21
    .parameter "pdu"

    .prologue
    .line 2893
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Rx: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    const/4 v10, 0x0

    .line 2896
    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v16, p1, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .line 2897
    .local v15, transactionId:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #index:I
    .restart local v10       #index:I
    aget-byte v16, p1, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .line 2898
    .local v14, pduType:I
    const/4 v7, 0x0

    .line 2900
    .local v7, headerLength:I
    const/16 v16, 0x6

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_5c

    const/16 v16, 0x7

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_5c

    .line 2902
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    const/16 v16, 0x0

    .line 2974
    :goto_5b
    return v16

    .line 2906
    :cond_5c
    new-instance v13, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 2908
    .local v13, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v16

    if-nez v16, :cond_74

    .line 2909
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Length error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    const/16 v16, 0x0

    goto :goto_5b

    .line 2913
    :cond_74
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v7, v0

    .line 2914
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int/lit8 v10, v16, 0x2

    .line 2916
    move v9, v10

    .line 2918
    .local v9, headerStartIndex:I
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v16

    if-nez v16, :cond_93

    .line 2919
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Content-Type error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    const/16 v16, 0x0

    goto :goto_5b

    .line 2924
    :cond_93
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 2925
    .local v12, mimeType:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 2927
    .local v3, applicationId:J
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .line 2940
    .local v6, binaryContentType:I
    const/16 v16, 0x30

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_102

    .line 2942
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CONTENT_TYPE_B_SLC? = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int v10, v10, v16

    .line 2946
    invoke-virtual {v13, v10, v9, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v8

    .line 2947
    .local v8, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v16, 0x2f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2950
    .local v5, applicationIdObj:Ljava/lang/Object;
    move-object v0, v5

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_e7

    .line 2951
    check-cast v5, Ljava/lang/Long;

    .end local v5           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2953
    :cond_e7
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "applicationId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    .end local v8           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_102
    packed-switch v6, :pswitch_data_120

    .line 2974
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2969
    :pswitch_109
    const-wide/32 v16, 0x905f

    cmp-long v16, v3, v16

    if-nez v16, :cond_11b

    .line 2970
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive SLC : storage syncML"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const/16 v16, 0x1

    goto/16 :goto_5b

    .line 2972
    :cond_11b
    const/16 v16, 0x0

    goto/16 :goto_5b

    .line 2955
    nop

    :pswitch_data_120
    .packed-switch 0x30
        :pswitch_109
    .end packed-switch
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 8
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1948
    if-nez p1, :cond_25

    .line 1952
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    if-eqz v1, :cond_25

    .line 1954
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1955
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1956
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1957
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1974
    .end local v0           #intent:Landroid/content/Intent;
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1975
    return-void
.end method

.method private rejectDuplicates([S)[S
    .registers 8
    .parameter "msgIDs"

    .prologue
    .line 2122
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]In rejectDuplicates of SMSDispatcher"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2126
    .local v1, messageId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v4, p1

    if-ge v0, v4, :cond_26

    .line 2127
    aget-short v3, p1, v0

    .line 2129
    .local v3, val:S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 2130
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2133
    .end local v3           #val:S
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [S

    .line 2135
    .local v2, ret:[S
    const/4 v0, 0x0

    .end local p0
    :goto_2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_42

    .line 2136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput-short v4, v2, v0

    .line 2135
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 2139
    :cond_42
    return-object v2
.end method

.method private setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .registers 5
    .parameter "languageId"

    .prologue
    .line 2458
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2459
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 2460
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2462
    :cond_13
    return-void
.end method


# virtual methods
.method public GetCBEnableConfig()Z
    .registers 2

    .prologue
    .line 2363
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v0, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    return v0
.end method

.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 5
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 2547
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V
    .registers 7
    .parameter "getRsp"

    .prologue
    const-string v4, "SMSDispatcher"

    .line 2154
    const-string v2, "SMSDispatcher"

    const-string v2, "[CB]cacheCbsettings"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const/4 v1, 0x0

    .line 2157
    .local v1, msgId:[S
    iget-object v2, p1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->rejectDuplicates([S)[S

    move-result-object v1

    .line 2159
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, p1, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    iput-boolean v3, v2, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 2160
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    array-length v3, v1

    iput v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 2161
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 2162
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-object v1, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 2163
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->selectedId:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 2165
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] cbEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdMaxCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_72
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v2, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v2, v2

    if-ge v0, v2, :cond_9a

    .line 2172
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB ] msgID =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 2175
    :cond_9a
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 11
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1176
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V
    .registers 12
    .parameter "intent"
    .parameter "permission"
    .parameter "isVailedSUPLHeader"

    .prologue
    const/4 v6, 0x0

    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1184
    if-eqz p3, :cond_16

    .line 1186
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1188
    :cond_16
    return-void
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .registers 8
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    const-string/jumbo v2, "pdus"

    const-string v4, "SMSDispatcher"

    const-string v3, "Dispatching "

    .line 2982
    if-eqz p2, :cond_3b

    .line 2983
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2984
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2986
    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " emergency SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2997
    :goto_3a
    return-void

    .line 2990
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2991
    .restart local v0       #intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2993
    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method protected dispatchCbPdus([[B)V
    .registers 4
    .parameter "pdus"

    .prologue
    .line 2349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2350
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2351
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2352
    return-void
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchPdus([[B)V
    .registers 4
    .parameter "pdus"

    .prologue
    .line 1577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1579
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1580
    return-void
.end method

.method protected dispatchPdusToMobileTracker([[BLjava/lang/String;)V
    .registers 5
    .parameter "pdus"
    .parameter "intentAction"

    .prologue
    .line 1588
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1590
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1591
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .registers 7
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1602
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1603
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1604
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1605
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewSMS(Landroid/os/Handler;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetSmsNetworkNoResponse(Landroid/os/Handler;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsAvailable(Landroid/os/Handler;)V

    .line 416
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 419
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method protected getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 4
    .parameter "intent"

    .prologue
    .line 1871
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1872
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const v1, 0x1040441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public getCbConfig()V
    .registers 3

    .prologue
    .line 2479
    const/16 v1, 0x139

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2480
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCbConfig(Landroid/os/Message;)V

    .line 2482
    return-void
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .registers 5

    .prologue
    const-string v3, "SMSDispatcher"

    .line 2003
    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMSDispathcher-CB] bCBEnabled =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v2, v2, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectedId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v2, v2, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgIdMaxCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v2, v2, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgIdCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v2, v2, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const/4 v0, 0x0

    .local v0, i:I
    :goto_49
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v1, v1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v1, v1

    if-ge v0, v1, :cond_71

    .line 2011
    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CB] msgIDs =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v2, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 2014
    :cond_71
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    return-object v1
.end method

.method protected abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method protected abstract handleBroadcastSms([B)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 35
    .parameter "msg"

    .prologue
    .line 439
    const-string v7, "class2"

    .line 440
    .local v7, smsc:Ljava/lang/String;
    const/4 v8, 0x0

    .line 442
    .local v8, pdu:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    sparse-switch v4, :sswitch_data_874

    .line 1150
    .end local p1
    :cond_b
    :goto_b
    :sswitch_b
    return-void

    .line 615
    .restart local p1
    :sswitch_c
    const-string v4, "SMSDispatcher"

    const-string v5, "New SMS Message Received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 622
    .local v10, ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_39

    .line 623
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 627
    :cond_39
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/telephony/SmsMessage;

    .line 629
    .local v30, sms:Landroid/telephony/SmsMessage;
    :try_start_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v4, v0

    if-eqz v4, :cond_8c

    .line 630
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v26

    .line 631
    .local v26, result:I
    const/4 v4, -0x1

    move/from16 v0, v26

    move v1, v4

    if-eq v0, v1, :cond_b

    .line 634
    const/4 v4, 0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_88

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 635
    .local v19, handled:Z
    :goto_62
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v26

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_6d} :catch_6e

    goto :goto_b

    .line 643
    .end local v19           #handled:Z
    .end local v26           #result:I
    :catch_6e
    move-exception v4

    move-object/from16 v16, v4

    .line 644
    .local v16, ex:Ljava/lang/RuntimeException;
    const-string v4, "SMSDispatcher"

    const-string v5, "Exception dispatching message"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_b

    .line 634
    .end local v16           #ex:Ljava/lang/RuntimeException;
    .restart local v26       #result:I
    :cond_88
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_62

    .line 638
    .end local v26           #result:I
    :cond_8c
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_8f
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 641
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_a7} :catch_6e

    goto/16 :goto_b

    .line 654
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v30           #sms:Landroid/telephony/SmsMessage;
    :sswitch_a9
    const-string v4, "SMSDispatcher"

    const-string v5, "mSimStorageAvailable && mStorageAvailable OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 657
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 659
    .restart local v10       #ar:Landroid/os/AsyncResult;
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v20, v0

    .line 661
    .local v20, index:[I
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_da

    move-object/from16 v0, v20

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_104

    .line 662
    :cond_da
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMSDispatcher] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 665
    :cond_104
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v20, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x0

    aget v5, v20, v5

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_b

    .line 674
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v20           #index:[I
    .restart local p1
    :sswitch_135
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 676
    .local v24, read_pdu:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 678
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    aput-object p1, v24, v4

    .line 680
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    move v4, v0

    if-eqz v4, :cond_314

    .line 682
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-ne v4, v5, :cond_201

    const/4 v4, 0x0

    :goto_15a
    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    .line 684
    const/4 v4, 0x1

    aget-object v4, v24, v4

    const-string v5, "ff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_204

    .line 686
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] slot is empty slot."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    .line 691
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-ge v4, v5, :cond_1b2

    .line 693
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 694
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    .line 737
    :cond_1b2
    :goto_1b2
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-eq v4, v5, :cond_1c3

    sget-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    move v4, v0

    if-nez v4, :cond_b

    .line 739
    :cond_1c3
    const-string v4, "SMSDispatcher"

    const-string v5, "Replace message writes first!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    move v4, v0

    if-eqz v4, :cond_2fd

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x3

    const/16 v6, 0x15

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v7, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 748
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    .line 749
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    .line 750
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 751
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    goto/16 :goto_b

    .line 682
    :cond_201
    const/4 v4, 0x1

    goto/16 :goto_15a

    .line 700
    :cond_204
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] slot is used slot."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-static/range {v24 .. v24}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v30

    .line 704
    .restart local v30       #sms:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    .line 705
    .local v13, current_address:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v14

    .line 707
    .local v14, current_pid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 709
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read msg : address= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming msg : address= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->replace_address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->replace_pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-eqz v13, :cond_2d6

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->replace_address:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d6

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->replace_pid:I

    if-ne v14, v4, :cond_2d6

    .line 715
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched Message, Overwrite index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/4 v6, 0x3

    const/16 v9, 0x15

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 717
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    .line 718
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    .line 719
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 720
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    goto/16 :goto_1b2

    .line 725
    :cond_2d6
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-ge v4, v5, :cond_1b2

    .line 727
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 728
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_1b2

    .line 755
    .end local v13           #current_address:Ljava/lang/String;
    .end local v14           #current_pid:I
    .end local v30           #sms:Landroid/telephony/SmsMessage;
    :cond_2fd
    const-string v4, "SMSDispatcher"

    const-string v5, "L3 ACK: SIM Memory Low!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_b

    .line 764
    :cond_314
    const/4 v4, 0x1

    aget-object v4, v24, v4

    const-string v5, "ff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_337

    .line 766
    const-string v4, "SMSDispatcher"

    const-string v5, "Writed Message Read!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-static/range {v24 .. v24}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v30

    .line 768
    .restart local v30       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_b

    .line 772
    .end local v30           #sms:Landroid/telephony/SmsMessage;
    :cond_337
    const-string v4, "SMSDispatcher"

    const-string v5, "Empty slot readed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 783
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v24           #read_pdu:[Ljava/lang/String;
    .restart local p1
    :sswitch_340
    const-string v4, "SMSDispatcher"

    const-string v5, "EVENT_ICC_AVAILABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    goto/16 :goto_b

    .line 792
    :sswitch_34f
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] Calling getCbConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCbConfig()V

    goto/16 :goto_b

    .line 804
    :sswitch_35b
    :try_start_35b
    const-string v4, "SMSDispatcher"

    const-string v5, "[SMSDispatcher] New CB Message Received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 809
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_37f

    .line 810
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]Exception processing incoming CB"

    iget-object v6, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_376
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_376} :catch_378

    goto/16 :goto_b

    .line 873
    .end local v10           #ar:Landroid/os/AsyncResult;
    :catch_378
    move-exception v4

    move-object v15, v4

    .line 874
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 815
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v10       #ar:Landroid/os/AsyncResult;
    :cond_37f
    :try_start_37f
    iget-object v11, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Landroid/telephony/gsm/CbMessage;

    .line 822
    .local v11, cbMessage:Landroid/telephony/gsm/CbMessage;
    iget v12, v11, Landroid/telephony/gsm/CbMessage;->cbType:I

    .line 824
    .local v12, cbType:I
    const/4 v4, 0x2

    if-ne v12, v4, :cond_391

    .line 825
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] UMTS message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 829
    :cond_391
    invoke-virtual {v11}, Landroid/telephony/gsm/CbMessage;->getMsgId()S

    move-result v4

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_3a2

    .line 831
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] Channel Id > 999"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 835
    :cond_3a2
    move-object v0, v11

    iget v0, v0, Landroid/telephony/gsm/CbMessage;->message_length:I

    move/from16 v22, v0

    .line 836
    .local v22, message_length:I
    move-object v0, v11

    iget-object v0, v0, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 839
    .local v21, message:Ljava/lang/String;
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cbType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {v11}, Landroid/telephony/gsm/CbMessage;->getCount()B

    move-result v31

    .line 849
    .local v31, totalPages:B
    move/from16 v0, v31

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 851
    .local v23, pdus:[[B
    const/4 v4, 0x0

    invoke-virtual {v11}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v5

    aput-object v5, v23, v4

    .line 853
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->filterCbMsg(Landroid/telephony/gsm/CbMessage;)V

    .line 855
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_439

    .line 857
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] Received msg is matched with the settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v4, 0x1

    move/from16 v0, v31

    move v1, v4

    if-le v0, v1, :cond_429

    .line 861
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]Before calling concatenateCb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->concatenateCb(Landroid/telephony/gsm/CbMessage;B)V

    goto/16 :goto_b

    .line 866
    :cond_429
    const-string v4, "SMSDispatcher"

    const-string v5, " [CB]No concatenation required"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCbPdus([[B)V

    goto/16 :goto_b

    .line 870
    :cond_439
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] Received msg is not matched with the settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_37f .. :try_end_440} :catch_378

    goto/16 :goto_b

    .line 883
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v11           #cbMessage:Landroid/telephony/gsm/CbMessage;
    .end local v12           #cbType:I
    .end local v21           #message:Ljava/lang/String;
    .end local v22           #message_length:I
    .end local v23           #pdus:[[B
    .end local v31           #totalPages:B
    :sswitch_442
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_b

    .line 887
    .restart local p1
    :sswitch_44f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_b

    .line 891
    .restart local p1
    :sswitch_45c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto/16 :goto_b

    .line 896
    .restart local p1
    :sswitch_469
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    move v4, v0

    if-nez v4, :cond_b

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_b

    .line 904
    :sswitch_47b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 907
    .restart local v10       #ar:Landroid/os/AsyncResult;
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/4 v4, 0x0

    aget v29, p1, v4

    .line 908
    .local v29, sim_status:I
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    check-cast p1, [I

    const/4 v4, 0x1

    aget v32, p1, v4

    .line 910
    .local v32, totalSlotcount:I
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4ba

    .line 911
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SmsDispatcher] Error on EVENT_ICC_FULL with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 917
    :cond_4ba
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_sim_status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sim_status[0]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    move v0, v4

    move/from16 v1, v29

    if-eq v0, v1, :cond_536

    .line 920
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    .line 924
    :goto_4ee
    sput v29, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    .line 926
    sput v32, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    .line 928
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTotalSlotcount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    move v4, v0

    if-eqz v4, :cond_53d

    .line 932
    const/4 v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 933
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    .line 934
    const-string v4, "SMSDispatcher"

    const-string/jumbo v5, "replace type message!! start slot scanning..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_b

    .line 922
    :cond_536
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    goto :goto_4ee

    .line 939
    :cond_53d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    move v4, v0

    if-nez v4, :cond_563

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    move v4, v0

    if-eqz v4, :cond_563

    .line 941
    const-string v4, "SMSDispatcher"

    const-string v5, "Sim Status Changed !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v4, v0

    if-eqz v4, :cond_59f

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 949
    :cond_563
    :goto_563
    const/4 v4, 0x1

    move/from16 v0, v29

    move v1, v4

    if-ne v0, v1, :cond_5be

    .line 951
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 955
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v4, v0

    if-nez v4, :cond_5aa

    .line 957
    const-string v4, "SMSDispatcher"

    const-string v5, "mSimStorageAvailable OK.. but mStorageAvailable is not OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v4, "SMSDispatcher"

    const-string/jumbo v5, "send Nack without saving class2 message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_b

    .line 946
    :cond_59f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_563

    .line 963
    :cond_5aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x3

    const/16 v6, 0x15

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v7, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_b

    .line 969
    :cond_5be
    const-string v4, "SMSDispatcher"

    const-string v5, "mSimStorage is not Available. so device cannot write sms to sim!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 973
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v4, v0

    if-nez v4, :cond_5e6

    .line 975
    const-string v4, "SMSDispatcher"

    const-string v5, "L3 ACK: PDA & SIM Memory Low 1!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_b

    .line 980
    :cond_5e6
    const-string v4, "SMSDispatcher"

    const-string v5, "L3 ACK: SIM Memory Low!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_b

    .line 993
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v29           #sim_status:I
    .end local v32           #totalSlotcount:I
    .restart local p1
    :sswitch_5fa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 995
    .restart local v10       #ar:Landroid/os/AsyncResult;
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v20, v0

    .line 997
    .restart local v20       #index:[I
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_619

    move-object/from16 v0, v20

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_641

    .line 998
    :cond_619
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeSmsToSim Fail: exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_b

    .line 1003
    :cond_641
    const-string v4, "SMSDispatcher"

    const-string v5, "*****************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v4, "SMSDispatcher"

    const-string/jumbo v5, "writeSmsToSim was processed successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v4, "SMSDispatcher"

    const-string v5, "*****************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1012
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v20           #index:[I
    .restart local p1
    :sswitch_659
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_b

    .line 1016
    .restart local p1
    :sswitch_668
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/app/AlertDialog;

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1017
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69a

    .line 1020
    :try_start_685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1021
    .local v27, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_69a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_685 .. :try_end_69a} :catch_6a3

    .line 1027
    .end local v27           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_69a
    :goto_69a
    const-string v4, "SMSDispatcher"

    const-string v5, "EVENT_ALERT_TIMEOUT, message stop sending"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1022
    :catch_6a3
    move-exception v4

    move-object/from16 v16, v4

    .line 1023
    .local v16, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69a

    .line 1032
    .end local v16           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_6ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1034
    .restart local v27       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v4

    if-eqz v4, :cond_6f0

    .line 1035
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1039
    :goto_6e0
    const/16 v4, 0x9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 1037
    :cond_6f0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_6e0

    .line 1044
    .end local v27           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_6f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1047
    :try_start_703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1048
    .restart local v27       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_722
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_703 .. :try_end_722} :catch_732

    .line 1052
    .end local v27           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_722
    const/16 v4, 0x9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 1049
    :catch_732
    move-exception v4

    move-object/from16 v16, v4

    .line 1050
    .restart local v16       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_722

    .line 1057
    .end local v16           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_73d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 1058
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_76d

    .line 1059
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 1060
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1063
    :cond_76d
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    goto/16 :goto_b

    .line 1068
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_775
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    move v4, v0

    if-eqz v4, :cond_b

    .line 1069
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v5, v0

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_b

    .line 1082
    :sswitch_7b1
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] received response for getCb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 1087
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_7d6

    .line 1089
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/telephony/gsm/CbConfig;

    .line 1090
    .local v18, getRsp:Landroid/telephony/gsm/CbConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 1091
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->broadcastCbSettingsAvailable()V

    goto/16 :goto_b

    .line 1094
    .end local v18           #getRsp:Landroid/telephony/gsm/CbConfig;
    :cond_7d6
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CB Exception] Received exception in get response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/CommandException;

    .line 1096
    .local v17, expt:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_b

    .line 1111
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v17           #expt:Lcom/android/internal/telephony/CommandException;
    :sswitch_800
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 1113
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_824

    .line 1115
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]Exception processing cb config set request"

    iget-object v6, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/CommandException;

    .line 1117
    .local v28, setRsp:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_b

    .line 1121
    .end local v28           #setRsp:Lcom/android/internal/telephony/CommandException;
    :cond_824
    const-string v4, "SMSDispatcher"

    const-string v5, "********************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] SetCbConfig was processed successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v4, "SMSDispatcher"

    const-string v5, "********************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1133
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_83b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 1135
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_869

    .line 1137
    const-string v4, "SMSDispatcher"

    const-string v5, "General Response Failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/16 v4, 0x11

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    .line 1140
    .local v25, reply:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v5, v0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_b

    .line 1144
    .end local v25           #reply:Landroid/os/Message;
    :cond_869
    const-string v4, "SMSDispatcher"

    const-string/jumbo v5, "reportSmsMemoryStatus set successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 442
    nop

    :sswitch_data_874
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_442
        0x3 -> :sswitch_44f
        0x5 -> :sswitch_45c
        0x6 -> :sswitch_469
        0x7 -> :sswitch_659
        0x8 -> :sswitch_6ae
        0x9 -> :sswitch_668
        0xa -> :sswitch_6f8
        0xb -> :sswitch_73d
        0xc -> :sswitch_775
        0xd -> :sswitch_b
        0xf -> :sswitch_a9
        0x10 -> :sswitch_135
        0x11 -> :sswitch_83b
        0x12 -> :sswitch_47b
        0x13 -> :sswitch_b
        0x14 -> :sswitch_340
        0x15 -> :sswitch_5fa
        0x137 -> :sswitch_35b
        0x138 -> :sswitch_800
        0x139 -> :sswitch_7b1
        0x13a -> :sswitch_34f
    .end sparse-switch
.end method

.method protected handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 5
    .parameter "ss"
    .parameter "tracker"

    .prologue
    .line 1416
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_d

    .line 1418
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 1419
    :try_start_7
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 1425
    :cond_d
    :goto_d
    return-void

    .line 1421
    :cond_e
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_14
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_d

    .line 1423
    :catch_15
    move-exception v0

    goto :goto_d
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 1841
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1a

    .line 1844
    :try_start_9
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1868
    :goto_f
    return-void

    .line 1845
    :catch_10
    move-exception v4

    move-object v2, v4

    .line 1846
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1851
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_1a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1853
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, appName:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040442

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x1040443

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040444

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040445

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1862
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1863
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1865
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1866
    const/16 v4, 0x9

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_f
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .registers 16
    .parameter "ar"

    .prologue
    const-wide/16 v12, 0x7d0

    const/4 v11, 0x3

    const/4 v9, 0x1

    const-string v10, "SMSDispatcher"

    .line 1329
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1330
    .local v6, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1332
    .local v4, sentIntent:Landroid/app/PendingIntent;
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_40

    .line 1334
    const-string v7, "SMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_39

    .line 1340
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsResponse;

    iget v2, v7, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .line 1341
    .local v2, messageRef:I
    iput v2, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1342
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    .end local v2           #messageRef:I
    :cond_39
    if-eqz v4, :cond_3f

    .line 1347
    const/4 v7, -0x1

    :try_start_3c
    invoke-virtual {v4, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_3f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3c .. :try_end_3f} :catch_e5

    .line 1403
    :cond_3f
    :goto_3f
    return-void

    .line 1352
    :cond_40
    const-string v7, "SMSDispatcher"

    const-string v7, "SMS send failed"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 1357
    .local v5, ss:I
    if-eqz v5, :cond_57

    .line 1358
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3f

    .line 1359
    :cond_57
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_7e

    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v7, v9, :cond_7e

    .line 1370
    const-string v7, "SMSDispatcher"

    const-string v7, "SMS retry "

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1372
    invoke-virtual {p0, v11, v6}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1373
    .local v3, retryMsg:Landroid/os/Message;
    invoke-virtual {p0, v3, v12, v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3f

    .line 1374
    .end local v3           #retryMsg:Landroid/os/Message;
    :cond_7e
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ne v7, v9, :cond_a6

    .line 1377
    const-string v7, "SMSDispatcher"

    const-string v7, "NO ACK Intent "

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.SMS_CAUSE_CODES"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1379
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "CauseCodeNum"

    const-string v8, "34"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1383
    :try_start_9b
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_a3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9b .. :try_end_a3} :catch_a4

    goto :goto_3f

    .line 1384
    :catch_a4
    move-exception v7

    goto :goto_3f

    .line 1386
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a6
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_3f

    .line 1389
    :try_start_aa
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_c7

    .line 1391
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1392
    .restart local v3       #retryMsg:Landroid/os/Message;
    const-wide/16 v7, 0x7d0

    invoke-virtual {p0, v3, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3f

    .line 1400
    .end local v3           #retryMsg:Landroid/os/Message;
    :catch_c4
    move-exception v7

    goto/16 :goto_3f

    .line 1394
    :cond_c7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1395
    .local v0, fillIn:Landroid/content/Intent;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_db

    .line 1396
    const-string v8, "errorCode"

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsResponse;

    iget v7, v7, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1398
    :cond_db
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_e3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_aa .. :try_end_e3} :catch_c4

    goto/16 :goto_3f

    .line 1348
    .end local v0           #fillIn:Landroid/content/Intent;
    .end local v5           #ss:I
    :catch_e5
    move-exception v7

    goto/16 :goto_3f
.end method

.method protected abstract handleStatusReport(Landroid/os/AsyncResult;)V
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .registers 27
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    .line 1451
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reference_number ="

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1452
    .local v22, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v4, v0

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1453
    const-string v4, " AND address = ?"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1456
    .local v8, whereArgs:[Ljava/lang/String;
    const/16 v19, 0x0

    check-cast v19, [[B

    .line 1457
    .local v19, pdus:[[B
    const/4 v10, 0x0

    .line 1460
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_2d
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/SMSDispatcher;->duplicatedMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;)Z
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_18e
    .catch Landroid/database/SQLException; {:try_start_2d .. :try_end_30} :catch_180

    move-result v4

    if-eqz v4, :cond_3b

    .line 1461
    const/16 v4, 0x8

    .line 1503
    if-eqz v10, :cond_3a

    :goto_37
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1535
    :cond_3a
    :goto_3a
    return v4

    .line 1464
    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1465
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1466
    .local v11, cursorCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v11, v4, :cond_f5

    .line 1468
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1469
    .local v21, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1470
    const-string/jumbo v4, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v4, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string/jumbo v4, "reference_number"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    const-string v4, "count"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1474
    const-string/jumbo v4, "sequence"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    if-eqz p3, :cond_df

    .line 1476
    const-string v4, "destination_port"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1478
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1479
    const/4 v4, 0x1

    .line 1503
    if-eqz v10, :cond_3a

    goto/16 :goto_37

    .line 1483
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_f5
    const-string/jumbo v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1484
    .local v18, pduColumn:I
    const-string/jumbo v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1486
    .local v20, sequenceColumn:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    .line 1487
    const/4 v15, 0x0

    .local v15, i:I
    :goto_10e
    if-ge v15, v11, :cond_12e

    .line 1488
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1489
    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .line 1490
    .local v12, cursorSequence:I
    const/4 v4, 0x1

    sub-int v4, v12, v4

    move-object v0, v10

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v19, v4

    .line 1487
    add-int/lit8 v15, v15, 0x1

    goto :goto_10e

    .line 1494
    .end local v12           #cursorSequence:I
    :cond_12e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    aput-object v5, v19, v4

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14c
    .catchall {:try_start_3b .. :try_end_14c} :catchall_18e
    .catch Landroid/database/SQLException; {:try_start_3b .. :try_end_14c} :catch_180

    .line 1503
    if-eqz v10, :cond_151

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1516
    :cond_151
    if-eqz p3, :cond_1b4

    .line 1517
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    const/16 v5, 0xb84

    if-ne v4, v5, :cond_1a4

    .line 1519
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1520
    .local v17, output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_162
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    if-ge v15, v4, :cond_195

    .line 1521
    aget-object v4, v19, v15

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 1522
    .local v16, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v13

    .line 1523
    .local v13, data:[B
    const/4 v4, 0x0

    array-length v5, v13

    move-object/from16 v0, v17

    move-object v1, v13

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1520
    add-int/lit8 v15, v15, 0x1

    goto :goto_162

    .line 1498
    .end local v11           #cursorCount:I
    .end local v13           #data:[B
    .end local v15           #i:I
    .end local v16           #msg:Landroid/telephony/SmsMessage;
    .end local v17           #output:Ljava/io/ByteArrayOutputStream;
    .end local v18           #pduColumn:I
    .end local v20           #sequenceColumn:I
    :catch_180
    move-exception v4

    move-object v14, v4

    .line 1499
    .local v14, e:Landroid/database/SQLException;
    :try_start_182
    const-string v4, "SMSDispatcher"

    const-string v5, "Can\'t access multipart SMS database"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_189
    .catchall {:try_start_182 .. :try_end_189} :catchall_18e

    .line 1501
    const/4 v4, 0x2

    .line 1503
    if-eqz v10, :cond_3a

    goto/16 :goto_37

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_18e
    move-exception v4

    if-eqz v10, :cond_194

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_194
    throw v4

    .line 1526
    .restart local v11       #cursorCount:I
    .restart local v15       #i:I
    .restart local v17       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #pduColumn:I
    .restart local v20       #sequenceColumn:I
    :cond_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_3a

    .line 1529
    .end local v17           #output:Ljava/io/ByteArrayOutputStream;
    :cond_1a4
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1535
    :goto_1b1
    const/4 v4, -0x1

    goto/16 :goto_3a

    .line 1533
    :cond_1b4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_1b1
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
.end method

.method protected abstract sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
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
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 11
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1753
    if-nez p2, :cond_9

    .line 1754
    if-eqz p3, :cond_8

    .line 1756
    const/4 v4, 0x3

    :try_start_5
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_8
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_8} :catch_49

    .line 1780
    :cond_8
    :goto_8
    return-void

    .line 1762
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1763
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    const-string/jumbo v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1768
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1770
    .local v2, ss:I
    if-eqz v2, :cond_2f

    .line 1771
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_8

    .line 1773
    :cond_2f
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1775
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_8

    .line 1777
    :cond_40
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 1757
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_49
    move-exception v4

    goto :goto_8
.end method

.method protected sendRawPduForMobileTracker([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 11
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1804
    if-nez p2, :cond_9

    .line 1805
    if-eqz p3, :cond_8

    .line 1807
    const/4 v4, 0x3

    :try_start_5
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_8
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_8} :catch_49

    .line 1831
    :cond_8
    :goto_8
    return-void

    .line 1813
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1814
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    const-string/jumbo v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1819
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1821
    .local v2, ss:I
    if-eqz v2, :cond_2f

    .line 1822
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_8

    .line 1824
    :cond_2f
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1825
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1826
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_8

    .line 1828
    :cond_40
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 1808
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_49
    move-exception v4

    goto :goto_8
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
.end method

.method public setCSCCbConfig(Z)Z
    .registers 7
    .parameter "cbEnable"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SMSDispatcher"

    .line 2372
    const-string v2, "SMSDispatcher"

    const-string v2, "[CB] CSC UPDATE for CB CONFIG "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 2375
    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 2376
    const/16 v2, 0x31

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 2377
    const/16 v2, 0x32

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 2378
    iput v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 2379
    new-array v2, v3, [S

    iput-object v2, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 2380
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 2382
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "msgIdCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "msgIdMaxCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bCBEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/16 v2, 0x138

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2389
    .local v1, reply:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    .line 2391
    const/4 v2, 0x1

    return v2
.end method

.method public setCbConfig(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .registers 12
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "languageId"

    .prologue
    const-string v5, "SMSDispatcher"

    .line 2411
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 2420
    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 2421
    iput-char p2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 2422
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 2423
    array-length v3, p4

    iput v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 2424
    iput-object p4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 2425
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 2426
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/SMSDispatcher;->setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V

    .line 2428
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SmsDispatcher-setCbConfig] bCBEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectedId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdMaxCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v1, v3, :cond_80

    .line 2436
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msgIDs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 2439
    :cond_80
    const/16 v3, 0x138

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2441
    .local v2, reply:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    .line 2443
    return-void
.end method

.method protected abstract setCellBroadcastConfig([ILandroid/os/Message;)V
.end method
