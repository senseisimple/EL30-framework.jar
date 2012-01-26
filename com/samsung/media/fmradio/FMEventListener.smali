.class public Lcom/samsung/media/fmradio/FMEventListener;
.super Ljava/lang/Object;
.source "FMEventListener.java"


# static fields
.field private static final EVENT_AF_RECEIVED:I = 0xe

.field private static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field private static final EVENT_RDS_EVENT:I = 0xa

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7


# instance fields
.field callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/samsung/media/fmradio/FMEventListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/FMEventListener$1;-><init>(Lcom/samsung/media/fmradio/FMEventListener;)V

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .line 160
    new-instance v0, Lcom/samsung/media/fmradio/FMEventListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/FMEventListener$2;-><init>(Lcom/samsung/media/fmradio/FMEventListener;)V

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public earPhoneDisconnected()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public onAFReceived(J)V
    .registers 3
    .parameter "freq"

    .prologue
    .line 80
    return-void
.end method

.method public onAFStarted()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public onChannelFound(J)V
    .registers 3
    .parameter "frequency"

    .prologue
    .line 26
    return-void
.end method

.method public onOff(I)V
    .registers 2
    .parameter "reasonCode"

    .prologue
    .line 46
    return-void
.end method

.method public onOn()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public onRDSDisabled()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method

.method public onRDSEnabled()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    .line 64
    return-void
.end method

.method public onScanFinished([J)V
    .registers 2
    .parameter "frequency"

    .prologue
    .line 38
    return-void
.end method

.method public onScanStarted()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public onScanStopped([J)V
    .registers 2
    .parameter "frequency"

    .prologue
    .line 34
    return-void
.end method

.method public onTune(J)V
    .registers 3
    .parameter "frequency"

    .prologue
    .line 50
    return-void
.end method
