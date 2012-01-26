.class public final Lcom/android/internal/telephony/test/SimulatedCommands;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SimulatedCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field private static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field private static final INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState; = null

.field private static final INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SIM"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field mHandlerThread:Landroid/os/HandlerThread;

.field mNetworkType:I

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field mSsnNotifyOn:Z

.field nextCallFailCause:I

.field pausedResponseCount:I

.field pausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 62
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    .line 86
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    .line 93
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SimulatedCommands"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 97
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    .line 99
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 100
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_56

    move v1, v4

    :goto_3e
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 102
    const-string v1, "1234"

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_58

    move v1, v4

    :goto_4f
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 105
    const-string v1, "5678"

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 106
    return-void

    :cond_56
    move v1, v3

    .line 101
    goto :goto_3e

    :cond_58
    move v1, v3

    .line 104
    goto :goto_4f
.end method

.method private isSimLocked()Z
    .registers 3

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v0, v1, :cond_8

    .line 1134
    const/4 v0, 0x1

    .line 1136
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "result"
    .parameter "tr"

    .prologue
    .line 1477
    if-eqz p1, :cond_11

    .line 1478
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1479
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_12

    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    :cond_11
    :goto_11
    return-void

    .line 1482
    :cond_12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 4
    .parameter "result"
    .parameter "ret"

    .prologue
    .line 1466
    if-eqz p1, :cond_11

    .line 1467
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1468
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_12

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    :cond_11
    :goto_11
    return-void

    .line 1471
    :cond_12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11
.end method

