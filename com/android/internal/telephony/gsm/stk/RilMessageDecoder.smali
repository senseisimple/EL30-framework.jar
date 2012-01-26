.class Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
.super Landroid/os/HandlerStateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;,
        Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;,
        Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final START:I = 0x1

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;


# instance fields
.field private mCaller:Landroid/os/Handler;

.field private mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    .registers 5
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 93
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Landroid/os/HandlerStateMachine;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->setDbg(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->setInitialState(Landroid/os/HandlerState;)V

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 98
    invoke-static {p0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    .line 99
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder$StateStart;

    return-object v0
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)Z
    .registers 7
    .parameter "rilMsg"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    .line 133
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v3, :pswitch_data_44

    .line 164
    const/4 v0, 0x0

    .line 167
    .local v0, decodingStarted:Z
    :goto_8
    return v0

    .line 136
    .end local v0           #decodingStarted:Z
    :pswitch_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 138
    const/4 v0, 0x0

    .line 139
    .restart local v0       #decodingStarted:Z
    goto :goto_8

    .line 143
    .end local v0           #decodingStarted:Z
    :pswitch_16
    const/4 v2, 0x0

    .line 145
    .local v2, rawData:[B
    :try_start_17
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_2a

    move-result-object v2

    .line 154
    :try_start_1f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->decode([B)Lcom/android/internal/telephony/gsm/stk/BerTlv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->make(Lcom/android/internal/telephony/gsm/stk/BerTlv;)V
    :try_end_28
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_1f .. :try_end_28} :catch_33

    .line 155
    const/4 v0, 0x1

    .restart local v0       #decodingStarted:Z
    goto :goto_8

    .line 146
    .end local v0           #decodingStarted:Z
    :catch_2a
    move-exception v3

    move-object v1, v3

    .line 148
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    .restart local v0       #decodingStarted:Z
    goto :goto_8

    .line 156
    .end local v0           #decodingStarted:Z
    .end local v1           #e:Ljava/lang/Exception;
    :catch_33
    move-exception v3

    move-object v1, v3

    .line 158
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;->result()Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 159
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 160
    const/4 v0, 0x0

    .line 162
    .restart local v0       #decodingStarted:Z
    goto :goto_8

    .line 133
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_9
        :pswitch_16
        :pswitch_16
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
    .registers 4
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 55
    const-class v0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    if-nez v1, :cond_e

    .line 56
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V

    sput-object v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 58
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .registers 6
    .parameter "rilMsg"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    const/16 v2, 0xa

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void
.end method


# virtual methods
.method public sendMessageParamsDecoded(Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 5
    .parameter "resCode"
    .parameter "cmdParams"

    .prologue
    .line 80
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 82
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 84
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .registers 4
    .parameter "rilMsg"

    .prologue
    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 71
    return-void
.end method