.method private unimplemented(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1453
    if-eqz p1, :cond_18

    .line 1454
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1457
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_19

    .line 1458
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    :cond_18
    :goto_18
    return-void

    .line 1460
    :cond_19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18
.end method


# virtual methods
.method public ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "type"
    .parameter "id"
    .parameter "alertType"
    .parameter "AlertFormat"
    .parameter "AlertSrc"
    .parameter "AlertCorrel"
    .parameter "AlertMark"
    .parameter "AlertData"
    .parameter "response"

    .prologue
    .line 1658
    invoke-direct {p0, p9}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1659
    return-void
.end method

.method public ModemHangup(I)V
    .registers 3
    .parameter "cid"

    .prologue
    const/4 v0, 0x0

    .line 824
    invoke-direct {p0, v0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 825
    return-void
.end method

.method public OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "type"
    .parameter "id"
    .parameter "Data"
    .parameter "Len"
    .parameter "response"

    .prologue
    .line 1663
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1664
    return-void
.end method

.method public ServerStartSession(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "type"
    .parameter "session_id"
    .parameter "ID"
    .parameter "response"

    .prologue
    .line 1653
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1654
    return-void
.end method

.method public SetupSession(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "CB1_ID"
    .parameter "CB2_ID"
    .parameter "CB3_ID"
    .parameter "ENC"
    .parameter "VER"
    .parameter "max_msg_size"
    .parameter "Max_obj_size"
    .parameter "Cookie"
    .parameter "Disp_Name"
    .parameter "response"

    .prologue
    .line 1648
    invoke-direct {p0, p10}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1649
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 780
    .local v0, success:Z
    if-nez v0, :cond_13

    .line 781
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 785
    :goto_12
    return-void

    .line 783
    :cond_13
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 460
    invoke-direct {p0, p8}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 461
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1166
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1167
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1162
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1163
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1325
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 324
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 325
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 330
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 331
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 281
    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 282
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 283
    if-eqz p3, :cond_15

    .line 284
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 285
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 299
    :cond_15
    :goto_15
    return-void

    .line 291
    :cond_16
    if-eqz p3, :cond_15

    .line 292
    const-string v1, "SIM"

    const-string v2, "[SimCmd] changeIccPin: pin failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 296
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 297
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 302
    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 303
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 304
    if-eqz p3, :cond_15

    .line 305
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 306
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 320
    :cond_15
    :goto_15
    return-void

    .line 312
    :cond_16
    if-eqz p3, :cond_15

    .line 313
    const-string v1, "SIM"

    const-string v2, "[SimCmd] changeIccPin2: pin2 failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 317
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 318
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public conference(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 711
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 712
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 716
    :goto_15
    return-void

    .line 714
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1083
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1088
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 729
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1044
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete RUIM message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1046
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1039
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1041
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 6
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 575
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 555
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 744
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 745
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 749
    :goto_15
    return-void

    .line 747
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1592
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1593
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1284
    const-string v0, "SimulatedCommands"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1285
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1496
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1498
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1204
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1617
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1584
    return-void
.end method

.method public getCdmaDataProfile(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1632
    return-void
.end method

.method public getCdmaSystemProperties(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "sysPorpertyID"
    .parameter "response"

    .prologue
    .line 1640
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_10

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 494
    :goto_f
    return-void

    .line 490
    :cond_10
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 511
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 512
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1490
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1492
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 964
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 966
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 967
    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 968
    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 969
    const/4 v1, 0x3

    const-string v2, "2"

    aput-object v2, v0, v1

    .line 971
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 972
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1606
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1607
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 597
    const-string v0, "012345678901234"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 608
    const-string v0, "99"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 609
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 586
    const-string v0, "012345678901234"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 587
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 112
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 814
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 816
    .local v0, ret:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    aput v2, v0, v1

    .line 817
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 818
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 836
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 831
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x7

    .line 1103
    new-array v1, v4, [I

    .line 1105
    .local v1, ret:[I
    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 1106
    const/4 v0, 0x1

    .local v0, i:I
    :goto_8
    if-ge v0, v4, :cond_f

    .line 1107
    aput v0, v1, v0

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1109
    :cond_f
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1110
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1270
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1272
    .local v0, ret:[I
    aput v2, v0, v2

    .line 1273
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1274
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 981
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 983
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "El Telco Loco"

    aput-object v2, v0, v1

    .line 984
    const/4 v1, 0x1

    const-string v2, "Telco Loco"

    aput-object v2, v0, v1

    .line 985
    const/4 v1, 0x2

    const-string v2, "001001"

    aput-object v2, v0, v1

    .line 987
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 988
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getDataCallList(Landroid/os/Message;)V

    .line 501
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 455
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 456
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .registers 3
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 451
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 452
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1096
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1098
    .local v0, ret:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    aput v2, v0, v1

    .line 1099
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1100
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 1522
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1524
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .registers 7
    .parameter "result"

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 925
    new-array v0, v4, [Ljava/lang/String;

    .line 927
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 928
    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 929
    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 930
    const/4 v1, 0x3

    aput-object v3, v0, v1

    .line 931
    const/4 v1, 0x4

    aput-object v3, v0, v1

    .line 932
    const/4 v1, 0x5

    aput-object v3, v0, v1

    .line 933
    const/4 v1, 0x6

    aput-object v3, v0, v1

    .line 934
    const/4 v1, 0x7

    aput-object v3, v0, v1

    .line 935
    const/16 v1, 0x8

    aput-object v3, v0, v1

    .line 936
    const/16 v1, 0x9

    aput-object v3, v0, v1

    .line 937
    const/16 v1, 0xa

    aput-object v3, v0, v1

    .line 938
    const/16 v1, 0xb

    aput-object v3, v0, v1

    .line 939
    const/16 v1, 0xc

    aput-object v3, v0, v1

    .line 940
    const/16 v1, 0xd

    aput-object v3, v0, v1

    .line 941
    aput-object v3, v0, v4

    .line 943
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 944
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .registers 4
    .parameter "num_lock_type"
    .parameter "lock_type"
    .parameter "result"

    .prologue
    .line 472
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 473
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 850
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 852
    .local v0, ret:[I
    const/16 v1, 0x17

    aput v1, v0, v2

    .line 853
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 855
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 856
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1118
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1055
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 468
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 4
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 906
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 8
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    const-string v4, "GSM"

    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x31

    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 627
    .local v0, success:Z
    if-nez v0, :cond_21

    .line 628
    const-string v1, "GSM"

    const-string v1, "[SimCmd] hangupConnection: resultFail"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 634
    :goto_20
    return-void

    .line 631
    :cond_21
    const-string v1, "GSM"

    const-string v1, "[SimCmd] hangupConnection: resultSuccess"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 670
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 671
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 675
    :goto_15
    return-void

    .line 673
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 649
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 654
    :goto_15
    return-void

    .line 652
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1176
    invoke-direct {p0, p9}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1177
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 4
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1334
    if-eqz p2, :cond_b

    .line 1335
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1336
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1338
    :cond_b
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1342
    if-eqz p2, :cond_b

    .line 1343
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1344
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1346
    :cond_b
    return-void
.end method

.method public pauseResponses()V
    .registers 2

    .prologue
    .line 1433
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    .line 1434
    return-void
.end method

.method public progressConnectingCallState()V
    .registers 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1362
    return-void
.end method

.method public progressConnectingToActive()V
    .registers 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1369
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x4

    .line 876
    new-array v0, v2, [I

    .line 878
    .local v0, ret:[I
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 879
    const/4 v1, 0x1

    aput v3, v0, v1

    .line 880
    aput v4, v0, v3

    .line 881
    aput v2, v0, v4

    .line 883
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 884
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "result"

    .prologue
    .line 1254
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1223
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1224
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1507
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1509
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 11
    .parameter "facility"
    .parameter "pin"
    .parameter "serviceClass"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "SIM"

    .line 355
    if-eqz p1, :cond_45

    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 357
    if-eqz p4, :cond_3f

    .line 358
    new-array v0, v2, [I

    .line 359
    .local v0, r:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    if-eqz v1, :cond_40

    move v1, v2

    :goto_18
    aput v1, v0, v3

    .line 360
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] queryFacilityLock: SIM is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    if-nez v2, :cond_42

    const-string/jumbo v2, "unlocked"

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 363
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 380
    .end local v0           #r:[I
    :cond_3f
    :goto_3f
    return-void

    .restart local v0       #r:[I
    :cond_40
    move v1, v3

    .line 359
    goto :goto_18

    .line 360
    :cond_42
    const-string v2, "locked"

    goto :goto_2e

    .line 366
    .end local v0           #r:[I
    :cond_45
    if-eqz p1, :cond_84

    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 368
    if-eqz p4, :cond_3f

    .line 369
    new-array v0, v2, [I

    .line 370
    .restart local v0       #r:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    if-eqz v1, :cond_7f

    move v1, v2

    :goto_58
    aput v1, v0, v3

    .line 371
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] queryFacilityLock: FDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    if-nez v2, :cond_81

    const-string v2, "disabled"

    :goto_6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 374
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    :cond_7f
    move v1, v3

    .line 370
    goto :goto_58

    .line 371
    :cond_81
    const-string v2, "enabled"

    goto :goto_6d

    .line 379
    .end local v0           #r:[I
    :cond_84
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    goto :goto_3f
.end method

.method public queryLineId(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1622
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1623
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1557
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1559
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1049
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read SIM message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1051
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 798
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 799
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 803
    :goto_15
    return-void

    .line 801
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .parameter "available"
    .parameter "result"

    .prologue
    .line 1125
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1126
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1130
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1330
    return-void
.end method

.method public resumeResponses()V
    .registers 5

    .prologue
    .line 1438
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    .line 1440
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-nez v2, :cond_27

    .line 1441
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_11
    if-ge v0, v1, :cond_21

    .line 1442
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1444
    :cond_21
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1448
    .end local v0           #i:I
    .end local v1           #s:I
    :goto_26
    return-void

    .line 1446
    :cond_27
    const-string v2, "GSM"

    const-string v3, "SimulatedCommands.resumeResponses < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 6
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1023
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1024
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 1565
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1567
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 5
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1573
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .parameter "c"
    .parameter "result"

    .prologue
    .line 996
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 997
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .registers 5
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 1318
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1319
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 898
    return-void
.end method

.method public sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1035
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1032
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 890
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 891
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "ussdString"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const-string v2, "0"

    .line 1304
    const-string v0, "#646#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1305
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1308
    const-string v0, "0"

    const-string v0, "You have NNN minutes remaining."

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :goto_15
    return-void

    .line 1310
    :cond_16
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1312
    const-string v0, "0"

    const-string v0, "All Done"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 7
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 759
    add-int/lit8 v2, p1, 0x30

    int-to-char v0, v2

    .line 760
    .local v0, ch:C
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v3, 0x32

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v1

    .line 762
    .local v1, success:Z
    if-nez v1, :cond_18

    .line 763
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 767
    :goto_17
    return-void

    .line 765
    :cond_18
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public setAutoProgressConnectingCall(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 1377
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 4
    .parameter "bandMode"
    .parameter "result"

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 866
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1212
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "result"

    .prologue
    .line 1243
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1234
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1235
    return-void
.end method

.method public setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V
    .registers 3
    .parameter "cb"
    .parameter "result"

    .prologue
    .line 1611
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1612
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1577
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1579
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .registers 3
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1587
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1589
    return-void
.end method

.method public setCdmaDataProfile(ILandroid/os/Message;)V
    .registers 3
    .parameter "dataConnection"
    .parameter "response"

    .prologue
    .line 1636
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 5
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1512
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1514
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .registers 5
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1502
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1504
    return-void
.end method

.method public setCdmaSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "sysPorpertyID"
    .parameter "sysPropertyValue"
    .parameter "response"

    .prologue
    .line 1644
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 10
    .parameter "facility"
    .parameter "lockEnabled"
    .parameter "pin"
    .parameter "serviceClass"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const-string v3, "SIM"

    .line 391
    if-eqz p1, :cond_40

    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 393
    if-eqz p3, :cond_29

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 394
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin is valid"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 397
    if-eqz p5, :cond_28

    .line 398
    invoke-static {p5, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 399
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 442
    :cond_28
    :goto_28
    return-void

    .line 405
    :cond_29
    if-eqz p5, :cond_28

    .line 406
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 410
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p5, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 411
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 415
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_40
    if-eqz p1, :cond_7d

    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 417
    if-eqz p3, :cond_66

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 418
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin2 is valid"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 421
    if-eqz p5, :cond_28

    .line 422
    invoke-static {p5, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 423
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 429
    :cond_66
    if-eqz p5, :cond_28

    .line 430
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin2 failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 434
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p5, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 435
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 441
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_7d
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    goto :goto_28
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1597
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1598
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "config"
    .parameter "response"

    .prologue
    .line 1602
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1603
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .registers 3
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1626
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1627
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1113
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1114
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .registers 3
    .parameter "on"
    .parameter "result"

    .prologue
    .line 1157
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioPower(ZLandroid/os/Message;)V

    .line 1158
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enableMute"
    .parameter "result"

    .prologue
    .line 838
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "operatorNumeric"
    .parameter "result"

    .prologue
    .line 1259
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNextCallFailCause(I)V
    .registers 2
    .parameter "gsmCause"

    .prologue
    .line 1386
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    .line 1387
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 1382
    return-void
.end method

.method public setPhoneType(I)V
    .registers 4
    .parameter "phoneType"

    .prologue
    .line 1518
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 4
    .parameter "networkType"
    .parameter "result"

    .prologue
    .line 1091
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1093
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1527
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1529
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 6
    .parameter "on"
    .parameter "result"

    .prologue
    .line 1140
    if-eqz p1, :cond_2e

    .line 1141
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1142
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] setRadioPower: SIM locked! state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1152
    :goto_27
    return-void

    .line 1147
    :cond_28
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_27

    .line 1150
    :cond_2e
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_27
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 913
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 914
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1121
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1122
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 337
    if-eqz p1, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    if-eqz v0, :cond_11

    .line 338
    const-string v0, "SIM"

    const-string v1, "Supp Service Notifications already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_11
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 342
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 5
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 1542
    const-string v0, "SIM"

    const-string v1, "Not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1544
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 1080
    invoke-direct {p0, p8}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1081
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 1074
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1075
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 1411
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1412
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1413
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_10

    .line 1414
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1416
    :cond_10
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 4
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1005
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1006
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1014
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1015
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "pin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_31

    .line 116
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 120
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 121
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 154
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 125
    :cond_31
    if-eqz p1, :cond_57

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 126
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 129
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 131
    if-eqz p2, :cond_30

    .line 132
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 133
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 139
    :cond_57
    if-eqz p2, :cond_30

    .line 140
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 142
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_89

    .line 145
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 149
    :cond_89
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 151
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 152
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "pin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_31

    .line 200
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin2: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 204
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 205
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 237
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 209
    :cond_31
    if-eqz p1, :cond_52

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 210
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin2: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 212
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 214
    if-eqz p2, :cond_30

    .line 215
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 216
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 222
    :cond_52
    if-eqz p2, :cond_30

    .line 223
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 225
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin2: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_84

    .line 228
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 232
    :cond_84
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 234
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 235
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_31

    .line 158
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 162
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 163
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 196
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 167
    :cond_31
    if-eqz p1, :cond_57

    const-string v1, "12345678"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 168
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 170
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 171
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 173
    if-eqz p3, :cond_30

    .line 174
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 175
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 181
    :cond_57
    if-eqz p3, :cond_30

    .line 182
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 184
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_8a

    .line 187
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 191
    :cond_8a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 193
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 194
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_31

    .line 241
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk2: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 245
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 246
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 278
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 250
    :cond_31
    if-eqz p1, :cond_52

    const-string v1, "87654321"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 251
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk2: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 253
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 255
    if-eqz p3, :cond_30

    .line 256
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 257
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 263
    :cond_52
    if-eqz p3, :cond_30

    .line 264
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 266
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk2: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_85

    .line 269
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 273
    :cond_85
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 275
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 276
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 445
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 446
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 691
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 692
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 696
    :goto_15
    return-void

    .line 694
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public triggerHangupAll()V
    .registers 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1424
    return-void
.end method

.method public triggerHangupBackground()V
    .registers 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    .line 1399
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1400
    return-void
.end method

.method public triggerHangupForeground()V
    .registers 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    .line 1392
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1393
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 1429
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "statusCode"
    .parameter "message"

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_12

    .line 1295
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1296
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1298
    .end local v0           #result:[Ljava/lang/String;
    :cond_12
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .registers 3
    .parameter "number"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    .line 1355
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1356
    return-void
.end method

.method public triggerSsn(II)V
    .registers 7
    .parameter "type"
    .parameter "code"

    .prologue
    const/4 v3, 0x0

    .line 1403
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1404
    .local v0, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1405
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1406
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1407
    return-void
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1064
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to SIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1066
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1069
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to RUIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1071
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1059
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to SIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1061
    return-void
.end method
